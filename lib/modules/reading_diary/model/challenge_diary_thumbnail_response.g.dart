// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_diary_thumbnail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChallengeDiaryThumbnailResponse _$ChallengeDiaryThumbnailResponseFromJson(
        Map<String, dynamic> json) =>
    _ChallengeDiaryThumbnailResponse(
      diaryId: (json['diaryId'] as num).toInt(),
      firstImage: json['firstImage'] == null
          ? null
          : Thumbnail.fromJson(json['firstImage'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$ChallengeDiaryThumbnailResponseToJson(
        _ChallengeDiaryThumbnailResponse instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'firstImage': instance.firstImage,
      'score': instance.score,
    };
