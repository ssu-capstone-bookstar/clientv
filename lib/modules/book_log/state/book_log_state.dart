import 'package:book/modules/profile/model/profile_with_counts.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:book/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_log_state.freezed.dart';

@freezed
abstract class BookLogState with _$BookLogState {
  const factory BookLogState({
    @Default(ProfileWithCounts()) ProfileWithCounts profile,
    @Default([]) List<DiaryThumbnail> thumbnails,
    @Default([]) List<DiaryResponse> feeds,
    @Default(false) bool hasNext,
    @Default(-1) int nextCursor,
    @Default(-1) int memberId,
  }) = _BookLogState;
}