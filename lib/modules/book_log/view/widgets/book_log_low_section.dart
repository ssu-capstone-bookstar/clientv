import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/common/components/image_grid.dart';
import '../../view_model/book_log_view_model.dart';
import 'package:book/gen/colors.gen.dart';

class BookLogLowSection extends ConsumerWidget {
  final int memberId;
  const BookLogLowSection({super.key, required this.memberId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diariesAsync = ref.watch(bookLogDiariesProvider(memberId));
    return diariesAsync.when(
      loading: () =>
          const Expanded(child: Center(child: CircularProgressIndicator())),
      error: (e, st) =>
          const Expanded(child: Center(child: Text('책로그를 불러올 수 없습니다.'))),
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
      },
    );
  }
}
