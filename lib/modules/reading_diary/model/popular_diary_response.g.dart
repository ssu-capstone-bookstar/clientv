// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_diary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PopularDiaryResponse _$PopularDiaryResponseFromJson(
        Map<String, dynamic> json) =>
    _PopularDiaryResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => RelatedDiaryThumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$PopularDiaryResponseToJson(
        _PopularDiaryResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'page': instance.page,
      'size': instance.size,
      'hasNext': instance.hasNext,
    };
