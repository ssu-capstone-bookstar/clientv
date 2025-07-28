import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book/model/book_overview_response.dart';
import 'package:book/modules/reading_diary/view_model/related_diaries_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../view_model/book_overview_view_model.dart';

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
  double currentRating = 3.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
      ref
          .read(relatedDiariesViewModelProvider(widget.bookId).notifier)
          .fetchNextPage();
    }
  }

  void _updateRating(double rating) {
    setState(() {
      currentRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bookState = ref.watch(bookOverviewViewModelProvider(widget.bookId));

    return Scaffold(
        body: bookState.when(
      data: (book) {
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
                      ..._buildBackgroundImage(book.cover),
                      // Content
                      Positioned(
                        top: AppSizes.APP_BAR_HEIGHT,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ..._buildAppBarTopSection(context, book)
                                ],
                              ),
                              _buildAppBarBottomSection(
                                  initialRating: currentRating,
                                  updateRating: _updateRating)
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Text(
            //       '본문 내용',
            //       style: TextStyle(fontSize: 18),
            //     ),
            //   ),
            // ),
            // // SliverToBoxAdapter(
            // //   child: Padding(
            // //     padding: const EdgeInsets.symmetric(horizontal: 16),
            // //     child: BookInfoWidget(book: book),
            // //   ),
            // // ),
            // // RelatedDiariesWidget(bookId: widget.bookId),
          ],
        );
      },
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
      BuildContext context, BookOverviewResponse book) {
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
                  const SizedBox(height: 4),
                  Assets.icons.icStar.svg(width: 12, height: 12),
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
              // TODO: 좋아요 버튼
              Assets.icons.icHeart.svg(width: 24, height: 24)
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
              Text(
                book.author,
                style: AppTexts.b11.copyWith(color: ColorName.w3),
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
              Text(
                book.publisher,
                style: AppTexts.b11.copyWith(color: ColorName.w3),
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
    required double initialRating,
    required Function(double) updateRating,
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
                initialRating: initialRating,
                minRating: 0,
                itemCount: 5,
                itemSize: 25,
                itemPadding: EdgeInsets.symmetric(horizontal: 2),
                itemBuilder: (context, index) {
                  if (index >= initialRating.floor()) {
                    return Assets.icons.icRatingStar.svg(color: ColorName.g3);
                  }
                  return Assets.icons.icRatingStarFilled.svg();
                },
                onRatingUpdate: updateRating,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
