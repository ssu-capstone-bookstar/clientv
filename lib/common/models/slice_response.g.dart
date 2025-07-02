// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slice_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SliceResponse<T> _$SliceResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _SliceResponse<T>(
      content: (json['content'] as List<dynamic>).map(fromJsonT).toList(),
      pageable:
          PageableObject.fromJson(json['pageable'] as Map<String, dynamic>),
      last: json['last'] as bool? ?? false,
      numberOfElements: (json['numberOfElements'] as num?)?.toInt() ?? 0,
      size: (json['size'] as num?)?.toInt() ?? 0,
      number: (json['number'] as num?)?.toInt() ?? 0,
      sort: SortObject.fromJson(json['sort'] as Map<String, dynamic>),
      first: json['first'] as bool? ?? false,
      empty: json['empty'] as bool? ?? false,
    );

Map<String, dynamic> _$SliceResponseToJson<T>(
  _SliceResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'content': instance.content.map(toJsonT).toList(),
      'pageable': instance.pageable,
      'last': instance.last,
      'numberOfElements': instance.numberOfElements,
      'size': instance.size,
      'number': instance.number,
      'sort': instance.sort,
      'first': instance.first,
      'empty': instance.empty,
    };
