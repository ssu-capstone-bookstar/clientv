// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryRequest _$DiaryRequestFromJson(Map<String, dynamic> json) =>
    _DiaryRequest(
      bookId: (json['bookId'] as num?)?.toInt() ?? 0,
      startPage: (json['startPage'] as num?)?.toInt(),
      endPage: (json['endPage'] as num?)?.toInt(),
      content: json['content'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DiaryRequestToJson(_DiaryRequest instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'startPage': instance.startPage,
      'endPage': instance.endPage,
      'content': instance.content,
      'images': instance.images,
    };
