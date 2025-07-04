import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/related_diary_thumbnail.dart';

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
