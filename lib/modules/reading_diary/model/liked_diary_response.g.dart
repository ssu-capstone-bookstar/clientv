// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_diary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikedDiaryResponse _$LikedDiaryResponseFromJson(Map<String, dynamic> json) =>
    _LikedDiaryResponse(
      diaryId: (json['diaryId'] as num?)?.toInt() ?? 0,
      likeId: (json['likeId'] as num?)?.toInt() ?? 0,
      bookId: (json['bookId'] as num?)?.toInt() ?? 0,
      readingDiaryId: (json['readingDiaryId'] as num?)?.toInt() ?? 0,
      thumbnailImageUrl: json['thumbnailImageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$LikedDiaryResponseToJson(_LikedDiaryResponse instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'likeId': instance.likeId,
      'bookId': instance.bookId,
      'readingDiaryId': instance.readingDiaryId,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
    };
