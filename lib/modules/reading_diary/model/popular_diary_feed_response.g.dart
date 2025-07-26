// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_diary_feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PopularDiaryFeedResponse _$PopularDiaryFeedResponseFromJson(
        Map<String, dynamic> json) =>
    _PopularDiaryFeedResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => DiaryFeedResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$PopularDiaryFeedResponseToJson(
        _PopularDiaryFeedResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'page': instance.page,
      'size': instance.size,
      'hasNext': instance.hasNext,
    };
