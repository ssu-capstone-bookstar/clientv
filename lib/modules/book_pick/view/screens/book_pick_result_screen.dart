import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../book/view/widgets/book_info_widget.dart';
import '../../../book/view_model/book_overview_view_model.dart';
import '../../../reading_diary/view/widgets/related_diaries_widget.dart';
import '../../model/search_book_response.dart';
import '../../view_model/search_view_model.dart';
import '../widgets/book_related_diaries_grid_view.dart';
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
    final bookState = ref.watch(bookOverviewViewModelProvider(widget.book.bookId));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
        child: AppBar(
          title: Text('책픽', style: AppTexts.b5),
          leading: const BackButton(),
        ),
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            Text(
              '책 찾기',
              style: AppTexts.h4,
            ),
            SearchTextField(
              controller: _textController,
              hintText: '읽고 싶은 책을 검색해 보세요',
              hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
              suffixIcon: _textController.text.isNotEmpty
                  ? Assets.images.icSearchColored3x.image(scale: 3)
                  : Assets.images.icSearchUncolored3x.image(scale: 3),
              onSubmitted: _onSearchSubmitted,
            ),
            /// TODO: 작업중, 오버뷰 병합, 데이터 모델(별점, 카운트?)
            // BookInfoWidget(book: widget.book),
            BookResultInfo(book: widget.book),
            // RelatedDiariesWidget(bookId: widget.book.bookId),
            BookRelatedDiariesGridView(bookId: widget.book.bookId),
          ],
        ),
      ),
    );
  }
}
