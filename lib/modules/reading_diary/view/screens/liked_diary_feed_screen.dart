import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../gen/colors.gen.dart';
import '../../model/liked_diary_feed_response.dart';
import '../../model/diary_response.dart';
import '../../model/diary_image_response.dart';
import '../../view_model/liked_diary_view_model.dart';
import '../../../book_log/view/widgets/feed_card.dart';

class LikedDiaryFeedScreen extends ConsumerStatefulWidget {
  const LikedDiaryFeedScreen({
    super.key,
    required this.initialIndex,
  });

  final int initialIndex;

  @override
  ConsumerState<LikedDiaryFeedScreen> createState() =>
      _LikedDiaryFeedScreenState();
}

class _LikedDiaryFeedScreenState extends ConsumerState<LikedDiaryFeedScreen> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  bool _hasJumped = false;

  @override
  void initState() {
    super.initState();
  }

  void _jumpToIndex(int index) {
    if (!mounted) return;

    final feedsAsync = ref.read(getLikedDiaryFeedsAsyncProvider);
    if (!feedsAsync.hasValue || feedsAsync.value!.isEmpty) return;

    final validIndex = index.clamp(0, feedsAsync.value!.length - 1);

    _attemptJump(validIndex, 0);
  }

  void _attemptJump(int index, int attemptCount) {
    if (!mounted || attemptCount > 5) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      try {
        itemScrollController.jumpTo(index: index);
      } catch (e) {
        debugPrint('Jump attempt $attemptCount failed: $e');
        if (attemptCount < 5) {
          _attemptJump(index, attemptCount + 1);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<List<LikedDiaryFeed>>>(
      getLikedDiaryFeedsAsyncProvider,
      (previous, next) {
        if (next.hasValue && next.value!.isNotEmpty && mounted && !_hasJumped) {
          _hasJumped = true;
          _jumpToIndex(widget.initialIndex);
        }
      },
    );

    final feedsAsync = ref.watch(getLikedDiaryFeedsAsyncProvider);

    return feedsAsync.when(
      data: (feeds) => Scaffold(
        appBar: AppBar(
          title: const Text('좋아요 누른 다이어리'),
          leading: IconButton(
            icon: const BackButton(),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: _buildFeedList(feeds),
      ),
      error: _error("좋아요 누른 다이어리 정보를 불러올 수 없습니다."),
      loading: _loading,
    );
  }

  Widget _buildFeedList(List<LikedDiaryFeed> feeds) {
    if (feeds.isEmpty) {
      return const Center(
        child: Text(
          '좋아요 누른 다이어리가 없습니다.',
          style: TextStyle(
            color: ColorName.g7,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(likedDiaryViewModelProvider.notifier).initState();
      },
      child: ScrollablePositionedList.separated(
        itemCount: feeds.length,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
        itemBuilder: (context, index) {
          final feed = feeds[index];
          final diaryResponse = _convertToDiaryResponse(feed);

          return FeedCard(
            feed: diaryResponse,
            onLike: () {},
            onMessage: () {},
            onDelete: () {},
            onReport: () {},
            onClickProfile: () {},
            onScrap: () {},
            onUpdate: () {},
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 0),
      ),
    );
  }

  DiaryResponse _convertToDiaryResponse(LikedDiaryFeed feed) {
    return DiaryResponse(
      diaryId: feed.diaryId,
      content: feed.content,
      createdDate: feed.createdDate.toIso8601String(),
      memberId: feed.memberId,
      nickname: feed.nickname,
      profileImageUrl: feed.profileImageUrl,
      bookId: feed.bookId,
      bookTitle: feed.bookTitle,
      bookAuthor: feed.bookAuthor,
      bookRating: feed.bookRating.toDouble(),
      images: feed.images
          .map((image) => DiaryImageResponse(
                diaryId: feed.diaryId,
                imageId: 0,
                imageUrl: image.imageUrl,
                sequence: 0,
              ))
          .toList(),
      likeCount: feed.likeCount,
      commentCount: feed.commentCount,
      viewCount: feed.viewCount,
      liked: feed.liked,
      scraped: feed.scraped,
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
