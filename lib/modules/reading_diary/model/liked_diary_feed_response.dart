import 'package:freezed_annotation/freezed_annotation.dart';

import 'liked_diary_thumbnail_response.dart';

part 'liked_diary_feed_response.freezed.dart';
part 'liked_diary_feed_response.g.dart';

@freezed
abstract class LikedDiaryFeedResponse with _$LikedDiaryFeedResponse {
  const factory LikedDiaryFeedResponse({
    required StatusResponse statusResponse,
    required LikedDiaryFeedData data,
  }) = _LikedDiaryFeedResponse;

  factory LikedDiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryFeedResponseFromJson(json);
}

@freezed
abstract class LikedDiaryFeedData with _$LikedDiaryFeedData {
  const factory LikedDiaryFeedData({
    required List<LikedDiaryFeed> data,
    required int nextCursor,
    required bool hasNext,
  }) = _LikedDiaryFeedData;

  factory LikedDiaryFeedData.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryFeedDataFromJson(json);
}

@freezed
abstract class LikedDiaryFeed with _$LikedDiaryFeed {
  const factory LikedDiaryFeed({
    required int diaryId,
    required String content,
    required DateTime createdDate,
    required int memberId,
    required String nickname,
    required String profileImageUrl,
    required int bookId,
    required String bookTitle,
    required String bookAuthor,
    required int bookRating,
    required List<DiaryImage> images,
    required int likeCount,
    required int commentCount,
    required int viewCount,
    required int diaryLikeId,
    required bool liked,
    required bool scraped,
  }) = _LikedDiaryFeed;

  factory LikedDiaryFeed.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryFeedFromJson(json);
}
