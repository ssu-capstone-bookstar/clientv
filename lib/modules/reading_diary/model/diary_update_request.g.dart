// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryUpdateRequest _$DiaryUpdateRequestFromJson(Map<String, dynamic> json) =>
    _DiaryUpdateRequest(
      bookId: (json['bookId'] as num).toInt(),
      content: json['content'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      privacy: json['privacy'] as bool? ?? false,
    );

Map<String, dynamic> _$DiaryUpdateRequestToJson(_DiaryUpdateRequest instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'content': instance.content,
      'images': instance.images,
      'privacy': instance.privacy,
    };
