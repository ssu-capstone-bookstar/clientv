import 'package:bookstar/modules/book_log/view/screens/book_log_thumbnail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookTalkChatRoomBookLogScreen extends ConsumerWidget {
  const BookTalkChatRoomBookLogScreen({super.key, required this.memberId});

  final int memberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BookLogThumbnailScreen(
      memberId: memberId,
    );
  }
}
