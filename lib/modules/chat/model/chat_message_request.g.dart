// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageRequest _$ChatMessageRequestFromJson(Map<String, dynamic> json) =>
    _ChatMessageRequest(
      content: json['content'] as String?,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      fileUrl: json['fileUrl'] as String?,
    );

Map<String, dynamic> _$ChatMessageRequestToJson(_ChatMessageRequest instance) =>
    <String, dynamic>{
      'content': instance.content,
      'messageType': _$MessageTypeEnumMap[instance.messageType]!,
      'fileUrl': instance.fileUrl,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.video: 'VIDEO',
  MessageType.file: 'FILE',
};
