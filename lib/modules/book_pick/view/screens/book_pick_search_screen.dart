import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    this.from,
  });

  final String? from;

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
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
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
          children: [
            const SizedBox(height: 15),
            Text(
              isFromChallenge ? '새롭게 읽은 책을 찾아보세요' : '책 찾기',
              style: AppTexts.h4,
            ),
            const SizedBox(height: 15),
            SearchTextField(
              controller: _textController,
              hintText:
                  isFromChallenge ? '내가 읽은 책을 검색해 보세요' : '읽고 싶은 책을 검색해 보세요',
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
                    data: (data) =>
                        data.books.isNotEmpty &&
                        data.query == _textController.text,
                    orElse: () => false,
                  );
                  return showSearchResults
                      ? _buildSearchResults()
                      : _buildSearchHistory();
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.icons.icBookpickSearchCharacter.svg(),
                const SizedBox(height: 12),
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
                  ref
                      .read(searchHistoryViewModelProvider.notifier)
                      .removeHistory(history.queries);
                },
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 1),
        );
      },
      error: (error, stack) =>
          const Center(child: Text('검색 기록을 불러오는데 실패했습니다.')),
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
                rowItems.add(
                  Expanded(
                    child: BookSearchResultCard(
                      book: books[bookIndex],
                      from: widget.from,
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
                // [Note] 정순원, 오류나서 잠시 주석 처리해두겠습니다
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
