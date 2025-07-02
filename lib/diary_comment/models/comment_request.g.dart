// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentRequest _$CommentRequestFromJson(Map<String, dynamic> json) =>
    _CommentRequest(
      diaryId: (json['diaryId'] as num?)?.toInt() ?? 0,
      content: json['content'] as String,
    );

Map<String, dynamic> _$CommentRequestToJson(_CommentRequest instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'content': instance.content,
    };
