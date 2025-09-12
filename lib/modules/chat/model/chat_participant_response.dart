import 'package:bookstar/modules/chat/model/chat_participant_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant_response.freezed.dart';
part 'chat_participant_response.g.dart';

@freezed
abstract class ChatParticipantResponse with _$ChatParticipantResponse {
  const factory ChatParticipantResponse({
    @Default(0) int totalParticipantCount,
    @Default([]) List<ChatParticipantItemResponse> participants,
  }) = _ChatParticipantResponse;

  factory ChatParticipantResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantResponseFromJson(json);
}
