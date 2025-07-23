import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../common/components/grid/image_grid.dart';
import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/colors.gen.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../../book/view/widgets/book_info_widget.dart';
import '../../../book/view_model/book_overview_view_model.dart';
import '../../../book/repository/book_repository.dart';
import '../../../book_pick/model/search_book_response.dart';
import '../../../../common/models/cursor_page_response.dart';
import '../../../reading_diary/model/diary_thumbnail_response.dart';

class ReadingChallengeDetailScreen extends ConsumerWidget {
  const ReadingChallengeDetailScreen({
    super.key,
    required this.bookId,
    required this.challengeId,
    required this.totalPages,
  });

  final int bookId;
  final int challengeId;
  final int totalPages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookState = ref.watch(bookOverviewViewModelProvider(bookId));
    final authState = ref.watch(authViewModelProvider);

    final int? memberId = authState.when(
      data: (data) => (data is AuthSuccess) ? data.memberId : null,
      loading: () => null,
      error: (e, st) => null,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('리딩 챌린지'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: bookState.when(
          data: (book) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookInfoWidget(book: book),
                _buildPointsSection(),
                if (memberId != null) _buildDiarySection(ref, bookId),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('오류가 발생했습니다: $error')),
        ),
      ),
      bottomNavigationBar: bookState.maybeWhen(
        data: (book) => Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: CtaButtonL1(
            text: '리딩 챌린지 진행하기',
            onPressed: () {
              final bookForRoute = SearchBookResponse(
                bookId: book.id,
                title: book.title,
                author: book.author,
                bookCover: book.cover,
                pubDate: book.publishedDate,
                publisher: book.publisher,
              );
              context.push(
                '/reading-challenge/start-and-end',
                extra: {
                  'book': bookForRoute,
                  'totalPages': totalPages,
                  'challengeId': challengeId,
                },
              );
            },
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildPointsSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorName.b2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('이 책을 읽고 받은 포인트',
              style: AppTexts.b7.copyWith(color: ColorName.g2)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('300', style: AppTexts.h1.copyWith(color: ColorName.p1)),
                  const SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text('포인트',
                        style: AppTexts.b6.copyWith(color: ColorName.p1)),
                  ),
                ],
              ),
              Text(
                '총 216 P / 읽은 페이지 150 P',
                style: AppTexts.b9.copyWith(color: ColorName.g3),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDiarySection(WidgetRef ref, int bookId) {
    final diariesAsync = ref.watch(_relatedDiaryThumbnailsProvider(bookId));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('관련 독서 다이어리 썸네일', style: AppTexts.b5),
          const SizedBox(height: 8),
          Text('이 책과 관련된 독서 다이어리 썸네일을 확인해 보세요',
              style: AppTexts.b8.copyWith(color: ColorName.g3)),
          const SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: diariesAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) =>
                  Center(child: Text('독서 다이어리를 불러오는 중 오류가 발생했습니다: $error')),
              data: (page) {
                final imageUrls = (page.data)
                    .map((e) => e.firstImage.imageUrl)
                    .where((url) => url.isNotEmpty)
                    .toList();
                return ImageGrid(
                  imageUrls: imageUrls,
                  crossAxisCount: 3,
                  emptyWidget: const Center(
                    child: Text(
                      '관련 독서 다이어리가 없습니다.',
                      style: TextStyle(color: ColorName.g3),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

final _relatedDiaryThumbnailsProvider =
    FutureProvider.family<CursorPageResponse<DiaryThumbnail>, int>(
        (ref, bookId) async {
  final repo = ref.watch(bookRepositoryProvider);
  final response = await repo.getRelatedLatestDiaryThumbnailsByBook(bookId);
  return response.data;
});
