// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageResponse _$ChatMessageResponseFromJson(Map<String, dynamic> json) =>
    _ChatMessageResponse(
      messageId: json['messageId'] as String? ?? '',
      sender:
          MinimumMemberProfile.fromJson(json['sender'] as Map<String, dynamic>),
      content: json['content'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$ChatMessageResponseToJson(
        _ChatMessageResponse instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'sender': instance.sender,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
