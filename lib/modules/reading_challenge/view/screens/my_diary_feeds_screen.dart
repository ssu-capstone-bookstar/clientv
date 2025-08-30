import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/view/widgets/diary_feed_card.dart';
import 'package:book/modules/book_log/view/widgets/diary_feed_comment_dialog.dart';
import 'package:book/modules/reading_challenge/view_model/my_diary_feeds_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MyDiaryFeedsScreen extends ConsumerStatefulWidget {
  const MyDiaryFeedsScreen({
    super.key,
    required this.bookId,
    required this.memberId,
    required this.initialIndex,
  });

  final int bookId;
  final int memberId;
  final int initialIndex;

  @override
  ConsumerState<MyDiaryFeedsScreen> createState() => _MyDiaryFeedsScreenState();
}

class _MyDiaryFeedsScreenState extends ConsumerState<MyDiaryFeedsScreen> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

  bool _isLoadingMore = false;
  DateTime? _lastBottomReachedTime;
  bool _hasJumped = false;

  @override
  void initState() {
    super.initState();
    _setupScrollListener();
  }

  void _jumpToIndex(int index) {
    if (!mounted) return;

    final feedsState = ref.read(myDiaryFeedsViewModelProvider(widget.bookId));
    if (!feedsState.hasValue || feedsState.value!.data.isEmpty) return;

    final validIndex = index.clamp(0, feedsState.value!.data.length - 1);

    _attemptJump(validIndex, 0);
  }

  void _attemptJump(int index, int attemptCount) {
    if (!mounted || attemptCount > 5) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      try {
        itemScrollController.jumpTo(
          index: index,
        );
      } catch (e) {
        debugPrint('Jump attempt $attemptCount failed: $e');
        if (attemptCount < 5) {
          _attemptJump(index, attemptCount + 1);
        }
      }
    });
  }

  void _setupScrollListener() {
    itemPositionsListener.itemPositions.addListener(() {
      final positions = itemPositionsListener.itemPositions.value;
      if (positions.isNotEmpty) {
        final visibleItems = positions
            .where((position) => position.itemTrailingEdge < 1.0)
            .map((position) => position.index);
        if (visibleItems.isEmpty) {
          return;
        }

        final lastVisibleIndex = visibleItems.reduce((a, b) => a > b ? a : b);
        final feedsState =
            ref.read(myDiaryFeedsViewModelProvider(widget.bookId));
        if (feedsState.hasValue) {
          final totalItems = feedsState.value!.data.length;
          final threshold = (totalItems * 0.8).round();
          if (lastVisibleIndex >= threshold) {
            _onBottomReached();
          }
        }
      }
    });
  }

  void _onBottomReached() {
    final now = DateTime.now();

    if (_lastBottomReachedTime != null &&
        now.difference(_lastBottomReachedTime!).inSeconds < 2) {
      return;
    }

    if (_isLoadingMore) {
      return;
    }
    _lastBottomReachedTime = now;
    _isLoadingMore = true;
    _loadMoreFeeds();
  }

  void _loadMoreFeeds() async {
    await ref
        .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
        .fetchNextPage();
    _isLoadingMore = false;
  }

  Future<void> _onRefresh() async {
    ref.invalidate(myDiaryFeedsViewModelProvider(widget.bookId));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      myDiaryFeedsViewModelProvider(widget.bookId),
      (previous, next) {
        if (next.hasValue &&
            next.value!.data.isNotEmpty &&
            mounted &&
            !_hasJumped) {
          _hasJumped = true;
          _jumpToIndex(widget.initialIndex);
        }
      },
    );

    return ref.watch(myDiaryFeedsViewModelProvider(widget.bookId)).when(
          data: (feeds) {
            onLike(int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              await ref
                  .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                  .handleFeedLike(
                      targetFeed.diaryId, targetFeed.liked, targetIndex);
            }

            onMessage(BuildContext ctx, int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              final result = await showModalBottomSheet(
                context: ctx,
                isScrollControlled: true,
                backgroundColor: ColorName.b1,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) =>
                    DiaryFeedCommentDialog(diaryId: targetFeed.diaryId),
              );

              int? commentCount = result?['commentCount'];
              if (commentCount != null) {
                ref
                    .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                    .changeCommentCount(targetFeed.diaryId, commentCount);
              }
            }

            onDelete(int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              await ref
                  .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                  .handleFeedDelete(targetFeed.diaryId, targetIndex);
            }

            onReport(int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              await ref
                  .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                  .handleFeedReport(targetFeed.diaryId, targetIndex);
            }

            onProfile(int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              await ref
                  .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                  .handleFeedProfile(targetFeed.diaryId, targetIndex);
            }

            onScrap(int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              await ref
                  .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                  .handleFeedScrap(targetFeed.diaryId, targetIndex);
            }

            onUpdate(int targetIndex) async {
              final targetFeed = feeds.data[targetIndex];
              await ref
                  .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
                  .handleFeedUpdate(targetFeed.diaryId, targetIndex);
            }

            onBookTitle(int targetIndex) async {
              // final targetFeed = feeds.data[targetIndex];
              // await ref
              //     .read(myDiaryFeedsViewModelProvider(widget.bookId).notifier)
              //     .handleFeedBookTitle(targetFeed.diaryId, targetIndex);
            }

            return Scaffold(
              appBar: AppBar(
                title: const Text('내가 쓴 독서 다이어리'),
                leading: IconButton(
                  icon: const BackButton(),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              body: RefreshIndicator(
                onRefresh: _onRefresh,
                child: feeds.data.isEmpty
                    ? const Center(
                        child: Text(
                          '내가 쓴 독서일기가 없습니다.',
                          style: TextStyle(color: ColorName.g3),
                        ),
                      )
                    : ScrollablePositionedList.separated(
                        itemScrollController: itemScrollController,
                        scrollOffsetController: scrollOffsetController,
                        itemPositionsListener: itemPositionsListener,
                        scrollOffsetListener: scrollOffsetListener,
                        itemCount: feeds.data.length,
                        itemBuilder: (context, index) => DiaryFeedCard(
                          feed: feeds.data[index],
                          onLike: () => onLike(index),
                          onMessage: () => onMessage(context, index),
                          onDelete: () => onDelete(index),
                          onReport: () => onReport(index),
                          onProfile: () => onProfile(index),
                          onScrap: () => onScrap(index),
                          onUpdate: () => onUpdate(index),
                          onBookTitle: () => onBookTitle(index),
                        ),
                        separatorBuilder: (context, index) => const Divider(
                          color: ColorName.g7,
                          height: 0,
                          thickness: 1,
                          indent: 16,
                          endIndent: 16,
                        ),
                      ),
              ),
            );
          },
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stack) => Scaffold(
            body: Center(child: Text('오류가 발생했습니다: $error')),
          ),
        );
  }
}
