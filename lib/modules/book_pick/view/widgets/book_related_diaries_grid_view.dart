import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../reading_diary/model/related_diary_sort.dart';
import '../../../reading_diary/view_model/related_diaries_view_model.dart';

class BookRelatedDiariesGridView extends ConsumerWidget {
  const BookRelatedDiariesGridView({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final postsState = ref.watch(relatedDiariesViewModelProvider(bookId));
    final sort = ref.watch(relatedDiarySortStateProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: postsState.when(
        data: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '관련 게시물',
                    style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => ref.read(relatedDiarySortStateProvider.notifier).toggle(),
                    child: Row(
                      children: [
                        Text(
                          sort == RelatedDiarySort.LATEST ? '최신순' : '인기순',
                          style: textTheme.bodySmall,
                        ),
                        const Icon(Icons.swap_vert, size: 16),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '북스타 유저들이 공유한 관련 게시물을 확인해 보세요',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              if (state.diaries.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Center(child: Text('관련 독서일기가 없습니다.')),
                )
              else
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.diaries.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    final post = state.diaries[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: post.firstImage.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(color: Colors.grey[300]),
                        errorWidget: (context, url, error) => Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.error, color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              if (state.hasNext)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(child: CircularProgressIndicator()),
                ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => const Center(child: Text('게시물을 불러오는 중 오류가 발생했습니다.')),
      ),
    );
  }
}
