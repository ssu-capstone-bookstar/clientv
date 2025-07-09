<<<<<<< HEAD:lib/modules/search/view/screens/search_detail_screen.dart
import 'package:book/common/theme/app_style.dart';
import 'package:book/modules/search/model/search_screen_type.dart';
=======
>>>>>>> c3338dc4b76bb63ac02d1cc607afe86f33bdb5eb:lib/modules/book_pick/view/screens/book_pick_search_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../model/search_state.dart';
import '../../view_model/search_history_view_model.dart';
import '../../view_model/search_view_model.dart';
import '../widgets/book_search_result_card.dart';
// import '../widgets/book_search_result_card.dart';

class SearchDetailScreen extends ConsumerStatefulWidget {
  const SearchDetailScreen({
    super.key,
    required this.type,
  });

  final SearchScreenType type;

  @override
  ConsumerState<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends ConsumerState<SearchDetailScreen> {
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

  String get _appBarTitle {
    switch (widget.type) {
      case SearchScreenType.bookPick:
        return '책픽';
      case SearchScreenType.readingChallengeNewBook:
        return '리딩 챌린지';
    }
  }

  String get _title {
    switch (widget.type) {
      case SearchScreenType.bookPick:
        return '어떤 도서를 찾고 계신가요?';
      case SearchScreenType.readingChallengeNewBook:
        return '새로운 챌린지 도서를 찾아보세요';
    }
  }

  String get _hintText {
    switch (widget.type) {
      case SearchScreenType.bookPick:
        return '읽고 싶은 책을 검색해 보세요';
      case SearchScreenType.readingChallengeNewBook:
        return '어떤 책으로 도전할까요?';
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<SearchState>>(searchViewModelProvider, (previous, _) {
      if (previous is AsyncLoading) {
        ref.read(searchHistoryViewModelProvider.notifier).refresh();
      }
    });

    final searchState = ref.watch(searchViewModelProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
        child: AppBar(
          title: Text(_appBarTitle, style: AppTexts.b5),
          leading: const BackButton(),
        ),
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
<<<<<<< HEAD:lib/modules/search/view/screens/search_detail_screen.dart
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 35,
          children: [
            Text(_title, style: AppTexts.h4),
=======
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('책 찾기', style: AppTexts.h4),
>>>>>>> c3338dc4b76bb63ac02d1cc607afe86f33bdb5eb:lib/modules/book_pick/view/screens/book_pick_search_screen.dart
            SearchTextField(
              controller: _textController,
              hintText: _hintText,
              hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
              suffixIcon: _textController.text.isNotEmpty
                  ? Assets.images.icSearchColored3x.image(scale: 3)
                  : Assets.images.icSearchUncolored3x.image(scale: 3),
              onSubmitted: _onSearchSubmitted,
            ),
            const SizedBox(height: 20),
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

    return historyState.when(
      data: (historyData) {
        final histories = historyData.data;

        if (histories == null || histories.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                Assets.icons.icBookpickSearchCharacter.svg(),
                Text(
                  '어떤 도서를 찾고 계신가요?',
                  style: AppTexts.b8.copyWith(color: ColorName.g3),
                ),
              ],
            ),
          );
        }

        return ListView.separated(
          itemCount: histories.length,
          itemBuilder: (context, index) {
            final history = histories[index];
            return ListTile(
              title: Text(history.queries),
              onTap: () {
                final query = history.queries;
                _textController.text = query;
                _onSearchSubmitted(query);
              },
              trailing: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  ref.read(searchHistoryViewModelProvider.notifier).removeHistory(history.queries);
                },
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 1),
        );
      },
      error: (error, stack) => const Center(child: Text('검색 기록을 불러오는데 실패했습니다.')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildSearchResults() {
    final searchState = ref.watch(searchViewModelProvider);

    return searchState.when(
      data: (data) {
        if (data.books.isEmpty && _textController.text.isNotEmpty) {
          return const Center(child: Text('검색 결과가 없습니다.'));
        }

        final books = data.books;
        final hasNext = data.hasNext;
        final rowCount = (books.length / 3).ceil();

        return ListView.separated(
          controller: _scrollController,
          itemCount: rowCount + (hasNext ? 1 : 0),
          itemBuilder: (context, rowIndex) {
            if (rowIndex == rowCount) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: CircularProgressIndicator(),
                ),
              );
            }

            final startIndex = rowIndex * 3;
            final List<Widget> rowItems = [];
            for (int i = 0; i < 3; i++) {
              final bookIndex = startIndex + i;
              if (bookIndex < books.length) {
                final book = books[bookIndex];
                rowItems.add(
                  Expanded(
                    child: BookSearchResultCard(
                      book: book,
                      onTap: (selectedBook) async {
                        switch (widget.type) {
                          case SearchScreenType.bookPick:
                            context.push(
                              '/book-pick/search/book-overview/${selectedBook.bookId}',
                            );
                            break;
                          case SearchScreenType.readingChallengeNewBook:
                            context.push(
                              '/reading-challenge/total-page',
                              extra: selectedBook,
                            );
                            break;
                        }
                      },
                    ),
                  ),
                );
              } else {
                rowItems.add(Expanded(child: Container()));
              }
              if (i < 2) {
                rowItems.add(const SizedBox(width: 16));
              }
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: rowItems,
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 30),
              child: Divider(
                thickness: 7,
                radius: AppBorders.DIVIDER_BORDER_RADIUS,
                color: AppColors.DIVIDER_COLOR,
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => const Center(child: Text('오류가 발생했습니다.')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
