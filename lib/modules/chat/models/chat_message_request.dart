import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_request.freezed.dart';
part 'chat_message_request.g.dart';

@JsonEnum(valueField: 'value')
enum MessageType {
  text('TEXT'),
  image('IMAGE'),
  video('VIDEO'),
  file('FILE');

  const MessageType(this.value);
  final String value;
}

@freezed
abstract class ChatMessageRequest with _$ChatMessageRequest {
  const factory ChatMessageRequest({
    String? content,
    required MessageType messageType,
    String? fileUrl,
  }) = _ChatMessageRequest;

  factory ChatMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageRequestFromJson(json);
}
