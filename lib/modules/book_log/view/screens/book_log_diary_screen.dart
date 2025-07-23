import 'package:book/modules/book_log/view/widgets/daiary_card.dart';
import 'package:flutter/material.dart';

class BookLogDiaryScreen extends StatelessWidget {
  const BookLogDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('책로그'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: DiaryCard(),
      ),
    );
  }
}
