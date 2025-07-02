// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) =>
    _StatusResponse(
      status: json['status'] as String? ?? '',
      resultCode: json['resultCode'] as String,
      resultMessage: json['resultMessage'] as String,
    );

Map<String, dynamic> _$StatusResponseToJson(_StatusResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
    };
