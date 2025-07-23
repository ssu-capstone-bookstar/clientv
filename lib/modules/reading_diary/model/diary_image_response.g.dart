// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryImageResponse _$DiaryImageResponseFromJson(Map<String, dynamic> json) =>
    _DiaryImageResponse(
      diaryId: (json['diaryId'] as num?)?.toInt() ?? -1,
      imageId: (json['imageId'] as num?)?.toInt() ?? -1,
      imageUrl: json['imageUrl'] as String? ?? '',
      sequence: (json['sequence'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DiaryImageResponseToJson(_DiaryImageResponse instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'sequence': instance.sequence,
    };
