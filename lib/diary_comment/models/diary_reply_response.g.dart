// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_reply_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryReplyResponse _$DiaryReplyResponseFromJson(Map<String, dynamic> json) =>
    _DiaryReplyResponse(
      commentId: (json['commentId'] as num?)?.toInt() ?? 0,
      content: json['content'] as String? ?? '',
      writer:
          MinimumMemberProfile.fromJson(json['writer'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DiaryReplyResponseToJson(_DiaryReplyResponse instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'content': instance.content,
      'writer': instance.writer,
      'createdAt': instance.createdAt.toIso8601String(),
    };
