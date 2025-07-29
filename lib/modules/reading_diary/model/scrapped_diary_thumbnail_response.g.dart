// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrapped_diary_thumbnail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScrappedDiaryThumbnailResponse _$ScrappedDiaryThumbnailResponseFromJson(
        Map<String, dynamic> json) =>
    _ScrappedDiaryThumbnailResponse(
      scrapId: (json['scrapId'] as num?)?.toInt() ?? 0,
      diaryId: (json['diaryId'] as num?)?.toInt() ?? 0,
      firstImage: json['firstImage'] == null
          ? null
          : ScrappedDiaryFirstImage.fromJson(
              json['firstImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScrappedDiaryThumbnailResponseToJson(
        _ScrappedDiaryThumbnailResponse instance) =>
    <String, dynamic>{
      'scrapId': instance.scrapId,
      'diaryId': instance.diaryId,
      'firstImage': instance.firstImage,
    };

_ScrappedDiaryFirstImage _$ScrappedDiaryFirstImageFromJson(
        Map<String, dynamic> json) =>
    _ScrappedDiaryFirstImage(
      imageUrl: json['imageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$ScrappedDiaryFirstImageToJson(
        _ScrappedDiaryFirstImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };
