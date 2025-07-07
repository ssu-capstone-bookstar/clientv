import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ChallengeQuitBooksScreen extends StatelessWidget {
  const ChallengeQuitBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('챌린지 중단 도서'),
        titleTextStyle: AppTexts.b5.copyWith(color: ColorName.w1),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(child: Text('챌린지 중단 도서 화면')),
    );
  }
}
