// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryResponse _$DiaryResponseFromJson(Map<String, dynamic> json) =>
    _DiaryResponse(
      diaryId: (json['diaryId'] as num?)?.toInt() ?? -1,
      content: json['content'] as String? ?? '',
      createdDate: json['createdDate'] as String? ?? '',
      memberId: (json['memberId'] as num?)?.toInt() ?? -1,
      nickname: json['nickname'] as String? ?? '',
      profileImageUrl: json['profileImageUrl'] as String? ?? '',
      bookId: (json['bookId'] as num?)?.toInt() ?? -1,
      bookTitle: json['bookTitle'] as String? ?? '',
      bookAuthor: json['bookAuthor'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map(
                  (e) => DiaryImageResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
      viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
      liked: json['liked'] as bool? ?? false,
    );

Map<String, dynamic> _$DiaryResponseToJson(_DiaryResponse instance) =>
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
      'images': instance.images,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'viewCount': instance.viewCount,
      'liked': instance.liked,
    };
