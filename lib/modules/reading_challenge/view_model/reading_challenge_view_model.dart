import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/models/dual_cursor_page_response.dart';
import '../../reading_diary/repository/reading_diary_repository.dart';
import '../../reading_diary/model/related_diary_thumbnail.dart';
import '../model/my_diary_sort.dart';
import '../model/my_diary_thumbnail.dart';
import '../model/my_diary_state.dart';

part 'reading_challenge_view_model.g.dart';

enum ReadingChallengeType {
  reading,
  newBook,
  allPoints,
}

@riverpod
class ReadingChallengeViewModel extends _$ReadingChallengeViewModel {
  @override
  ReadingChallengeType? build() {
    return null;
  }

  void selectOption(ReadingChallengeType option) {
    state = option;
  }
}

@riverpod
class MyDiarySortState extends _$MyDiarySortState {
  @override
  MyDiarySort build() {
    return MyDiarySort.LATEST;
  }

  void toggle() {
    state =
        state == MyDiarySort.LATEST ? MyDiarySort.POPULAR : MyDiarySort.LATEST;
  }
}

@riverpod
class MyDiariesViewModel extends _$MyDiariesViewModel {
  ReadingDiaryRepository? _repository;
  int? _bookId;
  Object? _key;

  @override
  Future<MyDiaryState> build(int bookId) async {
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
      final response = await _fetchDiaries(bookId: bookId, sort: sort);
      return MyDiaryState(
        diaries: response.data
            .map((diary) => MyDiaryThumbnail(
                  diaryId: diary.diaryId,
                  firstImage: diary.firstImage,
                  score: diary.score,
                ))
            .toList(),
        nextCursor: response.nextCursor,
        nextSubCursor: response.nextSubCursor,
        hasNext: response.hasNext,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<DualCursorPageResponse<RelatedDiaryThumbnail>> _fetchDiaries({
    required int bookId,
    required MyDiarySort sort,
    int? cursorId,
    double? cursorScore,
    int? page,
  }) async {
    try {
      final repository = _repository!;

      if (sort == MyDiarySort.LATEST) {
        final response = await repository.getMyRelatedDiaries(
          bookId,
          cursorId: cursorId,
          cursorScore: cursorScore,
          size: 18,
        );
        return response.data;
      } else {
        // 인기순은 page 기반 pagination 사용
        final response = await repository.getMyRelatedDiariesPopular(
          bookId,
          page: page ?? 0,
          size: 18,
        );

        // PopularDiaryResponse를 DualCursorPageResponse로 변환
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

      final response = await _fetchDiaries(
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
          diaries: [
            ...currentState.diaries,
            ...response.data.map((diary) => MyDiaryThumbnail(
                  diaryId: diary.diaryId,
                  firstImage: diary.firstImage,
                  score: diary.score,
                ))
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
}
