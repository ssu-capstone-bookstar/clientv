import 'package:book/common/components/custom_grid_view.dart';
import 'package:book/common/components/custom_list_view.dart';
import 'package:book/common/utils/overlay_utils.dart';
import 'package:book/modules/book_pick/model/search_book_response.dart';
import 'package:book/modules/book_pick/view/widgets/book_search_result_card.dart';
import 'package:book/modules/book_pick/view_model/search_book_view_model.dart';
import 'package:book/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class ReadingChallengeSearchNewScreen extends ConsumerStatefulWidget {
  const ReadingChallengeSearchNewScreen({
    super.key,
  });

  @override
  ConsumerState<ReadingChallengeSearchNewScreen> createState() =>
      _ReadingChallengeSearchNewScreenState();
}

class _ReadingChallengeSearchNewScreenState
    extends ConsumerState<ReadingChallengeSearchNewScreen> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  DateTime? _lastBottomReachedTime;

  @override
  void initState() {
    super.initState();
    _setupScrollListener();
    _textController.addListener(() {
      setState(() {});
    });
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(searchBookViewModelProvider.notifier).initState();
    });
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
    await _refreshState();
    _isLoadingMore = false;
  }

  Future<void> _refreshState() async {
    await ref.read(searchBookViewModelProvider.notifier).fetchNextPage();
  }

  void _onSearchSubmitted(String value) {
    if (value.isNotEmpty) {
      ref.read(searchBookViewModelProvider.notifier).searchBooks(value);
    }
  }

  _hideKeyboard() {
    _focusNode.unfocus();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchBookViewModelProvider);
    final notifier = ref.read(searchBookViewModelProvider.notifier);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
        child: AppBar(
          title: Text(
            '책픽',
            style: AppTexts.b5,
          ),
          leading: IconButton(
            icon: const BackButton(),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          _hideKeyboard();
        },
        child: Padding(
          padding: AppPaddings.SCREEN_BODY_PADDING,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBook(
                  textController: _textController,
                  focusNode: _focusNode,
                  onTapSuffixIcon: () =>
                      _onSearchSubmitted(_textController.text),
                  onTapMyLikes: () {
                    context.push('/reading-challenge/search-new/my-likes');
                  }),
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
                          scrollController: _scrollController,
                          onTapItem: (book) async {
                            final currentChallengeNotifier = ref.read(
                                currentChallengeViewModelProvider.notifier);
                            final challengeExists =
                                await currentChallengeNotifier
                                    .checkChallengeExists(
                                        book.bookId.toString());
                            if (!context.mounted) return;
                            if (challengeExists) {
                              // 챌린지가 존재하면 커스텀 토스트 표시
                              OverlayUtils.showCustomToast(
                                  context, '이미 진행중인 챌린지입니다.');
                            } else {
                              // 챌린지가 존재하지 않으면 다음 화면으로 이동
                              context.push('/reading-challenge/total-page',
                                  extra: book);
                            }
                          },
                        );
                },
                loading: _loading,
                error: _error("북 검색 정보를 불러올 수 없습니다."),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBook({
    required TextEditingController textController,
    FocusNode? focusNode,
    required Function() onTapSuffixIcon,
    required Function() onTapMyLikes,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '리딩 챌린지',
          style: AppTexts.b1.copyWith(color: ColorName.w1),
        ),
        SizedBox(
          height: 15,
        ),
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
        const SizedBox(height: 25),
        GestureDetector(
          onTap: onTapMyLikes,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "내가 PICK한 책",
                style: AppTexts.b10.copyWith(color: ColorName.g2),
              ),
              const Icon(
                Icons.chevron_right,
                color: ColorName.g2,
                size: 20,
              ),
            ],
          ),
        )
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

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
