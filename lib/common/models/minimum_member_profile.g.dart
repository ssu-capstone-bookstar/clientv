// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimum_member_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MinimumMemberProfile _$MinimumMemberProfileFromJson(
        Map<String, dynamic> json) =>
    _MinimumMemberProfile(
      memberId: (json['memberId'] as num?)?.toInt() ?? 0,
      nickName: json['nickName'] as String? ?? '',
      profileImage: json['profileImage'] as String? ?? '',
    );

Map<String, dynamic> _$MinimumMemberProfileToJson(
        _MinimumMemberProfile instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'nickName': instance.nickName,
      'profileImage': instance.profileImage,
    };
