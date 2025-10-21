import 'package:bookstar/modules/profile/model/profile_with_counts.dart';
import 'package:bookstar/modules/reading_diary/model/diary_response.dart';
import 'package:bookstar/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_log_state.freezed.dart';

@freezed
abstract class BookLogState with _$BookLogState {
  const factory BookLogState({
    @Default(ProfileWithCounts()) ProfileWithCounts profile,
    @Default([]) List<DiaryThumbnail> thumbnails,
    @Default([]) List<DiaryResponse> feeds,
    @Default(false) bool feedHasNext,
    @Default(-1) int feedNextCursor,
    @Default(false) bool personalizedFeedHasNext,
    @Default(-1) int personalizedFeedNextCursor,
    int? memberId,
  }) = _BookLogState;
}