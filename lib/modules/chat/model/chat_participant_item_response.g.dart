// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_participant_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatParticipantItemResponse _$ChatParticipantItemResponseFromJson(
        Map<String, dynamic> json) =>
    _ChatParticipantItemResponse(
      memberId: (json['memberId'] as num?)?.toInt() ?? 0,
      nickName: json['nickName'] as String? ?? "",
      profileImageUrl: json['profileImageUrl'] as String? ?? "",
    );

Map<String, dynamic> _$ChatParticipantItemResponseToJson(
        _ChatParticipantItemResponse instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'nickName': instance.nickName,
      'profileImageUrl': instance.profileImageUrl,
    };
