import 'package:book/common/theme/style/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChallengeQuitBooksScreen extends StatelessWidget {
  const ChallengeQuitBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('챌린지 중단 도서'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              GoRouter.of(context).go('/book-log');
            },
          ),
        ],
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: const Text('챌린지 중단 도서 화면'),
      ),
    );
  }
}
