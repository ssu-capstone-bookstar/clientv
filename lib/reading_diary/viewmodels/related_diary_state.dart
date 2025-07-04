import 'package:book/reading_diary/models/related_diary_thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_diary_state.freezed.dart';

@freezed
abstract class RelatedDiaryState with _$RelatedDiaryState {
  const factory RelatedDiaryState({
    @Default([]) List<RelatedDiaryThumbnail> diaries,
    int? nextCursor,
    Object? nextSubCursor,
    @Default(true) bool hasNext,
  }) = _RelatedDiaryState;
}
