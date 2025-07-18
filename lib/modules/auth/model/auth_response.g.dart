// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      memberId: (json['memberId'] as num).toInt(),
      nickName: json['nickName'] as String? ?? '',
      profileImage: json['profileImage'] as String? ?? '',
      providerType: json['providerType'] as String,
      email: json['email'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      accessTokenExpiration:
          DateTime.parse(json['accessTokenExpiration'] as String),
      refreshTokenExpiration:
          DateTime.parse(json['refreshTokenExpiration'] as String),
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'nickName': instance.nickName,
      'profileImage': instance.profileImage,
      'providerType': instance.providerType,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiration': instance.accessTokenExpiration.toIso8601String(),
      'refreshTokenExpiration':
          instance.refreshTokenExpiration.toIso8601String(),
    };
