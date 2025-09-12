import 'package:bookstar/modules/chat/model/chat_message_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_response.freezed.dart';
part 'chat_message_response.g.dart';

@freezed
abstract class ChatMessageResponse with _$ChatMessageResponse {
  const factory ChatMessageResponse({
    @Default(0) int id,
    @Default(0) int senderId,
    @Default('') String senderName,
    @Default('') String content,
    @Default(MessageType.text) MessageType messageType,
    String? fileUrl,
    @Default('') String createdAt,
  }) = _ChatMessageResponse;

  factory ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageResponseFromJson(json);
}
