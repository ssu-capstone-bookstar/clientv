import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mime/mime.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 's3_repository.g.dart';

@riverpod
S3Repository s3Repository(Ref ref) {
  return S3Repository();
}

class S3Repository {
  final Dio _dio;

  S3Repository() : _dio = Dio();

  Future<void> uploadFileToS3({
    required String presignedUrl,
    required File file,
  }) async {
    try {
      final mimeType = lookupMimeType(file.path) ?? 'application/octet-stream';
      final contentLength = await file.length();

      await _dio.put<dynamic>(
        presignedUrl,
        data: file.openRead(),
        options: Options(
          headers: {
            Headers.contentTypeHeader: mimeType,
            Headers.contentLengthHeader: contentLength,
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
