// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageRequest _$ImageRequestFromJson(Map<String, dynamic> json) =>
    _ImageRequest(
      image: json['image'] as String? ?? '',
      sequence: (json['sequence'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$ImageRequestToJson(_ImageRequest instance) =>
    <String, dynamic>{
      'image': instance.image,
      'sequence': instance.sequence,
    };
