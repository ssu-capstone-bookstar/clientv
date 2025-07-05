// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_cursor_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DualCursorPageResponse<T> _$DualCursorPageResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _DualCursorPageResponse<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      nextCursor: (json['nextCursor'] as num?)?.toInt(),
      nextSubCursor: json['nextSubCursor'],
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$DualCursorPageResponseToJson<T>(
  _DualCursorPageResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'nextCursor': instance.nextCursor,
      'nextSubCursor': instance.nextSubCursor,
      'hasNext': instance.hasNext,
    };
