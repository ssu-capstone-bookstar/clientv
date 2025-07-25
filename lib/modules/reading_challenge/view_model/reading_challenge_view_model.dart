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
    final sort = ref.watch(myDiarySortStateProvider);

    try {
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
  }) async {
    try {
      final repository = _repository!;
      final response = sort == MyDiarySort.LATEST
          ? await repository.getMyRelatedDiaries(
              bookId,
              cursorId: cursorId,
              cursorScore: cursorScore,
              size: 18,
            )
          : await repository.getMyRelatedDiariesPopular(
              bookId,
              cursorId: cursorId,
              cursorScore: cursorScore,
              size: 18,
            );

      return response.data;
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
        cursorId: currentState.nextCursor,
        cursorScore: currentState.nextSubCursor as double?,
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
