import 'dart:io';

import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/chat/model/chat_message_request.dart';
import 'package:book/modules/chat/model/chat_message_response.dart';
import 'package:book/modules/chat/model/chat_participant_response.dart';
import 'package:book/modules/chat/model/chat_room_response.dart';
import 'package:book/modules/chat/repository/chat_repository.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:book/modules/image/model/presigned_url_request.dart';
import 'package:book/modules/image/repository/image_repository.dart';
import 'package:book/modules/image/repository/s3_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_view_model.g.dart';

class ChatCategory {
  final int roomId;
  final String name;
  final SvgPicture icon;
  final ChatRoomCategory category;

  const ChatCategory({
    required this.roomId,
    required this.name,
    required this.icon,
    required this.category,
  });
}

enum ChatInputOptionType {
  camera,
  gallery,
}

@riverpod
class ChatViewModel extends _$ChatViewModel {
  late final ChatRepository _repository;
  late final ImageRepository _imageRepo;
  late final S3Repository _s3Repo;

  static final ChatCategory defaultCategory = ChatCategory(
      roomId: 2,
      name: "",
      icon: Assets.icons.icCategoryLiterature.svg(height: 21),
      category: ChatRoomCategory.literature);

  static final List<ChatCategory> categories = [
    ChatCategory(
        roomId: 2,
        name: "문학",
        icon: Assets.icons.icCategoryLiterature.svg(height: 21),
        category: ChatRoomCategory.literature),
    ChatCategory(
        roomId: 3,
        name: "인문사회",
        icon: Assets.icons.icCategorySocialSciences.svg(height: 21),
        category: ChatRoomCategory.humanitiesSociety),
    ChatCategory(
        roomId: 4,
        name: "과학기술",
        icon: Assets.icons.icCategoryScienceTech.svg(height: 21),
        category: ChatRoomCategory.scienceTechnology),
    ChatCategory(
        roomId: 5,
        name: "예술취미",
        icon: Assets.icons.icCategoryArtHobby.svg(height: 21),
        category: ChatRoomCategory.artHobby),
    ChatCategory(
        roomId: 6,
        name: "아동청소년",
        icon: Assets.icons.icCategoryChildren.svg(height: 21),
        category: ChatRoomCategory.childrenYouth),
    ChatCategory(
        roomId: 7,
        name: "베스트셀러",
        icon: Assets.icons.icCategoryBestseller.svg(height: 21),
        category: ChatRoomCategory.bestseller),
  ];

  @override
  FutureOr<ChatState> build() async {
    _repository = ref.watch(chatRepositoryProvider);
    _imageRepo = ref.read(imageRepositoryProvider);
    _s3Repo = ref.read(s3RepositoryProvider);

    final response = await _repository.getMyChatRooms();
    state = AsyncValue.data(
      ChatState(
        myChatRooms: response.data,
      ),
    );
    return state.value ?? ChatState();
  }

  /// 참여한 채팅방 목록 조회
  Future<void> getMyChatRooms() async {
    final prev = state.value ?? ChatState();
    state = AsyncValue.loading();
    final response = await _repository.getMyChatRooms();
    state = AsyncValue.data(prev.copyWith(myChatRooms: response.data));
  }

  /// 채팅방 참여
  Future<void> joinChatRoom(int roomId) async {
    await _repository.joinChatRoom(roomId);
    /** refresh */
    await getMyChatRooms();
  }

  /// 채팅방 참여 직후, 필요 데이터 취득
  Future<void> initChatRoomState(int roomId) async {
    final prev = state.value ?? ChatState();
    state = AsyncValue.loading();
    final chatHistory = await getChatHistory(roomId);
    final chatParticipants = await getChatParticipants(roomId);
    state = AsyncValue.data(prev.copyWith(
        chatHistory: chatHistory, chatParticipants: chatParticipants));
  }

    /// 채팅방 참여 직후, 필요 데이터 취득
  Future<void> fetchPreviousChatHistory(int roomId) async {
    final prev = state.value ?? ChatState();
    if(!prev.chatHistory.hasNext || prev.chatHistory.nextCursor == null) return;
    state = AsyncValue.loading();
    final newChatHistory = await getChatHistory(roomId, cursorId: prev.chatHistory.nextCursor);
    state = AsyncValue.data(
      prev.copyWith(
        chatHistory: prev.chatHistory.copyWith(
          hasNext: newChatHistory.hasNext,
          nextCursor: newChatHistory.nextCursor,
          data: _sortChatHistory([...newChatHistory.data, ...prev.chatHistory.data]),
        ),
      ),
    );
  }

  Future<ably.RealtimeChannel> initAbly(int roomId) async {
    final response = await _repository.getAblyToken();
    final token = response.data.token;
    final options = ably.ClientOptions(key: token);

    final realtime = ably.Realtime(options: options);
    return realtime.channels.get('chat:$roomId');
  }

  /// 채팅 내역 조회
  Future<CursorPageResponse<ChatMessageResponse>> getChatHistory(int roomId,
      {int? cursorId, int? size}) async {
    final response = await _repository.getChatHistory(
      roomId: roomId,
      cursorId: cursorId,
      size: size,
    );

    return response.data.copyWith(data: _sortChatHistory(response.data.data));
  }

  void addChatHistory(Object? data) {
    if (data != null) {
      final map = Map<String, dynamic>.from(data as Map<dynamic, dynamic>);
      final response = ChatMessageResponse.fromJson(map);
      // 기존 상태에서 chatHistory.data에 아이템 하나 추가
      final prev = state.value ?? ChatState();
      state = AsyncValue.data(
        prev.copyWith(
          chatHistory: prev.chatHistory.copyWith(
            data: _sortChatHistory([...prev.chatHistory.data, response]),
          ),
        ),
      );
    }
  }

  List<ChatMessageResponse> _sortChatHistory(List<ChatMessageResponse> value) {
    final sortedData = [...value]
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return sortedData;
  }

  Future<ChatMessageResponse> sendMessage(
      int roomId, String? content, MessageType messageType, XFile? file) async {
    String? fileUrl = file != null ? await _getFileUrl(file) : null;
    final response = await _repository.sendMessage(
        roomId,
        ChatMessageRequest(
          content: content,
          messageType: messageType,
          fileUrl: fileUrl,
        ));
    return response.data;
  }

  Future<String> _getFileUrl(XFile xFile) async {
    final file = File(xFile.path);
    final fileName = file.uri.pathSegments.last;
    final presignedUrlResponse = await _imageRepo.getPresignedUrl(
      'CHAT_IMAGE',
      PresignedUrlRequest(fileName: fileName),
    );

    debugPrint('##### Presigned URL Response: ${presignedUrlResponse.data}');
    final presignedData = presignedUrlResponse.data;

    await _s3Repo.uploadFileToS3(
      presignedUrl: presignedData.presignedUrl,
      file: file,
    );

    return presignedData.imageUrl;
  }

  /// 채팅방 참여자 목록 조회
  Future<ChatParticipantResponse> getChatParticipants(int roomId) async {
    final response = await _repository.getChatParticipants(roomId);
    return response.data;
  }

  /// 채팅방 나가기
  Future<void> leaveChatRoom(int roomId) async {
    await _repository.leaveChatRoom(roomId);
    /** refresh */
    await getMyChatRooms();
  }
}
