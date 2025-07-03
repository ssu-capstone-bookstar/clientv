import 'package:flutter/material.dart';

class RelatedPostsWidget extends StatelessWidget {
  const RelatedPostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '관련 게시물',
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '북스타 유저들이 공유한 관련 게시물을 확인해 보세요',
            style: textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          // TODO: API 연동 시 실제 데이터로 교체
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6, // 임시로 6개 표시
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
} 