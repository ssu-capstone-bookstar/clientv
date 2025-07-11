import 'dart:io';

import 'package:book/common/models/image_request.dart';
import 'package:book/modules/image/model/presigned_url_request.dart';
import 'package:book/modules/image/repository/image_repository.dart';
import 'package:book/modules/image/repository/s3_repository.dart';
import 'package:book/modules/reading_diary/model/diary_request.dart';
import 'package:book/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_diary_view_model.g.dart';

@riverpod
class CreateDiaryViewModel extends _$CreateDiaryViewModel {
  @override
  bool build() {
    // 초기 로딩 상태는 false
    return false;
  }

  Future<bool> submitDiary({
    required int progressId,
    required List<XFile> images,
    required String content,
  }) async {
    state = true; // 로딩 시작

    try {
      final imageRepo = ref.read(imageRepositoryProvider);
      final s3Repo = ref.read(s3RepositoryProvider);
      final diaryRepo = ref.read(readingDiaryRepositoryProvider);

      final imageRequests =
          await Future.wait(images.asMap().entries.map((entry) async {
        final index = entry.key;
        final xFile = entry.value;
        final file = File(xFile.path);
        final fileName = file.uri.pathSegments.last;

        final presignedUrlResponse = await imageRepo.getPresignedUrl(
          'DIARY_IMAGE',
          PresignedUrlRequest(fileName: fileName),
        );
        debugPrint('##### Presigned URL Response: ${presignedUrlResponse.data}');
        final presignedData = presignedUrlResponse.data;

        await s3Repo.uploadFileToS3(
          presignedUrl: presignedData.presignedUrl,
          file: file,
        );

        return ImageRequest(
          image: presignedData.imageUrl,
          sequence: index + 1,
        );
      }));

      final diaryRequest = DiaryRequest(
        progressId: progressId,
        content: content,
        images: imageRequests,
      );
      await diaryRepo.createDiary(diaryRequest);

      state = false; // 로딩 종료
      return true; // 성공
    } catch (e) {
      debugPrint('Error in submitDiary: $e');
      state = false; // 로딩 종료
      return false; // 실패
    }
  }
} 