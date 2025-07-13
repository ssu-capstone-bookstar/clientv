import 'package:flutter/material.dart';
import 'package:book/common/components/grid/image_grid.dart';
import 'package:book/gen/colors.gen.dart';

import '../../model/book_log_models.dart';

class BookLogLowSection extends StatelessWidget {
  // TODO: 실제 데이터 모델로 교체 필요. 현재는 dummyDiaries 사용
  final diaries = dummyDiaries;

  BookLogLowSection({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: 실제 데이터로 교체 (예: diaries.map((d) => d.images.first.imageUrl).toList())
    final imageUrls = diaries
        .map((d) => d.images.isNotEmpty ? d.images.first.imageUrl : '')
        .toList();
    return Expanded(
      child: ImageGrid(
        imageUrls: imageUrls,
        crossAxisCount: 3,
        spacing: 0,
        emptyWidget: const Center(
          child: Text(
            '아직 책로그가 없습니다.',
            style: TextStyle(
              color: ColorName.g7,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
