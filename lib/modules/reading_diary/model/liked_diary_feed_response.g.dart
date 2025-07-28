// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_diary_feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikedDiaryFeedResponse _$LikedDiaryFeedResponseFromJson(
        Map<String, dynamic> json) =>
    _LikedDiaryFeedResponse(
      statusResponse: StatusResponse.fromJson(
          json['statusResponse'] as Map<String, dynamic>),
      data: LikedDiaryFeedData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikedDiaryFeedResponseToJson(
        _LikedDiaryFeedResponse instance) =>
    <String, dynamic>{
      'statusResponse': instance.statusResponse,
      'data': instance.data,
    };

_LikedDiaryFeedData _$LikedDiaryFeedDataFromJson(Map<String, dynamic> json) =>
    _LikedDiaryFeedData(
      data: (json['data'] as List<dynamic>)
          .map((e) => LikedDiaryFeed.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: (json['nextCursor'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$LikedDiaryFeedDataToJson(_LikedDiaryFeedData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'nextCursor': instance.nextCursor,
      'hasNext': instance.hasNext,
    };

_LikedDiaryFeed _$LikedDiaryFeedFromJson(Map<String, dynamic> json) =>
    _LikedDiaryFeed(
      diaryId: (json['diaryId'] as num).toInt(),
      content: json['content'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      memberId: (json['memberId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      bookId: (json['bookId'] as num).toInt(),
      bookTitle: json['bookTitle'] as String,
      bookAuthor: json['bookAuthor'] as String,
      bookRating: (json['bookRating'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => DiaryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
      diaryLikeId: (json['diaryLikeId'] as num).toInt(),
      liked: json['liked'] as bool,
      scraped: json['scraped'] as bool,
    );

Map<String, dynamic> _$LikedDiaryFeedToJson(_LikedDiaryFeed instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'content': instance.content,
      'createdDate': instance.createdDate.toIso8601String(),
      'memberId': instance.memberId,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
      'bookId': instance.bookId,
      'bookTitle': instance.bookTitle,
      'bookAuthor': instance.bookAuthor,
      'bookRating': instance.bookRating,
      'images': instance.images,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'viewCount': instance.viewCount,
      'diaryLikeId': instance.diaryLikeId,
      'liked': instance.liked,
      'scraped': instance.scraped,
    };
