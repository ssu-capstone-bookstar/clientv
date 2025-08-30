import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_log/view/widgets/feed_card.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BookLogFeedList extends ConsumerStatefulWidget {
  const BookLogFeedList(
      {super.key,
      required this.feeds,
      // required this.followInfo,
      this.initialIndex,
      required this.onScrollBottom,
      required this.onRefresh,
      required this.onLike,
      required this.onMessage,
      required this.onDelete,
      required this.onReport,
      required this.onProfile,
      required this.onScrap,
      required this.onUpdate,
      required this.onBookTitle});
  final List<DiaryResponse> feeds;
  // final FollowInfoState followInfo;
  final int? initialIndex;
  final Future<void> Function() onScrollBottom;
  final Future<void> Function() onRefresh;
  final Function(int) onLike;
  final Function(BuildContext, int) onMessage;
  final Function(BuildContext, int) onDelete;
  final Function(BuildContext, int) onReport;
  final Function(int) onProfile;
  final Function(int) onScrap;
  final Function(int) onUpdate;
  final Function(int) onBookTitle;

  @override
  ConsumerState<BookLogFeedList> createState() => _BookLogFeedListState();
}

class _BookLogFeedListState extends ConsumerState<BookLogFeedList> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  // BookLogState _localState = const BookLogState();

  // 중복 호출 방지를 위한 플래그
  bool _isLoadingMore = false;
  DateTime? _lastBottomReachedTime;

  @override
  void initState() {
    super.initState();
    // _initState();
    _setupScrollListener();

    if (widget.initialIndex != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _jumpToIndex(widget.initialIndex!);
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
        final totalItems = widget.feeds.length;
        final threshold = (totalItems * 0.8).round();
        if (lastVisibleIndex >= threshold) {
          _onBottomReached();
        }
      }
    });
  }

  Future<void> _onBottomReached() async {
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
    await widget.onScrollBottom();
    _isLoadingMore = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final feeds = widget.feeds;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: widget.onRefresh,
        child: feeds.isNotEmpty
            ? ScrollablePositionedList.separated(
                itemScrollController: itemScrollController,
                scrollOffsetController: scrollOffsetController,
                itemPositionsListener: itemPositionsListener,
                scrollOffsetListener: scrollOffsetListener,
                itemCount: feeds.length,
                itemBuilder: (context, index) => FeedCard(
                  feed: feeds[index],
                  onLike: () => widget.onLike(index),
                  onMessage: () => widget.onMessage(context, index),
                  onDelete: () => widget.onDelete(context, index),
                  onReport: () => widget.onReport(context, index),
                  onProfile: () => widget.onProfile(index),
                  onScrap: () => widget.onScrap(index),
                  onUpdate: () => widget.onUpdate(index),
                  onBookTitle: () => widget.onBookTitle(index),
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: ColorName.g7,
                  height: 0,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
              )
            : LayoutBuilder(builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.icBooktalkSearchCharacter.svg(
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(height: 18),
                          Text(
                            "팔로잉하는 유저들이\n리딩 챌린지를 시작하지 않았어요",
                            textAlign: TextAlign.center,
                            style: AppTexts.b7.copyWith(color: ColorName.w1),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "가장 먼저 리딩 챌린지를 시작하고, 유저들의 도전을 응원해 보세요!",
                            style: AppTexts.b10.copyWith(color: ColorName.g2),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
      ),
    );
  }
}
