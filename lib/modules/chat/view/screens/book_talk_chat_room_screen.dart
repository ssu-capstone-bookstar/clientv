import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
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
    ref.read(chatViewModelProvider.notifier).fetchChatRoomState(widget.roomId);
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
            orElse: () => ChatCategory(roomId: -1, name: ""))
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
        child: Stack(
          children: [
            // 채팅 내역
            Positioned.fill(
              child: state.when(
                data: (data) => _buildChatHistory(_scrollController, data),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
            ),
            // 하단 입력 폼
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: _buildChatInput(_textController),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatHistory(ScrollController scrollController, ChatState data) {
    // data: (data) => CustomScrollView(
                //   controller: _scrollController,
                //   slivers: [
                //     // ...채팅 내역 Sliver들...
                //   ],
                // ),
    return Container();
  }

  Widget _buildChatInput(TextEditingController textController) {
    return Padding(padding: AppPaddings.CHAT_INPUT_PADDING,
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
