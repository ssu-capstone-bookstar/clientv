import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/liked_diary_thumbnail_response.dart';
import '../model/liked_diary_feed_response.dart';

part 'liked_diary_state.freezed.dart';

@freezed
abstract class LikedDiaryState with _$LikedDiaryState {
  const factory LikedDiaryState({
    @Default([]) List<LikedDiaryThumbnail> thumbnails,
    @Default([]) List<LikedDiaryFeed> feeds,
    @Default(0) int nextCursor,
    @Default(false) bool hasNext,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? errorMessage,
  }) = _LikedDiaryState;
}
