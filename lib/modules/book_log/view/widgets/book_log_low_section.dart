import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/grid/image_grid.dart';
import '../../../../common/theme/app_style.dart';
import '../../view_model/book_log_view_model.dart';
import '../../../../gen/colors.gen.dart';

class BookLogLowSection extends ConsumerWidget {
  final int memberId;
  const BookLogLowSection({super.key, required this.memberId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diariesAsync = ref.watch(bookLogDiariesProvider(memberId));
    return diariesAsync.when(
      loading: () =>
          const Expanded(child: Center(child: CircularProgressIndicator())),
      error: (e, st) => Expanded(
          child: Center(
              child: Text('책로그를 불러올 수 없습니다.',
                  style: AppTexts.b8.copyWith(color: ColorName.g3)))),
      data: (diaries) {
        final imageUrls = diaries
            .map((d) => d.firstImage.imageUrl)
            .where((url) => url.isNotEmpty)
            .toList();
        return Expanded(
          child: ImageGrid(
            imageUrls: imageUrls,
            crossAxisCount: 3,
            spacing: 0,
            emptyWidget: Center(
              child: Text(
                '아직 책로그가 없습니다.',
                style: AppTexts.b8.copyWith(color: ColorName.g3),
              ),
            ),
          ),
        );
      },
    );
  }
}
