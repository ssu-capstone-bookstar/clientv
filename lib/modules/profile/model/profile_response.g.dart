// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      memberId: (json['memberId'] as num).toInt(),
      nickName: json['nickName'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      introduction: json['introduction'] as String,
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'nickName': instance.nickName,
      'profileImageUrl': instance.profileImageUrl,
      'introduction': instance.introduction,
    };
