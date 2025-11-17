import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/components/custom_grid_view.dart';
import 'package:bookstar/common/components/custom_list_view.dart';
import 'package:bookstar/common/components/text_field/search_text_field.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/book_pick/model/search_book_response.dart';
import 'package:bookstar/modules/book_pick/view/widgets/book_search_result_card.dart';
import 'package:bookstar/modules/book_pick/view_model/search_book_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectBookDialog extends BaseScreen {
  const SelectBookDialog({
    super.key,
  });

  @override
  BaseScreenState<BaseScreen> createState() => _SelectBookDialogState();
}

class _SelectBookDialogState extends BaseScreenState<SelectBookDialog> {
  @override
  bool enableRefreshIndicator() => false;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(searchBookViewModelProvider.notifier).initState();
    });
  }

  @override
  void onScrollDown(double offset) async {
    await ref.read(searchBookViewModelProvider.notifier).fetchNextPage();
  }

  void _onSearchSubmitted(String value) {
    if (value.isNotEmpty) {
      ref.read(searchBookViewModelProvider.notifier).searchBooks(value);
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('책로그'),
      leading: IconButton(
        icon: const BackButton(),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    final state = ref.watch(searchBookViewModelProvider);
    final notifier = ref.read(searchBookViewModelProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBook(
            textController: _textController,
            focusNode: focusNode,
            onTapSuffixIcon: () => _onSearchSubmitted(_textController.text),
          ),
          Expanded(
              child: state.when(
            data: (data) {
              final visibleSearchHistory =
                  data.books.isEmpty && data.query.isEmpty;

              return visibleSearchHistory
                  ? _buildSearchHistory(
                      searchHistories: data.searchHistories,
                      onRemoveItem: (query) async {
                        await notifier.removeHistory(query);
                      },
                      onSearchItem: (query) {
                        _textController.text = query;
                        _onSearchSubmitted(query);
                      },
                    )
                  : _buildSearchResults(
                      books: data.books,
                      hasNext: data.hasNext,
                      scrollController: scrollController,
                      onTapItem: (book) {
                        context.pop(book.bookId);
                      },
                    );
            },
            loading: loading,
            error: error("북 검색 정보를 불러올 수 없습니다."),
          )),
        ],
      ),
    );
  }

  Widget _buildSearchBook({
    required TextEditingController textController,
    FocusNode? focusNode,
    required Function() onTapSuffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextField(
          controller: textController,
          focusNode: focusNode,
          hintText: '새롭게 읽을 책을 찾아보세요',
          hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
          suffixIcon: textController.text.isNotEmpty
              ? Assets.images.icSearchColored3x.image(scale: 3)
              : Assets.images.icSearchUncolored3x.image(scale: 3),
          onTapSuffixIcon: onTapSuffixIcon,
        ),
      ],
    );
  }

  Widget _buildSearchHistory(
      {required List<String> searchHistories,
      required Function(String) onRemoveItem,
      required Function(String) onSearchItem}) {
    return CustomListView(
        emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
        emptyText: '어떤 도서를 찾고 계신가요?',
        isEmpty: searchHistories.isEmpty,
        itemCount: searchHistories.length,
        itemBuilder: (context, index) {
          final query = searchHistories[index];
          return GestureDetector(
            onTap: () => onSearchItem(query),
            child: ListTile(
              title: Text(query),
              trailing: GestureDetector(
                child: Icon(Icons.clear),
                onTap: () => onRemoveItem(query),
              ),
            ),
          );
        });
  }

  Widget _buildSearchResults(
      {required List<SearchBookResponse> books,
      required bool hasNext,
      required ScrollController scrollController,
      required Function(SearchBookResponse) onTapItem}) {
    return CustomGridView(
      emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
      emptyText: '검색 결과가 없습니다.',
      isEmpty: books.isEmpty,
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return BookSearchResultCard(
          book: book,
          onTap: () => onTapItem(book),
        );
      },
      hasNext: hasNext,
      scrollController: scrollController,
    );
  }
}
