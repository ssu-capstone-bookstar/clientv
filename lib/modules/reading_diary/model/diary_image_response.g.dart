// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryImageResponse _$DiaryImageResponseFromJson(Map<String, dynamic> json) =>
    _DiaryImageResponse(
      id: (json['id'] as num?)?.toInt() ?? 0,
      imageUrl: json['imageUrl'] as String? ?? '',
      sequence: (json['sequence'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DiaryImageResponseToJson(_DiaryImageResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'sequence': instance.sequence,
    };
