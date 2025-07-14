import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/modules/chat/model/chat_message_response.dart';
import 'package:book/modules/chat/model/chat_participant_response.dart';
import 'package:book/modules/chat/repository/chat_repository.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_view_model.g.dart';

class ChatCategory {
  final int roomId;
  final String name;

  const ChatCategory({
    required this.roomId,
    required this.name,
  });
}

@riverpod
class ChatViewModel extends _$ChatViewModel {
  late final ChatRepository _repository;

  static final List<ChatCategory> categories = [
    ChatCategory(roomId: 2, name: "문학"),
    ChatCategory(roomId: 3, name: "인문사회"),
    ChatCategory(roomId: 4, name: "과학기술"),
    ChatCategory(roomId: 5, name: "예술취미"),
    ChatCategory(roomId: 6, name: "아동청소년"),
    ChatCategory(roomId: 7, name: "베스트셀러"),
  ];

  @override
  FutureOr<ChatState> build() async {
    _repository = ref.watch(chatRepositoryProvider);
    final response = await _repository.getMyChatRooms();
    state = AsyncValue.data(
      ChatState(
        myChatRooms: response.data,
      ),
    );
    return state.value ?? ChatState();
  }

  /** 참여한 채팅방 목록 조회 */
  Future<void> getMyChatRooms() async {
    _repository = ref.watch(chatRepositoryProvider);
    final response = await _repository.getMyChatRooms();
    final prev = state.value ?? ChatState();
    state = AsyncValue.data(prev.copyWith(myChatRooms: response.data));
  }

  /** 채팅방 참여 */
  Future<void> joinChatRoom(int roomId) async {
    await _repository.joinChatRoom(roomId);
    /** refresh */
    await getMyChatRooms();
  }

  /** 채팅방 참여 직후, 필요 데이터 취득 */
  Future<void> fetchChatRoomState(int roomId) async {
    final chatHistory = await getChatHistory(roomId);
    final chatParticipants = await getChatParticipants(roomId);
    final prev = state.value ?? ChatState();
    state = AsyncValue.data(prev.copyWith(
        chatHistory: chatHistory, chatParticipants: chatParticipants));
  }

  /** 채팅 내역 조회 */
  Future<CursorPageResponse<ChatMessageResponse>> getChatHistory(int roomId,
      {int? cursorId, int? size}) async {
    final response = await _repository.getChatHistory(
      roomId: roomId,
      cursorId: cursorId,
      size: size,
    );
    return response.data;
  }

  /** 채팅방 참여자 목록 조회 */
  Future<ChatParticipantResponse> getChatParticipants(int roomId) async {
    final response = await _repository.getChatParticipants(roomId);
    return response.data;
  }

  /** 채팅방 나가기 */
  Future<void> leaveChatRoom(int roomId) async {
    await _repository.leaveChatRoom(roomId);
    /** refresh */
    await getMyChatRooms();
  }
}
