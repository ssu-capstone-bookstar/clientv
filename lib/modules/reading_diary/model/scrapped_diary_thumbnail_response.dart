import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrapped_diary_thumbnail_response.freezed.dart';
part 'scrapped_diary_thumbnail_response.g.dart';

@freezed
abstract class ScrappedDiaryThumbnailResponse
    with _$ScrappedDiaryThumbnailResponse {
  const factory ScrappedDiaryThumbnailResponse({
    @Default(0) int scrapId,
    @Default(0) int diaryId,
    @Default(null) ScrappedDiaryFirstImage? firstImage,
  }) = _ScrappedDiaryThumbnailResponse;

  factory ScrappedDiaryThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$ScrappedDiaryThumbnailResponseFromJson(json);
}

@freezed
abstract class ScrappedDiaryFirstImage with _$ScrappedDiaryFirstImage {
  const factory ScrappedDiaryFirstImage({
    @Default('') String imageUrl,
  }) = _ScrappedDiaryFirstImage;

  factory ScrappedDiaryFirstImage.fromJson(Map<String, dynamic> json) =>
      _$ScrappedDiaryFirstImageFromJson(json);
}
