import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/header/section_header.dart';
import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/components/grid/async_Image_grid_view.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../reading_diary/model/related_diary_sort.dart';
import '../../../reading_diary/view_model/related_diaries_view_model.dart';
import '../../../reading_diary/view_model/related_diary_state.dart';
import '../../../reading_diary/model/related_diary_thumbnail.dart';
import '../../model/search_book_response.dart';
import '../../view_model/search_view_model.dart';
import '../widgets/book_result_info.dart';

class BookPickResultScreen extends ConsumerStatefulWidget {
  const BookPickResultScreen({
    super.key,
    required this.book,
  });

  final SearchBookResponse book;

  @override
  ConsumerState<BookPickResultScreen> createState() => _BookPickResultScreenState();
}

class _BookPickResultScreenState extends ConsumerState<BookPickResultScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _textController.addListener(() {
      setState(() {});
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 300) {
      ref.read(searchViewModelProvider.notifier).fetchNextPage();
    }
  }

  void _onSearchSubmitted(String value) {
    if (value.isNotEmpty) {
      ref.read(searchViewModelProvider.notifier).searchBooks(value);
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBookPickResultAppBar(),
      body: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBookPickResultHeader(),
          _buildBookPickResultContent(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildBookPickResultAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
      child: AppBar(
        title: Text('책픽', style: AppTexts.b5),
        leading: const BackButton(),
      ),
    );
  }

  Widget _buildBookPickResultHeader() {
    return Padding(
      padding: AppPaddings.SCREEN_BODY_PADDING,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Text('책 찾기', style: AppTexts.h4),
          SearchTextField(
            controller: _textController,
            hintText: '읽고 싶은 책을 검색해 보세요',
            hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
            suffixIcon: _textController.text.isNotEmpty
                ? Assets.images.icSearchColored3x.image(scale: 3)
                : Assets.images.icSearchUncolored3x.image(scale: 3),
            onSubmitted: _onSearchSubmitted,
          ),
        ],
      ),
    );
  }

  Widget _buildBookPickResultContent() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            BookResultInfo(
              book: widget.book,
              onTap: () => context.push(
                '/book-pick/search/result/detail/${widget.book.bookId}',
                extra: widget.book,
              ),
            ),
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
        ),
      ),
    );
  }
}
