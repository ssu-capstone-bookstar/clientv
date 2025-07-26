import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_feed_response.freezed.dart';
part 'diary_feed_response.g.dart';

@freezed
abstract class DiaryFeedResponse with _$DiaryFeedResponse {
  const factory DiaryFeedResponse({
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
    required bool liked,
  }) = _DiaryFeedResponse;

  factory DiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryFeedResponseFromJson(json);
}

@freezed
abstract class DiaryImage with _$DiaryImage {
  const factory DiaryImage({
    required int diaryId,
    required int imageId,
    required String imageUrl,
    required int sequence,
  }) = _DiaryImage;

  factory DiaryImage.fromJson(Map<String, dynamic> json) =>
      _$DiaryImageFromJson(json);
}
