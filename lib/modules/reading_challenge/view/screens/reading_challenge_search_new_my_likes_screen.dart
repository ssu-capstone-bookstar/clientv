import 'package:book/common/components/custom_grid_view.dart';
import 'package:book/common/utils/overlay_utils.dart';
import 'package:book/modules/book_pick/model/search_book_response.dart';
import 'package:book/modules/book_pick/view/widgets/book_search_result_card.dart';
import 'package:book/modules/book_pick/view_model/book_pick_search_view_model.dart';
import 'package:book/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class ReadingChallengeSearchNewMyLikesScreen extends ConsumerStatefulWidget {
  const ReadingChallengeSearchNewMyLikesScreen({
    super.key,
  });

  @override
  ConsumerState<ReadingChallengeSearchNewMyLikesScreen> createState() =>
      _ReadingChallengeSearchNewMyLikesScreenState();
}

class _ReadingChallengeSearchNewMyLikesScreenState
    extends ConsumerState<ReadingChallengeSearchNewMyLikesScreen> {
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

  _refreshState() async {
    await ref
        .read(bookPickSearchViewModelProvider.notifier)
        .initLikeBooks(title: _textController.text);
  }

  Future<void> _onRefresh() async {
    await ref
        .read(bookPickSearchViewModelProvider.notifier)
        .initLikeBooks(title: _textController.text);
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
    final state = ref.watch(bookPickSearchViewModelProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.APP_BAR_HEIGHT),
        child: AppBar(
          title: Text(
            '리딩 챌린지',
            style: AppTexts.b5,
          ),
          leading: IconButton(
            icon: const BackButton(),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: state.when(
        data: (data) => GestureDetector(
          onTap: () {
            _hideKeyboard();
          },
          child: RefreshIndicator(
            onRefresh: _onRefresh,
            child: Padding(
              padding: AppPaddings.SCREEN_BODY_PADDING,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBook(
                    textController: _textController,
                    onTapSuffixIcon: _onRefresh,
                  ),
                  Expanded(
                      child: CustomGridView(
                    emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
                    emptyText: '검색 결과가 없습니다.',
                    isEmpty: data.likeBook.likeBooks.isEmpty,
                    itemCount: data.likeBook.likeBooks.length,
                    itemBuilder: (context, index) {
                      final likeBook = data.likeBook.likeBooks[index];
                      final book = SearchBookResponse(
                        bookId: likeBook.bookId,
                        title: likeBook.title,
                        bookCover: likeBook.bookCover,
                        pubDate: likeBook.pubDate,
                        author: likeBook.author,
                        publisher: likeBook.publisher,
                      );
                      return BookSearchResultCard(
                          book: book,
                          onTap: () async {
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
                          });
                    },
                    hasNext: data.likeBook.hasNext,
                    scrollController: _scrollController,
                  )),
                ],
              ),
            ),
          ),
        ),
        loading: _loading,
        error: _error("책픽 정보를 불러올 수 없습니다."),
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
        Text(
          '내가 PICK한 책을 확인해 보세요',
          style: AppTexts.b1.copyWith(color: ColorName.w1),
        ),
        SizedBox(
          height: 15,
        ),
        SearchTextField(
          controller: textController,
          focusNode: focusNode,
          hintText: '읽고 싶은 책을 검색해 보세요',
          hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
          suffixIcon: textController.text.isNotEmpty
              ? Assets.images.icSearchColored3x.image(scale: 3)
              : Assets.images.icSearchUncolored3x.image(scale: 3),
          onTapSuffixIcon: onTapSuffixIcon,
        ),
      ],
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
