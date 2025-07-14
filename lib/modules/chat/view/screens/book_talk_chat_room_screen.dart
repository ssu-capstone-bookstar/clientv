import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/chat/model/chat_room_response.dart';
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

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    ref.read(chatViewModelProvider.notifier).fetchChatRoomState(widget.roomId);
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
      body: state.when(
        data: (data) => CustomScrollView(
          controller: _scrollController,
          slivers: [
            // SliverToBoxAdapter(
            //     child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: data.chatHistory.data.map((item) => Text(item.content)).toList(),
            // )),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
