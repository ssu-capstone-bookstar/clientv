import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../common/components/grid/async_Image_grid_view.dart';
import '../../../../common/components/header/section_header.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../../book/view/widgets/book_info_widget.dart';
import '../../../book/view_model/book_overview_view_model.dart';
import '../../../book_pick/model/search_book_response.dart';
import '../../../../gen/assets.gen.dart';
import '../../view_model/reading_challenge_view_model.dart';
import '../../model/my_diary_sort.dart';
import '../../model/my_diary_thumbnail.dart';
import '../../model/my_diary_state.dart';

class ReadingChallengeDetailScreen extends ConsumerStatefulWidget {
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
  ConsumerState<ReadingChallengeDetailScreen> createState() =>
      _ReadingChallengeDetailScreenState();
}

class _ReadingChallengeDetailScreenState
    extends ConsumerState<ReadingChallengeDetailScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
      // TODO: Implement pagination if needed
      // ref.read(relatedDiaryThumbnailsViewModelProvider.notifier).fetchNextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookState = ref.watch(bookOverviewViewModelProvider(widget.bookId));
    final authState = ref.watch(authViewModelProvider);

    final int? memberId = authState.when(
      data: (data) => (data is AuthSuccess) ? data.memberId : null,
      loading: () => null,
      error: (e, st) => null,
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
        child: AppBar(
          title: Text('리딩 챌린지', style: AppTexts.b5),
          leading: const BackButton(),
        ),
      ),
      body: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  bookState.when(
                    data: (book) => BookInfoWidget(book: book),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) =>
                        Center(child: Text('오류가 발생했습니다: $error')),
                  ),
                  const SizedBox(height: 10),
                  _buildPointsSection(),
                  _buildCalendarSection(),
                  const SizedBox(height: 28),
                  if (memberId != null) _buildDiarySection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bookState.maybeWhen(
        data: (book) => Padding(
          padding: const EdgeInsets.fromLTRB(14, 0, 14, 54),
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
                  'totalPages': widget.totalPages,
                  'challengeId': widget.challengeId,
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
    return Padding(
      padding: AppPaddings.SCREEN_BODY_PADDING,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('이 책을 읽고 받은 포인트',
                  style: AppTexts.b10.copyWith(color: ColorName.g2)),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    decoration: BoxDecoration(
                      color: ColorName.dim3,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('300',
                            style: AppTexts.h2.copyWith(color: ColorName.p1)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 3),
                  Text('포인트', style: AppTexts.b6.copyWith(color: ColorName.p1)),
                ],
              ),
            ],
          ),
          RichText(
            textAlign: TextAlign.right,
            text: TextSpan(
              style: AppTexts.b11.copyWith(color: ColorName.g2),
              children: [
                const TextSpan(text: '총 '),
                TextSpan(
                  text: '216 P',
                  style: AppTexts.b11.copyWith(color: ColorName.w1),
                ),
                const TextSpan(text: '\n읽은 페이지 '),
                TextSpan(
                  text: '150 P',
                  style: AppTexts.b11.copyWith(color: ColorName.w1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarSection() {
    return Padding(
      padding: AppPaddings.SCREEN_BODY_PADDING,
      child: Container(
        decoration: BoxDecoration(
          color: ColorName.g7,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //TODO: 달력 컴포넌트 추가
          ],
        ),
      ),
    );
  }

  Widget _buildDiarySection() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          SectionHeader(
            heading: '내가 쓴 독서 다이어리',
            description: '해당 도서를 읽고 쓴 독서 다이어리를 확인해 보세요',
            descriptionStyle: AppTexts.b10.copyWith(color: ColorName.g2),
            trailing: GestureDetector(
              onTap: () => ref.read(myDiarySortStateProvider.notifier).toggle(),
              child: Row(
                children: [
                  Text(
                    ref.watch(myDiarySortStateProvider
                            .select((value) => value == MyDiarySort.LATEST))
                        ? '최신순'
                        : '인기순',
                    style: AppTexts.b10.copyWith(color: ColorName.g3),
                  ),
                  Assets.icons.icArrowUpDown.svg(),
                ],
              ),
            ),
          ),
          AsyncImageGridView<MyDiaryState, MyDiaryThumbnail>(
            asyncValue: ref.watch(myDiariesViewModelProvider(widget.bookId)),
            getItems: (state) => state.diaries,
            getImageUrl: (diary) => diary.firstImage.imageUrl,
            hasNext: ref
                    .watch(myDiariesViewModelProvider(widget.bookId))
                    .asData
                    ?.value
                    .hasNext ??
                false,
            emptyText: '내가 쓴 독서일기가 없습니다.',
            errorText: '게시물을 불러올 수 없습니다.',
          ),
        ],
      ),
    );
  }
}
