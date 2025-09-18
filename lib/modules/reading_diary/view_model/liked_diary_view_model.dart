import 'package:bookstar/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../model/liked_diary_feed_response.dart';
import '../repository/liked_diary_repository.dart';
import '../state/liked_diary_state.dart';

part 'liked_diary_view_model.g.dart';

@riverpod
LikedDiaryRepository likedDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return LikedDiaryRepository(dio);
}

@riverpod
class LikedDiaryViewModel extends _$LikedDiaryViewModel {
  late final LikedDiaryRepository _likedDiaryRepository;
  late final ReadingDiaryRepository _readingDiaryRepository;

  @override
  FutureOr<LikedDiaryState> build() async {
    _likedDiaryRepository = ref.read(likedDiaryRepositoryProvider);
    _readingDiaryRepository = ref.watch(readingDiaryRepositoryProvider);
    return await initState();
  }

  Future<LikedDiaryState> initState() async {
    final prev = state.value ?? LikedDiaryState();
    final thumbnail =
        await _likedDiaryRepository.getLikedDiaryThumbnails(size: 20);
    final feeds = await _likedDiaryRepository.getLikedDiaryFeeds(size: 20);

    state = AsyncValue.data(prev.copyWith(
      thumbnails: thumbnail.data.data,
      feeds: feeds.data.data,
      nextCursor: thumbnail.data.nextCursor,
      hasNext: thumbnail.data.hasNext,
    ));
    return state.value ?? LikedDiaryState();
  }

  Future<void> refreshState() async {
    final prev = state.value ?? LikedDiaryState();
    if (!prev.hasNext) return;

    final thumbnail = await _likedDiaryRepository.getLikedDiaryThumbnails(
      cursorId: prev.nextCursor,
      size: 20,
    );

    final feeds = await _likedDiaryRepository.getLikedDiaryFeeds(
        cursorId: prev.nextCursor, size: 20);

    state = AsyncValue.data(prev.copyWith(
      thumbnails: [...prev.thumbnails, ...thumbnail.data.data],
      feeds: [...prev.feeds, ...feeds.data.data],
      nextCursor: thumbnail.data.nextCursor,
      hasNext: thumbnail.data.hasNext,
    ));
  }

  Future<List<LikedDiaryFeed>> getLikedDiaryFeeds() async {
    final response = await _likedDiaryRepository.getLikedDiaryFeeds(size: 20);
    return response.data.data;
  }

  Future<LikedDiaryState> handleFeedLike(
      int diaryId, bool liked, int index) async {
    if (liked) {
      await _readingDiaryRepository.unlikeDiary(diaryId);
    } else {
      await _readingDiaryRepository.likeDiary(diaryId);
    }
    final prev = state.value ?? LikedDiaryState();
    state = AsyncValue.data(prev.copyWith(
      feeds: prev.feeds.map((feed) {
        if (feed.diaryId == diaryId) {
          return feed.copyWith(
            liked: !feed.liked,
            likeCount: feed.liked ? feed.likeCount - 1 : feed.likeCount + 1,
          );
        }
        return feed;
      }).toList(),
    ));
    return state.value ?? LikedDiaryState();
  }

  LikedDiaryState changeCommentCount(int diaryId, int commentCount) {
    final prev = state.value ?? LikedDiaryState();
    state = AsyncValue.data(prev.copyWith(
      feeds: prev.feeds.map((feed) {
        if (feed.diaryId == diaryId) {
          return feed.copyWith(
            commentCount: commentCount,
          );
        }
        return feed;
      }).toList(),
    ));
    return state.value ?? LikedDiaryState();
  }

  Future<LikedDiaryState> handleFeedScrap(
      int diaryId, bool scraped, int index) async {
    if (scraped) {
      await _readingDiaryRepository.unscrapDiary(diaryId);
    } else {
      await _readingDiaryRepository.scrapDiary(diaryId);
    }
    final prev = state.value ?? LikedDiaryState();
    state = AsyncValue.data(prev.copyWith(
      feeds: prev.feeds.map((feed) {
        if (feed.diaryId == diaryId) {
          return feed.copyWith(
            scraped: !feed.scraped,
          );
        }
        return feed;
      }).toList(),
    ));
    return state.value ?? LikedDiaryState();
  }
}
