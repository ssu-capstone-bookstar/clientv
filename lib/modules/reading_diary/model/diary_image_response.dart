import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_image_response.freezed.dart';
part 'diary_image_response.g.dart';

@freezed
abstract class DiaryImageResponse with _$DiaryImageResponse {
  const factory DiaryImageResponse({
    @Default(-1) int diaryId,
    @Default(-1) int imageId,
    @Default('') String imageUrl,
    @Default(0) int sequence,
  }) = _DiaryImageResponse;

  factory DiaryImageResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryImageResponseFromJson(json);
}
