// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageableObject _$PageableObjectFromJson(Map<String, dynamic> json) =>
    _PageableObject(
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      sort: SortObject.fromJson(json['sort'] as Map<String, dynamic>),
      unpaged: json['unpaged'] as bool? ?? false,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 0,
      paged: json['paged'] as bool? ?? false,
      pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PageableObjectToJson(_PageableObject instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'sort': instance.sort,
      'unpaged': instance.unpaged,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'pageNumber': instance.pageNumber,
    };
