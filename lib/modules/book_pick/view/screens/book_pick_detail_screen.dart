import 'package:book/common/components/grid/async_Image_grid_view.dart';
import 'package:book/modules/book/view_model/book_view_model.dart';
import 'package:book/modules/reading_diary/model/related_diary_thumbnail.dart';
import 'package:book/modules/reading_diary/view_model/related_diary_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../reading_diary/model/related_diary_sort.dart';
import '../../../reading_diary/view_model/related_diaries_view_model.dart';
import '../widgets/book_result_info.dart';

class BookPickDetailScreen extends ConsumerStatefulWidget {
  const BookPickDetailScreen({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  ConsumerState<BookPickDetailScreen> createState() =>
      _BookPickDetailScreenState();
}

class _BookPickDetailScreenState extends ConsumerState<BookPickDetailScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  DateTime? _lastBottomReachedTime;

  @override
  void initState() {
    super.initState();
    _setupScrollListener();
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent * 0.8 &&
          !_isLoadingMore) {
        _onBottomReached();
      }
    });
  }

  Future<void> _onBottomReached() async {
    final now = DateTime.now();
    // 디바운싱: 마지막 호출로부터 2초가 지나지 않았으면 무시
    if (_lastBottomReachedTime != null &&
        now.difference(_lastBottomReachedTime!).inSeconds < 2) {
      return;
    }
    // 이미 로딩 중이면 무시
    if (_isLoadingMore) {
      return;
    }
    _lastBottomReachedTime = now;
    _isLoadingMore = true;
    // 실제 로딩 로직 실행
    await ref
        .read(relatedDiariesViewModelProvider(widget.bookId).notifier)
        .refreshState();
    _isLoadingMore = false;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookAsync = ref.watch(bookViewModelProvider(widget.bookId));
    final relatedDiariesAsync =
        ref.watch(relatedDiariesViewModelProvider(widget.bookId));
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
          child: AppBar(
            title: Text('책픽', style: AppTexts.b5),
            leading: const BackButton(),
          ),
        ),
        body: bookAsync.when(
          data: (book) => relatedDiariesAsync.when(
            data: (relatedDiaries) =>
                CustomScrollView(controller: _scrollController, slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSearchBook(
                      onTap: () => context.go('/book-pick/search'),
                    ),
                    SizedBox(height: 24),
                    BookResultInfo(
                      book: book.detail,
                      onItemTap: () {
                        context.go(
                            '/book-pick/search/detail/${book.detail.id}/overview');
                      },
                    ),
                    _buildRelationDiary(
                      list: relatedDiaries.thumbnails,
                      hasNext: relatedDiaries.hasNext,
                      currentSort: relatedDiaries.sort,
                      onToggle: () async {
                        ref
                            .read(relatedDiariesViewModelProvider(widget.bookId)
                                .notifier)
                            .toggleSort();
                      },
                      onItemTap: (index) {
                        context.push('/book-log/related-feed/${widget.bookId}',
                            extra: {'index': index});
                      },
                    ),
                  ],
                ),
              )
            ]),
            error: _error("관련 게시물 정보를 불러올 수 없습니다."),
            loading: _loading,
          ),
          error: _error("북 상세 정보를 불러올 수 없습니다."),
          loading: _loading,
        ));
  }

  Widget _buildSearchBook({required VoidCallback onTap}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text('책 찾기', style: AppTexts.h4.copyWith(color: ColorName.w1)),
            SizedBox(
              height: 16,
            ),
            SearchTextField(
              hintText: '읽고 싶은 책픽을 검색해 보세요',
              hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
              suffixIcon: Assets.images.icSearchUncolored3x.image(scale: 3),
              onTap: onTap,
              readOnly: true,
            ),
          ],
        ),
      );

  Widget _buildRelationDiary(
          {required List<RelatedDiaryThumbnail> list,
          required bool hasNext,
          required RelatedDiarySort currentSort,
          required Function() onToggle,
          required Function(int) onItemTap}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("관련 게시물", style: AppTexts.b3.copyWith(color: ColorName.w1)),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "북스타 유저들이 공유한 관련 게시물을 확인해 보세요",
                  style: AppTexts.b10.copyWith(color: ColorName.g2),
                ),
                GestureDetector(
                  onTap: onToggle,
                  child: Row(
                    children: [
                      Text(
                        currentSort == RelatedDiarySort.LATEST ? '최신순' : '인기순',
                        style: AppTexts.b10.copyWith(color: ColorName.g3),
                      ),
                      Assets.icons.icArrowUpDown.svg(),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            AsyncImageGridView<RelatedDiaryState, RelatedDiaryThumbnail>(
              asyncValue: AsyncValue.data(RelatedDiaryState(thumbnails: list)),
              getItems: (state) => state.thumbnails,
              getImageUrl: (diary) => diary.firstImage.imageUrl,
              hasNext: hasNext,
              onTap: onItemTap,
              emptyText: '관련 독서일기가 없습니다.',
              errorText: '게시물을 불러올 수 없습니다.',
            ),
          ],
        ),
      );

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
