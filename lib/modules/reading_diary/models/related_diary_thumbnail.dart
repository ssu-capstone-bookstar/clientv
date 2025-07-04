import 'package:book/modules/reading_diary/models/thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_diary_thumbnail.freezed.dart';
part 'related_diary_thumbnail.g.dart';

@freezed
abstract class RelatedDiaryThumbnail with _$RelatedDiaryThumbnail {
  const factory RelatedDiaryThumbnail({
    required int diaryId,
    required Thumbnail firstImage,
    required double? score,
  }) = _RelatedDiaryThumbnail;

  factory RelatedDiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$RelatedDiaryThumbnailFromJson(json);
}
