import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class LikedDiariesScreen extends StatelessWidget {
  const LikedDiariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('좋아요 누른 다이어리'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(child: Text('좋아요 누른 다이어리 화면')),
    );
  }
}
