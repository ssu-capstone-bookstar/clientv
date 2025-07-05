import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_url_request.freezed.dart';
part 'presigned_url_request.g.dart';

@freezed
abstract class PresignedUrlRequest with _$PresignedUrlRequest {
  const factory PresignedUrlRequest({
    required String fileName,
  }) = _PresignedUrlRequest;

  factory PresignedUrlRequest.fromJson(Map<String, dynamic> json) =>
      _$PresignedUrlRequestFromJson(json);
}
