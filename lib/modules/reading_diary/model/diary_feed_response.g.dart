// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryFeedResponse _$DiaryFeedResponseFromJson(Map<String, dynamic> json) =>
    _DiaryFeedResponse(
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
      liked: json['liked'] as bool,
    );

Map<String, dynamic> _$DiaryFeedResponseToJson(_DiaryFeedResponse instance) =>
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
      'liked': instance.liked,
    };

_DiaryImage _$DiaryImageFromJson(Map<String, dynamic> json) => _DiaryImage(
      diaryId: (json['diaryId'] as num).toInt(),
      imageId: (json['imageId'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      sequence: (json['sequence'] as num).toInt(),
    );

Map<String, dynamic> _$DiaryImageToJson(_DiaryImage instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'sequence': instance.sequence,
    };
