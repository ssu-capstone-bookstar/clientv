// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileRequest _$UpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _UpdateProfileRequest(
      name: json['name'] as String? ?? '',
      nickName: json['nickName'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      introduction: json['introduction'] as String?,
    );

Map<String, dynamic> _$UpdateProfileRequestToJson(
        _UpdateProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nickName': instance.nickName,
      'profileImageUrl': instance.profileImageUrl,
      'introduction': instance.introduction,
    };
