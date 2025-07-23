// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_diary_thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyDiaryThumbnail _$MyDiaryThumbnailFromJson(Map<String, dynamic> json) =>
    _MyDiaryThumbnail(
      diaryId: (json['diaryId'] as num).toInt(),
      firstImage:
          Thumbnail.fromJson(json['firstImage'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MyDiaryThumbnailToJson(_MyDiaryThumbnail instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'firstImage': instance.firstImage,
      'score': instance.score,
    };
