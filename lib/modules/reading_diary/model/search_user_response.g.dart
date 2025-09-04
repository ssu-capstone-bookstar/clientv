// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchUserResponse _$SearchUserResponseFromJson(Map<String, dynamic> json) =>
    _SearchUserResponse(
      memberId: (json['memberId'] as num).toInt(),
      nickName: json['nickName'] as String,
      profileImg: json['profileImg'] as String,
    );

Map<String, dynamic> _$SearchUserResponseToJson(_SearchUserResponse instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'nickName': instance.nickName,
      'profileImg': instance.profileImg,
    };
