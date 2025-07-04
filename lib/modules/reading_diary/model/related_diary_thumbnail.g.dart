// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_diary_thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelatedDiaryThumbnail _$RelatedDiaryThumbnailFromJson(
        Map<String, dynamic> json) =>
    _RelatedDiaryThumbnail(
      diaryId: (json['diaryId'] as num).toInt(),
      firstImage:
          Thumbnail.fromJson(json['firstImage'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RelatedDiaryThumbnailToJson(
        _RelatedDiaryThumbnail instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'firstImage': instance.firstImage,
      'score': instance.score,
    };
