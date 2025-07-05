import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/models/minimum_member_profile.dart';
import 'diary_reply_response.dart';

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
