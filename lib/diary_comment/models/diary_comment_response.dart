import 'package:book/common/models/minimum_member_profile.dart';
import 'package:book/diary_comment/models/diary_reply_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_comment_response.freezed.dart';
part 'diary_comment_response.g.dart';

@freezed
abstract class DiaryCommentResponse with _$DiaryCommentResponse {
  const factory DiaryCommentResponse({
    @Default(0) int commentId,
    @Default('') String content,
    required MinimumMemberProfile writer,
    required DateTime createdAt,
    @Default([]) List<DiaryReplyResponse> replies,
  }) = _DiaryCommentResponse;

  factory DiaryCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryCommentResponseFromJson(json);
} 