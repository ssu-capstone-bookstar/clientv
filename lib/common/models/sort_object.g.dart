// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SortObject _$SortObjectFromJson(Map<String, dynamic> json) => _SortObject(
      empty: json['empty'] as bool? ?? false,
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
    );

Map<String, dynamic> _$SortObjectToJson(_SortObject instance) =>
    <String, dynamic>{
      'empty': instance.empty,
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
    };
