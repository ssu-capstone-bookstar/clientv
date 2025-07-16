import 'package:book/modules/book_log/view/screens/book_log_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTalkChatRoomBookLogScreen extends ConsumerStatefulWidget {
  const BookTalkChatRoomBookLogScreen({super.key, required this.memberId});

  final int memberId;

  @override
  ConsumerState<BookTalkChatRoomBookLogScreen> createState() =>
      _BookTalkChatRoomBookLogScreen();
}

class _BookTalkChatRoomBookLogScreen
    extends ConsumerState<BookTalkChatRoomBookLogScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: BookLogScreen(
        otherMemberId: widget.memberId,
      ),
    );
  }
}
