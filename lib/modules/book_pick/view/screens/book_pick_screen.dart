import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../model/search_book_response.dart';
import '../../state/book_pick_state.dart';
import '../../view_model/book_pick_view_model.dart';
import '../widgets/book_cover_grid_view.dart';
import '../widgets/book_search_result_card.dart';

class BookPickScreen extends ConsumerStatefulWidget {
  const BookPickScreen({super.key});

  @override
  ConsumerState<BookPickScreen> createState() => _BookPickScreenState();
}


class _BookPickScreenState extends ConsumerState<BookPickScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }


  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 300) {
      ref.read(bookPickViewModelProvider.notifier).fetchNextPage();
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
    final bookPickState = ref.watch(bookPickViewModelProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15.0,
      children: [
        Text('내가 PICK한 책을 확인해 보세요', style: AppTexts.b1),
        SearchTextField(
          hintText: '찾고 싶은 책픽을 검색해 보세요',
          hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
          suffixIcon: Assets.images.icSearchUncolored3x.image(scale: 3),
          onTap: () => context.push('/book-pick/search'),
          readOnly: true,
        ),
        Expanded(
          child: bookPickState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () {
              final showSearchResults = bookPickState.maybeWhen(
                data: (data) => data.books.isNotEmpty,
                orElse: () => false,
              );
              return showSearchResults ?  BookCoverGridView<BookPickState, SearchBookResponse>(
                asyncValue: bookPickState,
                itemBuilder: (book) => BookSearchResultCard(book: book),
                listBuilder: (BookPickState data) => data.books,
                hasNext: bookPickState.asData?.value.hasNext ?? false,
                crossAxisCount: 3,
              ) : const SizedBox.shrink();
            },
          )
        ),
      ],
    );
  }
}
