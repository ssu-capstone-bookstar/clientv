import 'package:book/modules/reading_diary/model/thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_diary_thumbnail.freezed.dart';
part 'my_diary_thumbnail.g.dart';

@freezed
abstract class MyDiaryThumbnail with _$MyDiaryThumbnail {
  const factory MyDiaryThumbnail({
    required int diaryId,
    required Thumbnail firstImage,
    required double? score,
  }) = _MyDiaryThumbnail;

  factory MyDiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$MyDiaryThumbnailFromJson(json);
}
