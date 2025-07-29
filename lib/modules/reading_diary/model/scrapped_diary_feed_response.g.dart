// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrapped_diary_feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScrappedDiaryFeed _$ScrappedDiaryFeedFromJson(Map<String, dynamic> json) =>
    _ScrappedDiaryFeed(
      diaryId: (json['diaryId'] as num?)?.toInt() ?? 0,
      content: json['content'] as String? ?? '',
      createdDate: json['createdDate'] as String? ?? '',
      memberId: (json['memberId'] as num?)?.toInt() ?? 0,
      nickname: json['nickname'] as String? ?? '',
      profileImageUrl: json['profileImageUrl'] as String? ?? '',
      bookId: (json['bookId'] as num?)?.toInt() ?? 0,
      bookTitle: json['bookTitle'] as String? ?? '',
      bookAuthor: json['bookAuthor'] as String? ?? '',
      bookRating: (json['bookRating'] as num?)?.toInt() ?? 0,
      images: (json['images'] as List<dynamic>?)
              ?.map(
                  (e) => DiaryImageResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
      viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
      scrapId: (json['scrapId'] as num?)?.toInt() ?? 0,
      liked: json['liked'] as bool? ?? false,
      scraped: json['scraped'] as bool? ?? false,
    );

Map<String, dynamic> _$ScrappedDiaryFeedToJson(_ScrappedDiaryFeed instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'content': instance.content,
      'createdDate': instance.createdDate,
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
      'scrapId': instance.scrapId,
      'liked': instance.liked,
      'scraped': instance.scraped,
    };
