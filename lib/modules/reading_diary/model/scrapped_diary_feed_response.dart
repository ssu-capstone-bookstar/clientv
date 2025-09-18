import 'package:freezed_annotation/freezed_annotation.dart';

import 'diary_image_response.dart';

part 'scrapped_diary_feed_response.freezed.dart';
part 'scrapped_diary_feed_response.g.dart';

@freezed
abstract class ScrappedDiaryFeedResponse with _$ScrappedDiaryFeedResponse {
  const factory ScrappedDiaryFeedResponse({
    @Default(0) int diaryId,
    @Default('') String content,
    @Default('') String createdDate,
    @Default(0) int memberId,
    @Default('') String nickname,
    @Default('') String profileImageUrl,
    @Default(0) int bookId,
    @Default('') String bookTitle,
    @Default('') String bookAuthor,
    @Default(0) int bookRating,
    @Default([]) List<DiaryImageResponse> images,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int viewCount,
    @Default(0) int scrapId,
    @Default(false) bool liked,
    @Default(false) bool scraped,
  }) = _ScrappedDiaryFeedResponse;

  factory ScrappedDiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$ScrappedDiaryFeedResponseFromJson(json);
}
