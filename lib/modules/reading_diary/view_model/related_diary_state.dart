import 'package:bookstar/modules/reading_diary/model/diary_response.dart';
import 'package:bookstar/modules/reading_diary/model/related_diary_sort.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/related_diary_thumbnail.dart';

part 'related_diary_state.freezed.dart';

@freezed
abstract class RelatedDiaryState with _$RelatedDiaryState {
  const factory RelatedDiaryState({
    @Default([]) List<RelatedDiaryThumbnail> thumbnails,
    @Default([]) List<DiaryResponse> feeds,
    @Default(-1) int nextCursor,
    Object? nextSubCursor,
    @Default(false) bool hasNext,
    @Default(-1) int bookId,
    @Default(RelatedDiarySort.LATEST) RelatedDiarySort sort,
  }) = _RelatedDiaryState;
}
