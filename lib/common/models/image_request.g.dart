// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageRequest _$ImageRequestFromJson(Map<String, dynamic> json) =>
    _ImageRequest(
      imageUrl: json['imageUrl'] as String? ?? "",
      sequence: (json['sequence'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$ImageRequestToJson(_ImageRequest instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'sequence': instance.sequence,
    };
