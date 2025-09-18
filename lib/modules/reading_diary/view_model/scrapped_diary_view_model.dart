import 'package:bookstar/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../repository/scrapped_diary_repository.dart';
import '../state/scrapped_diary_state.dart';

part 'scrapped_diary_view_model.g.dart';

@riverpod
ScrappedDiaryRepository scrappedDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ScrappedDiaryRepository(dio);
}

@riverpod
class ScrappedDiaryViewModel extends _$ScrappedDiaryViewModel {
  late final ScrappedDiaryRepository _scrappedDiaryRepository;
  late final ReadingDiaryRepository _readingDiaryRepository;

  @override
  FutureOr<ScrappedDiaryState> build() async {
    _scrappedDiaryRepository = ref.read(scrappedDiaryRepositoryProvider);
    _readingDiaryRepository = ref.read(readingDiaryRepositoryProvider);
    return await initState();
  }

  Future<ScrappedDiaryState> initState() async {
    final prev = state.value ?? ScrappedDiaryState();
    final thumbnail =
        await _scrappedDiaryRepository.getScrappedDiaryThumbnails(size: 20);
    final feeds =
        await _scrappedDiaryRepository.getScrappedDiaryFeeds(size: 20);

    state = AsyncValue.data(prev.copyWith(
      thumbnails: thumbnail.data.data,
      feeds: feeds.data.data,
      nextCursor: thumbnail.data.nextCursor,
      hasNext: thumbnail.data.hasNext,
    ));
    return state.value ?? ScrappedDiaryState();
  }

  Future<void> refreshState() async {
    final prev = state.value ?? ScrappedDiaryState();
    if (!prev.hasNext) return;
    final thumbnail = await _scrappedDiaryRepository.getScrappedDiaryThumbnails(
      cursorId: prev.nextCursor,
      size: 20,
    );
    final feeds = await _scrappedDiaryRepository.getScrappedDiaryFeeds(
      size: 20,
      cursorId: prev.nextCursor,
    );

    state = AsyncValue.data(prev.copyWith(
      thumbnails: [...prev.thumbnails, ...thumbnail.data.data],
      feeds: [...prev.feeds, ...feeds.data.data],
      nextCursor: thumbnail.data.nextCursor,
      hasNext: thumbnail.data.hasNext,
    ));
  }

  Future<void> deleteScrappedDiary(int diaryId) async {
    final prev = state.value ?? ScrappedDiaryState();
    await _scrappedDiaryRepository.deleteScrappedDiary(diaryId);
    // 삭제된 다이어리를 상태에서 제거
    state = AsyncValue.data(prev.copyWith(
      thumbnails: prev.thumbnails
          .where((thumbnail) => thumbnail.diaryId != diaryId)
          .toList(),
    ));
  }

  Future<ScrappedDiaryState> handleFeedLike(
      int diaryId, bool liked, int index) async {
    if (liked) {
      await _readingDiaryRepository.unlikeDiary(diaryId);
    } else {
      await _readingDiaryRepository.likeDiary(diaryId);
    }
    final prev = state.value ?? ScrappedDiaryState();
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
    return state.value ?? ScrappedDiaryState();
  }

  ScrappedDiaryState changeCommentCount(int diaryId, int commentCount) {
    final prev = state.value ?? ScrappedDiaryState();
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
    return state.value ?? ScrappedDiaryState();
  }

  Future<ScrappedDiaryState> handleFeedScrap(
      int diaryId, bool scraped, int index) async {
    if (scraped) {
      await _readingDiaryRepository.unscrapDiary(diaryId);
    } else {
      await _readingDiaryRepository.scrapDiary(diaryId);
    }
    final prev = state.value ?? ScrappedDiaryState();
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
    return state.value ?? ScrappedDiaryState();
  }
}
