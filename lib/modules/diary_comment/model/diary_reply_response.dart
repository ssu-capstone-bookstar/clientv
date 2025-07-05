import 'package:book/common/models/minimum_member_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_reply_response.freezed.dart';
part 'diary_reply_response.g.dart';

@freezed
abstract class DiaryReplyResponse with _$DiaryReplyResponse {
  const factory DiaryReplyResponse({
    @Default(0) int commentId,
    @Default('') String content,
    required MinimumMemberProfile writer,
    required DateTime createdAt,
  }) = _DiaryReplyResponse;

  factory DiaryReplyResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryReplyResponseFromJson(json);
}
