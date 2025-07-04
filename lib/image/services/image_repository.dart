import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/response_form.dart';
import 'package:book/image/models/presigned_url_request.dart';
import 'package:book/image/models/s3_presigned_url.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_repository.g.dart';

@riverpod
ImageRepository imageRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ImageRepository(dio, baseUrl: dio.options.baseUrl);
}

@RestApi()
abstract class ImageRepository {
  factory ImageRepository(Dio dio, {String baseUrl}) = _ImageRepository;

  @POST('/api/v2/images/presigned-url/{imageCategory}')
  Future<ResponseForm<S3PresignedUrl>> getPresignedUrl(
    @Path('imageCategory') String imageCategory,
    @Body() PresignedUrlRequest request,
  );
}
