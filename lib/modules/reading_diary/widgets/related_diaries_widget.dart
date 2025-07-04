import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/related_diary_sort.dart';
import '../viewmodels/related_diaries_viewmodel.dart';

class RelatedDiariesWidget extends ConsumerWidget {
  const RelatedDiariesWidget({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final postsState = ref.watch(relatedDiariesViewModelProvider(bookId));
    final sort = ref.watch(relatedDiarySortStateProvider);

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '관련 독서일기',
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () => ref
                          .read(relatedDiarySortStateProvider.notifier)
                          .toggle(),
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
                  '북스타 유저들이 공유한 관련 독서일기를 확인해 보세요',
                  style: textTheme.bodySmall,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          postsState.when(
            data: (state) {
              if (state.diaries.isEmpty) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text('관련 독서일기가 없습니다.'),
                    ),
                  ),
                );
              }
              return SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final post = state.diaries[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: post.firstImage.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            Container(color: Colors.grey[300]),
                        errorWidget: (context, url, error) => Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.error, color: Colors.white),
                        ),
                      ),
                    );
                  },
                  childCount: state.diaries.length,
                ),
              );
            },
            loading: () => const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator())),
            error: (error, stack) => const SliverToBoxAdapter(
                child: Center(child: Text('게시물을 불러오는 중 오류가 발생했습니다.'))),
          ),
          if (postsState.valueOrNull?.hasNext == true)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
        ],
      ),
    );
  }
}
