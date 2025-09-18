import 'package:bookstar/modules/reading_diary/model/scrapped_diary_feed_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/scrapped_diary_thumbnail_response.dart';

part 'scrapped_diary_state.freezed.dart';

@freezed
abstract class ScrappedDiaryState with _$ScrappedDiaryState {
  const factory ScrappedDiaryState({
    @Default([]) List<ScrappedDiaryThumbnailResponse> thumbnails,
    @Default([]) List<ScrappedDiaryFeedResponse> feeds,
    int? nextCursor,
    @Default(true) bool hasNext,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ScrappedDiaryState;
}
