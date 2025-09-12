import 'dart:io';

import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/modules/image/model/presigned_url_request.dart';
import 'package:bookstar/modules/image/repository/image_repository.dart';
import 'package:bookstar/modules/image/repository/s3_repository.dart';
import 'package:bookstar/modules/reading_diary/model/diary_request.dart';
import 'package:bookstar/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';

part 'create_diary_view_model.g.dart';

@riverpod
class CreateDiaryViewModel extends _$CreateDiaryViewModel {
  @override
  bool build() {
    // 초기 로딩 상태는 false
    return false;
  }

  Future<bool> submitDiary({
    required int bookId,
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
        debugPrint(
            '##### Presigned URL Response: ${presignedUrlResponse.data}');
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
        bookId: bookId,
        content: content,
        images: imageRequests,
      );
      await diaryRepo.createDiary(diaryRequest);

      // 현재 로그인한 유저의 memberId로 invalidate
      final authState = ref.read(authViewModelProvider);
      final int? memberId = authState.when(
        data: (data) => (data is AuthSuccess) ? data.memberId : null,
        loading: () => null,
        error: (e, st) => null,
      );
      if (memberId != null) {
        ref.invalidate(bookLogDiariesProvider(memberId));
      }

      state = false; // 로딩 종료
      return true; // 성공
    } catch (e) {
      debugPrint('Error in submitDiary: $e');
      state = false; // 로딩 종료
      return false; // 실패
    }
  }
}
