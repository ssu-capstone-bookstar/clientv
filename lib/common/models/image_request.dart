import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_request.freezed.dart';
part 'image_request.g.dart';

@freezed
abstract class ImageRequest with _$ImageRequest {
  const factory ImageRequest({
    @Default("") String imageUrl,
    @Default(0) int sequence,
  }) = _ImageRequest;

  factory ImageRequest.fromJson(Map<String, dynamic> json) =>
      _$ImageRequestFromJson(json);
}
