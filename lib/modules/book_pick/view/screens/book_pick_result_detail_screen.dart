import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/form/decimal_rating_bar.dart';
import '../../../../common/components/header/section_header.dart';
import '../../../../common/components/grid/async_Image_grid_view.dart';
import '../../../../common/extension/string_extensions.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../common/utils/overlay_utils.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../reading_diary/model/related_diary_sort.dart';
import '../../../reading_diary/view_model/related_diaries_view_model.dart';
import '../../../reading_diary/view_model/related_diary_state.dart';
import '../../../reading_diary/model/related_diary_thumbnail.dart';
import '../../model/search_book_response.dart';
import '../../view_model/search_view_model.dart';
import '../widgets/book_cover_image.dart';
import '../widgets/book_labeled_text.dart';

class BookPickResultDetailScreen extends ConsumerStatefulWidget {
  const BookPickResultDetailScreen({
    super.key,
    required this.book,
  });

  final SearchBookResponse book;

  @override
  ConsumerState<BookPickResultDetailScreen> createState() => _BookPickResultDetailScreenState();
}

class _BookPickResultDetailScreenState extends ConsumerState<BookPickResultDetailScreen> {
  final ScrollController _scrollController = ScrollController();

  double _rating = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 300) {
      ref.read(searchViewModelProvider.notifier).fetchNextPage();
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
    return Scaffold(
      body: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 50,
                children: [
                  _buildOverviewSection(),
                  // _buildRelatedVideoSection(),
                  _buildRelatedDiariesSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewSection() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = width * 1.5;

        return SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              SizedBox(
                width: width,
                height: height,
                child: BookCoverImage(imageUrl: widget.book.bookCover, tag: '${widget.book.bookId}'),
              ),
              OverlayUtils.fullBlackOverlay(),
              Column(
                children: [
                  _buildBookPickResultDetailAppBar(),
                  Padding(
                    padding: AppPaddings.SCREEN_BODY_HORIZONTAL_PADDING,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12.0,
                      children: [
                        _buildBookPickResultDetailHeader(),
                        _buildBookInfoSection(),
                      ],
                    ),
                  ),
                ],
              ),
              _buildRatingBoxSection(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBookPickResultDetailAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
      child: AppBar(
        leading: const BackButton(color: ColorName.w1),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget _buildBookPickResultDetailHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 3.0,
          children: [
            Text(
              widget.book.title.truncate(maxLength: 12),
              style: AppTexts.h3.copyWith(overflow: TextOverflow.ellipsis),
              maxLines: 2,
            ),
            Assets.icons.icRatingStarColored.svg(width: 12.0, height: 12.0),
            Text(
              '4.5',
              style: AppTexts.b8.copyWith(color: ColorName.p3),
              maxLines: 2,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: true ? Assets.icons.icHeartColored.svg() : Assets.icons.icHeartUncolored.svg(),
        ),
      ],
    );
  }

  Widget _buildBookInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookLabeledText(
          label: '작가',
          value: widget.book.author,
          labelStyle: AppTexts.b11.copyWith(color: ColorName.g2),
          valueStyle: AppTexts.b11.copyWith(color: ColorName.w3),
        ),
        BookLabeledText(
          label: '출판사',
          value: widget.book.publisher,
          labelStyle: AppTexts.b11.copyWith(color: ColorName.g2),
          valueStyle: AppTexts.b11.copyWith(color: ColorName.w3),
        ),
        BookLabeledText(
          label: '출판연도',
          value: widget.book.pubDate,
          labelStyle: AppTexts.b11.copyWith(color: ColorName.g2),
          valueStyle: AppTexts.b11.copyWith(color: ColorName.w3),
        ),
      ],
    );
  }

  Widget _buildRatingBoxSection() {
    return Positioned(
      left: 16.0,
      right: 16.0,
      bottom: 30.0,
      child: Container(
        padding: AppPaddings.RATING_BOX_PADDING,
        height: 64,
        decoration: BoxDecoration(
          color: ColorName.dim1,
          borderRadius: BorderRadius.circular(80),
          border: Border.all(width: 1.3, color: ColorName.p2, strokeAlign: BorderSide.strokeAlignOutside),
          boxShadow: const [BoxShadow(color: ColorName.dim1)],
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.68, sigmaY: 4.68),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        children: [
                          '내 별점 후기'.colored(baseStyle: AppTexts.b7),
                          if (_rating > 0.0) ' $_rating'.colored(baseStyle: AppTexts.b7, color: ColorName.p3),
                        ],
                      ),
                    ),
                    Text('이 책이 얼마나 재미있었나요?', style: AppTexts.b10.copyWith(color: ColorName.g2)),
                  ],
                ),
                DecimalRatingBar(
                  rating: _rating,
                  onRatingChanged: (value) {
                    setState(() {
                      _rating = value;
                    });
                  },
                  fullIconBuilder: (fill) => Stack(
                    children: [
                      Assets.icons.icRatingStarUncolored.svg(),
                      ClipRect(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          widthFactor: fill.clamp(0.0, 1.0),
                          child: Assets.icons.icRatingStarColored.svg(
                            colorFilter: const ColorFilter.mode(
                              ColorName.p3,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  emptyIconBuilder: () => Assets.icons.icRatingStarUncolored.svg(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRelatedVideoSection() {
    return const SizedBox.shrink();
  }

  Widget _buildRelatedDiariesSection() {
    return Column(
      spacing: 15.0,
      children: [
        SectionHeader(
          heading: '관련 게시물',
          description: '북스타 유저들이 공유한 관련 게시물을 확인해 보세요',
          descriptionStyle: AppTexts.b10.copyWith(color: ColorName.g2),
          trailing: GestureDetector(
            onTap: () => ref.read(relatedDiarySortStateProvider.notifier).toggle(),
            child: Row(
              children: [
                Text(
                  ref.watch(relatedDiarySortStateProvider.select((value) => value == RelatedDiarySort.LATEST))
                      ? '최신순'
                      : '인기순',
                  style: AppTexts.b10.copyWith(color: ColorName.g3),
                ),
                Assets.icons.icArrowUpDown.svg(),
              ],
            ),
          ),
        ),
        AsyncImageGridView<RelatedDiaryState, RelatedDiaryThumbnail>(
          asyncValue: ref.watch(relatedDiariesViewModelProvider(widget.book.bookId)),
          getItems: (state) => state.diaries,
          getImageUrl: (diary) => diary.firstImage.imageUrl,
          hasNext: ref.watch(relatedDiariesViewModelProvider(widget.book.bookId)).asData?.value.hasNext ?? false,
          emptyText: '관련 독서일기가 없습니다.',
          errorText: '게시물을 불러올 수 없습니다.',
        ),
      ],
    );
  }
}
