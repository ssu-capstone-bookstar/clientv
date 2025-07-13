import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/grid/image_grid.dart';
import '../../../book_log/model/book_log_models.dart';

class LikedDiariesScreen extends StatelessWidget {
  const LikedDiariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: 더미 다이어리 삭제 필요, 모델 수정 필요
    final List<String> imageUrls = dummyDiaries
        .expand((diary) => diary.images.map((image) => image.imageUrl))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('좋아요 누른 다이어리'),
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
        padding: EdgeInsets.zero,
        child: ImageGrid(
          imageUrls: imageUrls,
          crossAxisCount: 3,
          spacing: 0,
        ),
      ),
    );
  }
}
