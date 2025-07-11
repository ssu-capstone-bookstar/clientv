import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_presigned_url.freezed.dart';
part 's3_presigned_url.g.dart';

@freezed
abstract class S3PresignedUrl with _$S3PresignedUrl {
  const factory S3PresignedUrl({
    required String presignedUrl,
    @JsonKey(name: 'filePathInDB') required String imageUrl,
  }) = _S3PresignedUrl;

  factory S3PresignedUrl.fromJson(Map<String, dynamic> json) =>
      _$S3PresignedUrlFromJson(json);
}
