import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/cursor_page_response.dart';
import '../../../common/models/response_form.dart';
import '../model/chat_participant_response.dart';
import '../model/chat_room_response.dart';
import '../model/ably_token_response.dart';
import '../model/chat_message_request.dart';
import '../model/chat_message_response.dart';

part 'chat_repository.g.dart';

@Riverpod(keepAlive: true)
ChatRepository chatRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ChatRepository(dio);
}

@RestApi()
abstract class ChatRepository {
  factory ChatRepository(Dio dio, {String baseUrl}) = _ChatRepository;

  @GET('/api/v2/chat/rooms/my')
  Future<ResponseForm<List<ChatRoomResponse>>> getMyChatRooms();

  @GET('/api/v2/chat/rooms/{roomId}/messages')
  Future<ResponseForm<CursorPageResponse<ChatMessageResponse>>> getChatHistory({
    @Path('roomId') required int roomId,
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/api/v2/chat/rooms/{roomId}/participants')
  Future<ResponseForm<ChatParticipantResponse>> getChatParticipants(
    @Path('roomId') int roomId,
  );

  @POST('/api/v2/chat/rooms/{roomId}/messages')
  Future<ResponseForm<ChatMessageResponse>> sendMessage(
    @Path('roomId') int roomId,
    @Body() ChatMessageRequest request,
  );

  @POST('/api/v2/chat/rooms/{roomId}/join')
  Future<ResponseForm<void>> joinChatRoom(
    @Path('roomId') int roomId,
  );

  @DELETE('/api/v2/chat/rooms/{roomId}')
  Future<ResponseForm<void>> leaveChatRoom(
    @Path('roomId') int roomId,
  );

  @POST('/api/v2/ably/token')
  Future<ResponseForm<AblyTokenResponse>> getAblyToken();
}
