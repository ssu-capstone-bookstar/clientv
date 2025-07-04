// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryResponse _$DiaryResponseFromJson(Map<String, dynamic> json) =>
    _DiaryResponse(
      diaryId: (json['diaryId'] as num).toInt(),
      startPage: (json['startPage'] as num?)?.toInt() ?? 0,
      endPage: (json['endPage'] as num?)?.toInt() ?? 0,
      content: json['content'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map(
                  (e) => DiaryImageResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      decoration: json['decoration'] as String? ?? '',
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DiaryResponseToJson(_DiaryResponse instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'startPage': instance.startPage,
      'endPage': instance.endPage,
      'content': instance.content,
      'images': instance.images,
      'decoration': instance.decoration,
      'createdAt': instance.createdAt.toIso8601String(),
    };
