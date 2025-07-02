// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CursorPageResponse<T> _$CursorPageResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _CursorPageResponse<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      nextCursor: (json['nextCursor'] as num?)?.toInt(),
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$CursorPageResponseToJson<T>(
  _CursorPageResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'nextCursor': instance.nextCursor,
      'hasNext': instance.hasNext,
    };
