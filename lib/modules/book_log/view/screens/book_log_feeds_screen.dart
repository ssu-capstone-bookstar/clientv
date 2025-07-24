import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_log/state/book_log_state.dart';
import 'package:book/modules/book_log/view/widgets/diary_feed_comment_dialog.dart';
import 'package:book/modules/book_log/view/widgets/feed_card.dart';
import 'package:book/modules/book_log/view_model/book_log_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BookLogFeedsScreen extends ConsumerStatefulWidget {
  const BookLogFeedsScreen(
      {super.key, required this.memberId, required this.initialIndex});
  final int memberId;
  final int initialIndex;

  @override
  ConsumerState<BookLogFeedsScreen> createState() => _BookLogFeedsScreenState();
}

class _BookLogFeedsScreenState extends ConsumerState<BookLogFeedsScreen> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  BookLogState _localState = const BookLogState();

  // 중복 호출 방지를 위한 플래그
  bool _isLoadingMore = false;
  DateTime? _lastBottomReachedTime;

  @override
  void initState() {
    super.initState();
    _initState();
    _setupScrollListener();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _jumpToIndex(widget.initialIndex);
      }
    });
  }

  void _initState() {
    final currentState = ref
        .read(bookLogViewModelProvider(widget.memberId).notifier)
        .getCurrentState();
    if (currentState != null) {
      setState(() {
        _localState = currentState;
      });
    }
  }

  void _jumpToIndex(int index) {
    if (mounted) {
      itemScrollController.jumpTo(
        index: index,
      );
    }
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

        /// 현재 보이는 아이템들 중 가장 마지막 아이템의 인덱스
        final lastVisibleIndex = visibleItems.reduce((a, b) => a > b ? a : b);
        final totalItems = _localState.feeds.length;
        final threshold = (totalItems * 0.8).round();
        if (lastVisibleIndex >= threshold) {
          _onBottomReached();
        }
      }
    });
  }

  void _onBottomReached() {
    final now = DateTime.now();

    /// 디바운싱: 마지막 호출로부터 2초가 지나지 않았으면 무시
    if (_lastBottomReachedTime != null &&
        now.difference(_lastBottomReachedTime!).inSeconds < 2) {
      return;
    }

    /// 이미 로딩 중이면 무시
    if (_isLoadingMore) {
      return;
    }
    _lastBottomReachedTime = now;
    _isLoadingMore = true;
    // 실제 로딩 로직 실행
    _loadMoreFeeds();
  }

  void _loadMoreFeeds() async {
    final result = await ref
        .read(bookLogViewModelProvider(widget.memberId).notifier)
        .refreshState();
    setState(() {
      _localState = result;
    });
    _isLoadingMore = false;
  }

  Future<void> _onRefresh() async {
    final result = await ref
        .read(bookLogViewModelProvider(widget.memberId).notifier)
        .initState(widget.memberId);
    setState(() {
      _localState = result;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final feeds = _localState.feeds;

    onLike(int targetIndex) async {
      final targetFeed = feeds[targetIndex];
      final result = await ref
          .read(bookLogViewModelProvider(widget.memberId).notifier)
          .handleFeedLike(targetFeed.diaryId, targetFeed.liked, targetIndex);
      setState(() {
        _localState = result;
      });
    }

    onMessage(BuildContext ctx, int targetIndex) async {
      final targetFeed = feeds[targetIndex];
      final result = await showModalBottomSheet(
          context: ctx,
          isScrollControlled: true,
          backgroundColor: ColorName.b1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) =>
              DiaryFeedCommentDialog(diaryId: targetFeed.diaryId));

      bool hasChanged = result?['hasChanged'] ?? false;
      int? commentCount = result?['commentCount'];
      if (hasChanged && commentCount != null) {
        final currentState = ref
            .read(bookLogViewModelProvider(widget.memberId).notifier)
            .changeCommentCount(targetFeed.diaryId, commentCount);
        setState(() {
          _localState = currentState;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('책로그'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ScrollablePositionedList.separated(
          itemScrollController: itemScrollController,
          scrollOffsetController: scrollOffsetController,
          itemPositionsListener: itemPositionsListener,
          scrollOffsetListener: scrollOffsetListener,
          itemCount: feeds.length,
          itemBuilder: (context, index) => FeedCard(
            feed: feeds[index],
            onLike: () => onLike(index),
            onMessage: () => onMessage(context, index),
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
  }
}
