// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    _LoginRequest(
      providerType: $enumDecode(_$ProviderTypeEnumMap, json['providerType']),
      idToken: json['idToken'] as String,
    );

Map<String, dynamic> _$LoginRequestToJson(_LoginRequest instance) =>
    <String, dynamic>{
      'providerType': _$ProviderTypeEnumMap[instance.providerType]!,
      'idToken': instance.idToken,
    };

const _$ProviderTypeEnumMap = {
  ProviderType.kakao: 'KAKAO',
  ProviderType.google: 'GOOGLE',
  ProviderType.apple: 'APPLE',
};
