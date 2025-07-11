// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_thumbnail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryThumbnail _$DiaryThumbnailFromJson(Map<String, dynamic> json) =>
    _DiaryThumbnail(
      diaryId: (json['diaryId'] as num).toInt(),
      firstImage:
          Thumbnail.fromJson(json['firstImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiaryThumbnailToJson(_DiaryThumbnail instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'firstImage': instance.firstImage,
    };

_Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => _Thumbnail(
      imageUrl: json['imageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$ThumbnailToJson(_Thumbnail instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };
