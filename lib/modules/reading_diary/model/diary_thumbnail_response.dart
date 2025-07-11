import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_thumbnail_response.freezed.dart';
part 'diary_thumbnail_response.g.dart';

@freezed
abstract class DiaryThumbnail with _$DiaryThumbnail {
  const factory DiaryThumbnail({
    required int diaryId,
    required Thumbnail firstImage,
  }) = _DiaryThumbnail;

  factory DiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$DiaryThumbnailFromJson(json);
}

@freezed
abstract class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    @Default('') String imageUrl,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}
