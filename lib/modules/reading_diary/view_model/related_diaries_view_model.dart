import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/models/dual_cursor_page_response.dart';
import '../model/related_diary_sort.dart';
import '../model/related_diary_thumbnail.dart';
import '../repository/reading_diary_repository.dart';
import 'related_diary_state.dart';

part 'related_diaries_view_model.g.dart';

@riverpod
class RelatedDiarySortState extends _$RelatedDiarySortState {
  @override
  RelatedDiarySort build() {
    return RelatedDiarySort.LATEST;
  }

  void toggle() {
    state = state == RelatedDiarySort.LATEST
        ? RelatedDiarySort.POPULAR
        : RelatedDiarySort.LATEST;
  }
}

@riverpod
class RelatedDiariesViewModel extends _$RelatedDiariesViewModel {
  late final ReadingDiaryRepository _repository;
  late final int _bookId;
  Object? _key;

  @override
  Future<RelatedDiaryState> build(int bookId) async {
    _bookId = bookId;
    _key = Object();
    ref.onDispose(() {
      _key = null;
    });

    _repository = ref.watch(readingDiaryRepositoryProvider);
    final sort = ref.watch(relatedDiarySortStateProvider);
    final response = await _fetchDiaries(bookId: _bookId, sort: sort);
    return RelatedDiaryState(
      diaries: response.data,
      nextCursor: response.nextCursor,
      nextSubCursor: response.nextSubCursor,
      hasNext: response.hasNext,
    );
  }

  Future<DualCursorPageResponse<RelatedDiaryThumbnail>> _fetchDiaries({
    required int bookId,
    required RelatedDiarySort sort,
    int? cursorId,
    double? cursorScore,
  }) async {
    final response = await _repository.getRelatedDiaries(
      bookId,
      relatedDiarySort: sort,
      cursorId: cursorId,
      cursorScore: cursorScore,
      size: 18,
    );
    return response.data;
  }

  Future<void> fetchNextPage() async {
    if (state.isLoading || state.isReloading || !state.hasValue) return;
    if (!state.requireValue.hasNext) return;

    final key = _key;
    final currentState = state.requireValue;

    try {
      final sort = ref.read(relatedDiarySortStateProvider);

      final response = await _fetchDiaries(
        bookId: _bookId,
        sort: sort,
        cursorId: currentState.nextCursor,
        cursorScore: currentState.nextSubCursor as double?,
      );

      if (key != _key) return;

      state = AsyncValue.data(
        currentState.copyWith(
          diaries: [...currentState.diaries, ...response.data],
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
