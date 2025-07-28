// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryUpdateRequest _$DiaryUpdateRequestFromJson(Map<String, dynamic> json) =>
    _DiaryUpdateRequest(
      content: json['content'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DiaryUpdateRequestToJson(_DiaryUpdateRequest instance) =>
    <String, dynamic>{
      'content': instance.content,
      'images': instance.images,
    };
