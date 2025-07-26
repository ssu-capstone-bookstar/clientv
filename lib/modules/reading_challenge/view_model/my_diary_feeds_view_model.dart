import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/models/dual_cursor_page_response.dart';
import '../../reading_diary/model/diary_feed_response.dart';
import '../../reading_diary/repository/reading_diary_repository.dart';
import '../model/my_diary_sort.dart';
import 'reading_challenge_view_model.dart';

part 'my_diary_feeds_view_model.g.dart';

@riverpod
class MyDiaryFeedsViewModel extends _$MyDiaryFeedsViewModel {
  ReadingDiaryRepository? _repository;
  int? _bookId;
  Object? _key;

  @override
  Future<DualCursorPageResponse<DiaryFeedResponse>> build(int bookId) async {
    _bookId = bookId;
    _key = Object();
    ref.onDispose(() {
      _key = null;
    });

    _repository ??= ref.read(readingDiaryRepositoryProvider);

    // sort 변경을 감지하기 위해 watch 사용
    ref.watch(myDiarySortStateProvider);

    try {
      final sort = ref.read(myDiarySortStateProvider);
      final response = await _fetchFeeds(bookId: bookId, sort: sort);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<DualCursorPageResponse<DiaryFeedResponse>> _fetchFeeds({
    required int bookId,
    required MyDiarySort sort,
    int? cursorId,
    double? cursorScore,
    int? page,
  }) async {
    try {
      final repository = _repository!;

      if (sort == MyDiarySort.LATEST) {
        final response = await repository.getMyDiaryFeeds(
          bookId,
          cursorId: cursorId,
          size: 18,
        );
        return DualCursorPageResponse(
          data: response.data.data,
          nextCursor: response.data.nextCursor,
          nextSubCursor: null,
          hasNext: response.data.hasNext,
        );
      } else {
        // 인기순은 page 기반 pagination 사용
        final response = await repository.getMyDiaryFeedsPopular(
          bookId,
          page: page ?? 0,
          size: 18,
        );

        // PopularDiaryFeedResponse를 DualCursorPageResponse로 변환
        return DualCursorPageResponse(
          data: response.data.content,
          nextCursor: response.data.hasNext ? (page ?? 0) + 1 : null,
          nextSubCursor: null,
          hasNext: response.data.hasNext,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> fetchNextPage() async {
    if (state.isLoading || state.isReloading || !state.hasValue) return;
    if (!state.requireValue.hasNext) return;

    final key = _key;
    final currentState = state.requireValue;

    try {
      final sort = ref.read(myDiarySortStateProvider);

      final response = await _fetchFeeds(
        bookId: _bookId!,
        sort: sort,
        cursorId: sort == MyDiarySort.LATEST ? currentState.nextCursor : null,
        cursorScore: sort == MyDiarySort.LATEST
            ? currentState.nextSubCursor as double?
            : null,
        page: sort == MyDiarySort.POPULAR ? currentState.nextCursor : null,
      );

      if (key != _key) return;

      state = AsyncValue.data(
        currentState.copyWith(
          data: [
            ...currentState.data,
            ...response.data,
          ],
          nextCursor: response.nextCursor,
          nextSubCursor: response.nextSubCursor,
          hasNext: response.hasNext,
        ),
      );
    } catch (e, st) {
      if (key == _key) {
        state = AsyncValue.error(e, st);
      }
    }
  }

  Future<DualCursorPageResponse<DiaryFeedResponse>> handleFeedLike(
    int diaryId,
    bool liked,
    int targetIndex,
  ) async {
    if (!state.hasValue) return state.requireValue;

    final currentState = state.requireValue;
    final feeds = List<DiaryFeedResponse>.from(currentState.data);

    try {
      final repository = _repository!;
      if (liked) {
        await repository.unlikeDiary(diaryId);
        feeds[targetIndex] = feeds[targetIndex].copyWith(
          liked: false,
          likeCount: feeds[targetIndex].likeCount - 1,
        );
      } else {
        await repository.likeDiary(diaryId);
        feeds[targetIndex] = feeds[targetIndex].copyWith(
          liked: true,
          likeCount: feeds[targetIndex].likeCount + 1,
        );
      }

      final newState = currentState.copyWith(data: feeds);
      state = AsyncValue.data(newState);
      return newState;
    } catch (e) {
      rethrow;
    }
  }

  DualCursorPageResponse<DiaryFeedResponse> changeCommentCount(
    int diaryId,
    int commentCount,
  ) {
    if (!state.hasValue) return state.requireValue;

    final currentState = state.requireValue;
    final feeds = List<DiaryFeedResponse>.from(currentState.data);

    final targetIndex = feeds.indexWhere((feed) => feed.diaryId == diaryId);
    if (targetIndex != -1) {
      feeds[targetIndex] = feeds[targetIndex].copyWith(
        commentCount: commentCount,
      );
    }

    final newState = currentState.copyWith(data: feeds);
    state = AsyncValue.data(newState);
    return newState;
  }
}
