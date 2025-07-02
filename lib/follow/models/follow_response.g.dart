// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowResponse _$FollowResponseFromJson(Map<String, dynamic> json) =>
    _FollowResponse(
      id: (json['id'] as num?)?.toInt() ?? 0,
      memberId: (json['memberId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
    );

Map<String, dynamic> _$FollowResponseToJson(_FollowResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
    };
