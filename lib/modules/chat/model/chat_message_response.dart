import 'package:book/common/models/minimum_member_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_response.freezed.dart';
part 'chat_message_response.g.dart';

@freezed
abstract class ChatMessageResponse with _$ChatMessageResponse {
  const factory ChatMessageResponse({
    @Default('') String messageId,
    required MinimumMemberProfile sender,
    @Default('') String content,
    @Default('') String createdAt,
  }) = _ChatMessageResponse;

  factory ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageResponseFromJson(json);
} 