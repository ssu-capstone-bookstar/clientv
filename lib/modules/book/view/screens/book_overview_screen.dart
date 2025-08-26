import 'package:book/common/components/grid/async_Image_grid_view.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book/model/book_overview_response.dart';
import 'package:book/modules/reading_diary/model/related_diary_sort.dart';
import 'package:book/modules/reading_diary/model/related_diary_thumbnail.dart';
import 'package:book/modules/reading_diary/view_model/related_diaries_view_model.dart';
import 'package:book/modules/reading_diary/view_model/related_diary_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../view_model/book_view_model.dart';

class BookOverviewScreen extends ConsumerStatefulWidget {
  const BookOverviewScreen({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  ConsumerState<BookOverviewScreen> createState() => _BookOverviewScreenState();
}

class _BookOverviewScreenState extends ConsumerState<BookOverviewScreen> {
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

  Future<void> _updateStar(double rating) async {
    await ref
        .read(bookViewModelProvider(widget.bookId).notifier)
        .handleOverviewStar(rating);
  }

  void _onLike() {
    ref
        .read(bookViewModelProvider(widget.bookId).notifier)
        .handleOverviewLike();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookAsync = ref.watch(bookViewModelProvider(widget.bookId));
    final currentStar = bookAsync.valueOrNull?.overview.star ?? 0;
    final relatedDiariesAsync =
        ref.watch(relatedDiariesViewModelProvider(widget.bookId));

    return Scaffold(
        body: bookAsync.when(
      data: (bookOverview) => relatedDiariesAsync.when(
        data: (relatedDiaries) {
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 516,
                automaticallyImplyLeading: false,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        ..._buildBackgroundImage(bookOverview.overview.cover),
                        Positioned(
                          top: AppSizes.APP_BAR_HEIGHT,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ..._buildAppBarTopSection(
                                      context, bookOverview.overview,
                                      onLike: _onLike)
                                ],
                              ),

                              _buildAppBarBottomSection(
                                  initialStar: currentStar,
                                  updateStar: _updateStar)
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 60,
              )),
              SliverToBoxAdapter(
                child: _buildRelationDiary(
                  list: relatedDiaries.thumbnails,
                  hasNext: relatedDiaries.hasNext,
                  currentSort: relatedDiaries.sort,
                  onToggle: () {
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
              )
            ],
          );
        },
        loading: _loading,
        error: _error("관련 게시물 정보를 불러올 수 없습니다."),
      ),
      loading: _loading,
      error: _error("북 상세 정보를 불러올 수 없습니다."),
    ));
  }

  List<Widget> _buildBackgroundImage(String imageUrl) {
    return [
      // Background image
      CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
      ),
      Container(
        decoration: BoxDecoration(
          color: ColorName.b1.withOpacity(0.7),
        ),
      )
    ];
  }

  List<Widget> _buildAppBarTopSection(
      BuildContext context, BookOverviewResponse book,
      {required Function() onLike}) {
    return [
      BackButton(
        color: ColorName.w1,
        onPressed: () {
          context.pop();
        },
      ),
      SizedBox(height: 8),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.6),
                    child: Text(
                      book.title,
                      style: AppTexts.h3.copyWith(color: ColorName.w1),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Assets.icons.icStar.svg(width: 14, height: 14),
                  const SizedBox(width: 3),
                  Text(
                    book.star.toStringAsFixed(1),
                    style: AppTexts.b8.copyWith(
                      color: ColorName.p2,
                      height: 1,
                    ),
                  ),
                ],
              ),
              InkWell(
                  onTap: onLike,
                  child: book.liked
                      ? Assets.icons.icHeartFilled.svg(width: 24, height: 24)
                      : Assets.icons.icHeart.svg(width: 24, height: 24))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "작가",
                style: AppTexts.b11.copyWith(color: ColorName.g2),
              ),
              SizedBox(
                width: 6,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8),
                child: Text(
                  book.author,
                  style: AppTexts.b11.copyWith(color: ColorName.w3),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "출판사",
                style: AppTexts.b11.copyWith(color: ColorName.g2),
              ),
              SizedBox(
                width: 6,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8),
                child: Text(
                  book.publisher,
                  style: AppTexts.b11.copyWith(color: ColorName.w3),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "출판연도",
                style: AppTexts.b11.copyWith(color: ColorName.g2),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                book.publishedDate,
                style: AppTexts.b11.copyWith(color: ColorName.w3),
              ),
            ],
          ),
        ]),
      ),
    ];
  }

  Widget _buildAppBarBottomSection({
    required double initialStar,
    required Function(double) updateStar,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Container(
        decoration: BoxDecoration(
          color: ColorName.dim1,
          borderRadius: BorderRadius.circular(78),
          border: Border.all(color: ColorName.p2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "내 별점 후기",
                    style: AppTexts.b7.copyWith(color: ColorName.w1),
                  ),
                  Text(
                    "이 책이 얼마나 재미있었나요?",
                    style: AppTexts.b10.copyWith(color: ColorName.g2),
                  ),
                ],
              ),
              RatingBar.builder(
                glowColor: Colors.transparent,
                initialRating: initialStar,
                minRating: 0,
                itemCount: 5,
                itemSize: 25,
                itemPadding: EdgeInsets.symmetric(horizontal: 2),
                itemBuilder: (context, index) {
                  if (index >= initialStar.floor()) {
                    return Assets.icons.icRatingStar.svg(color: ColorName.g3);
                  }
                  return Assets.icons.icRatingStarFilled.svg();
                },
                onRatingUpdate: updateStar,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRelationDiary(
          {required List<RelatedDiaryThumbnail> list,
          required bool hasNext,
          required RelatedDiarySort currentSort,
          required Function() onToggle,
          required Function(int) onItemTap}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
