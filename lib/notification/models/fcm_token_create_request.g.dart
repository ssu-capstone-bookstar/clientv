// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FCMTokenCreateRequest _$FCMTokenCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _FCMTokenCreateRequest(
      userId: (json['userId'] as num?)?.toInt(),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$FCMTokenCreateRequestToJson(
        _FCMTokenCreateRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
    };
