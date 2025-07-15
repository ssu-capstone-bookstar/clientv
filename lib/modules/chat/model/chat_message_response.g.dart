// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageResponse _$ChatMessageResponseFromJson(Map<String, dynamic> json) =>
    _ChatMessageResponse(
      id: (json['id'] as num?)?.toInt() ?? 0,
      senderId: (json['senderId'] as num?)?.toInt() ?? 0,
      senderName: json['senderName'] as String? ?? '',
      content: json['content'] as String? ?? '',
      messageType:
          $enumDecodeNullable(_$MessageTypeEnumMap, json['messageType']) ??
              MessageType.text,
      fileUrl: json['fileUrl'] as String?,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$ChatMessageResponseToJson(
        _ChatMessageResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'content': instance.content,
      'messageType': _$MessageTypeEnumMap[instance.messageType]!,
      'fileUrl': instance.fileUrl,
      'createdAt': instance.createdAt,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.video: 'VIDEO',
  MessageType.file: 'FILE',
};
