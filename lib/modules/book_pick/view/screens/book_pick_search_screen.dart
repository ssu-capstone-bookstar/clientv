import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../model/search_history_response.dart';
import '../../model/search_book_response.dart';
import '../../model/search_state.dart';
import '../../view_model/search_history_view_model.dart';
import '../../view_model/search_view_model.dart';
import '../widgets/book_cover_grid_view.dart';
import '../widgets/book_history_list_view.dart';
import '../widgets/book_search_result_card.dart';

class BookPickSearchScreen extends ConsumerStatefulWidget {
  const BookPickSearchScreen({
    super.key,
    this.from,
  });

  final String? from;

  @override
  ConsumerState<BookPickSearchScreen> createState() => _BookPickSearchScreenState();
}

class _BookPickSearchScreenState extends ConsumerState<BookPickSearchScreen> {
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
    ref.listen<AsyncValue<SearchState>>(searchViewModelProvider, (previous, _) {
      if (previous is AsyncLoading) {
        ref.read(searchHistoryViewModelProvider.notifier).refresh();
      }
    });

    final searchState = ref.watch(searchViewModelProvider);
    final isFromChallenge = widget.from == 'challenge';

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
        child: AppBar(
          title: Text(
            isFromChallenge ? '리딩 챌린지' : '책픽',
            style: AppTexts.b5,
          ),
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
              isFromChallenge ? '새롭게 읽은 책을 찾아보세요' : '책 찾기',
              style: AppTexts.h4,
            ),
            SearchTextField(
              controller: _textController,
              hintText: isFromChallenge ? '내가 읽은 책을 검색해 보세요' : '읽고 싶은 책을 검색해 보세요',
              hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
              suffixIcon: _textController.text.isNotEmpty
                  ? Assets.images.icSearchColored3x.image(scale: 3)
                  : Assets.images.icSearchUncolored3x.image(scale: 3),
              onSubmitted: _onSearchSubmitted,
            ),
            Expanded(
              child: searchState.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () {
                  final showSearchResults = searchState.maybeWhen(
                    data: (data) => data.books.isNotEmpty && data.query == _textController.text,
                    orElse: () => false,
                  );
                  return showSearchResults ? _buildSearchResults() : _buildSearchHistory();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchHistory() {
    final historyState = ref.watch(searchHistoryViewModelProvider);

    return BookHistoryListView<List<SearchHistoryResponse>, SearchHistoryResponse>(
      asyncValue: historyState.map(
        data: (d) => AsyncValue.data(d.value.data),
        error: (e) => AsyncValue.data([]),
        loading: (_) => const AsyncValue.loading(),
      ),
      listBuilder: (List<SearchHistoryResponse> histories) => histories,
      itemBuilder: (history) => ListTile(
        title: Text(history.queries),
        trailing: GestureDetector(
          child: Icon(Icons.clear),
          onTap: () => ref.read(searchHistoryViewModelProvider.notifier).removeHistory(history.queries),
        ),
      ),
      onTap: (history) {
        final query = history.queries;
        _textController.text = query;
        _onSearchSubmitted(query);
      },
    );
  }

  Widget _buildSearchResults() {
    final searchState = ref.watch(searchViewModelProvider);

    return BookCoverGridView<SearchState, SearchBookResponse>(
      asyncValue: searchState,
      itemBuilder: (book) => BookSearchResultCard(book: book, from: widget.from),
      listBuilder: (SearchState data) => data.books,
      hasNext: searchState.asData?.value.hasNext ?? false,
      scrollController: _scrollController,
      crossAxisCount: 3,
    );
  }
}
