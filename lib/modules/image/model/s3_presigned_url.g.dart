// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_presigned_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_S3PresignedUrl _$S3PresignedUrlFromJson(Map<String, dynamic> json) =>
    _S3PresignedUrl(
      presignedUrl: json['presignedUrl'] as String,
      imageUrl: json['filePathInDB'] as String,
    );

Map<String, dynamic> _$S3PresignedUrlToJson(_S3PresignedUrl instance) =>
    <String, dynamic>{
      'presignedUrl': instance.presignedUrl,
      'filePathInDB': instance.imageUrl,
    };
