// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryCommentResponse _$DiaryCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _DiaryCommentResponse(
      commentId: (json['commentId'] as num?)?.toInt() ?? 0,
      content: json['content'] as String? ?? '',
      writer:
          MinimumMemberProfile.fromJson(json['writer'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      replies: (json['replies'] as List<dynamic>?)
              ?.map(
                  (e) => DiaryReplyResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DiaryCommentResponseToJson(
        _DiaryCommentResponse instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'content': instance.content,
      'writer': instance.writer,
      'createdAt': instance.createdAt.toIso8601String(),
      'replies': instance.replies,
    };
