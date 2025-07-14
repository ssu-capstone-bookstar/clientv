import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:book/modules/chat/view_model/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTalkChatRoomScreen extends ConsumerStatefulWidget {
  const BookTalkChatRoomScreen({super.key, required this.roomId});

  final int roomId;

  @override
  ConsumerState<BookTalkChatRoomScreen> createState() =>
      _BookTalkChatRoomScreen();
}

class _BookTalkChatRoomScreen extends ConsumerState<BookTalkChatRoomScreen> {
  late final ScrollController _scrollController;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    Future.microtask(() {
      ref
          .read(chatViewModelProvider.notifier)
          .fetchChatRoomState(widget.roomId);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);

    String roomName = ChatViewModel.categories
        .firstWhere((item) => item.roomId == widget.roomId,
            orElse: () => ChatViewModel.defaultCategory)
        .name;

    return Scaffold(
      appBar: AppBar(
        title: Text(roomName),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // 채팅 내역
            Expanded(
              child: state.when(
                data: (data) => _buildChatHistory(_scrollController, data),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
            ),
            // 하단 입력 폼
            _buildChatInput(_textController)
          ],
        ),
      ),
    );
  }

  Widget _buildChatHistory(ScrollController scrollController, ChatState data) {
    final messages = data.chatHistory.data;
    return messages.isEmpty
        ? _buildEmptyChatRoom()
        : CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                  child: Text(
                    "",
                    style: AppTexts.b1.copyWith(color: ColorName.e0),
                  ))
            ],
          );
  }

  Widget _buildEmptyChatRoom() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.icons.icBookpickChatCharacter.svg(),
        SizedBox(
          height: 12
        ),
        Text(
          "채팅을 시작해 보세요",
          style: AppTexts.b8.copyWith(color: ColorName.g3),
        ),
      ],
    );
  }

  Widget _buildChatInput(TextEditingController textController) {
    return Padding(
      padding: AppPaddings.CHAT_INPUT_PADDING,
      child: Row(
        children: [
          Text("data"),
          Expanded(
            child: SearchTextField(
              controller: _textController,
              hintText: '메세지를 작성해 보세요',
              hintStyle: AppTexts.b8.copyWith(color: ColorName.g3),
              // suffixIcon: Assets.images.firefl
            ),
          ),
        ],
      ),
    );
  }
}
