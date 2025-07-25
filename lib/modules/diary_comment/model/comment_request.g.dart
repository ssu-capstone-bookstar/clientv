// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentRequest _$CommentRequestFromJson(Map<String, dynamic> json) =>
    _CommentRequest(
      parentCommentId: (json['parentCommentId'] as num?)?.toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$CommentRequestToJson(_CommentRequest instance) =>
    <String, dynamic>{
      'parentCommentId': instance.parentCommentId,
      'content': instance.content,
    };
