import 'package:book/modules/chat/model/chat_message_response.dart';
import 'package:book/modules/chat/model/chat_participant_response.dart';
import 'package:book/modules/chat/model/chat_room_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<ChatRoomResponse> myChatRooms,
    @Default([]) List<ChatMessageResponse> chatHistory,
    @Default(false) bool hasNext,
    @Default(-1) int nextCursor,
    @Default(
      ChatParticipantResponse()
    ) ChatParticipantResponse chatParticipants,
  }) = _ChatState;
}