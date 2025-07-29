import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/models/dual_cursor_page_response.dart';
import '../model/related_diary_sort.dart';
import '../model/related_diary_thumbnail.dart';
import '../repository/reading_diary_repository.dart';
import 'related_diary_state.dart';

part 'related_diaries_view_model.g.dart';

// @riverpod
// class RelatedDiarySortState extends _$RelatedDiarySortState {
//   @override
//   RelatedDiarySort build() {
//     return RelatedDiarySort.LATEST;
//   }

//   void toggle() {
//     state = state == RelatedDiarySort.LATEST
//         ? RelatedDiarySort.POPULAR
//         : RelatedDiarySort.LATEST;
//   }
// }

@riverpod
class RelatedDiariesViewModel extends _$RelatedDiariesViewModel {
  late ReadingDiaryRepository _repository;

  @override
  Future<RelatedDiaryState> build(int bookId) async {
    _repository = ref.read(readingDiaryRepositoryProvider);
    return await initState(bookId, RelatedDiarySort.LATEST);
  }

  Future<RelatedDiaryState> initState(int bookId, RelatedDiarySort sort) async {
    final responseThumbnail = await _fetchThumbnail(bookId: bookId, sort: sort);
    final responseFeeds = await _fetchFeeds(bookId: bookId, sort: sort);
    state = AsyncValue.data(
      RelatedDiaryState(
        thumbnails: responseThumbnail.data,
        feeds: responseFeeds.data,
        nextCursor: responseThumbnail.nextCursor ?? -1,
        nextSubCursor: responseThumbnail.nextSubCursor,
        hasNext: responseThumbnail.hasNext,
        bookId: bookId,
        sort: sort,
      ),
    );
    return state.value ?? RelatedDiaryState();
  }

  Future<DualCursorPageResponse<RelatedDiaryThumbnail>> _fetchThumbnail({
    required int bookId,
    required RelatedDiarySort sort,
    int? cursorId,
    double? cursorScore,
  }) async {
    print("cursorId: $cursorId, cursorScore: $cursorScore");
    final response = sort == RelatedDiarySort.LATEST
        ? await _repository.getRelatedDiariesThumbnail(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          )
        : await _repository.getRelatedDiariesThumbnailPopular(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          );
    return response.data;
  }

  Future<DualCursorPageResponse<DiaryResponse>> _fetchFeeds({
    required int bookId,
    required RelatedDiarySort sort,
    int? cursorId,
    double? cursorScore,
  }) async {
    final response = sort == RelatedDiarySort.LATEST
        ? await _repository.getRelatedDiariesFeed(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          )
        : await _repository.getRelatedDiariesFeedPopular(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          );
    return response.data;
  }

  Future<void> fetchNextPage() async {
    final prev = state.value ?? RelatedDiaryState();

    if (prev.hasNext) {
      final responseThumbnail = await _fetchThumbnail(
          bookId: prev.bookId,
          sort: prev.sort,
          cursorId: prev.nextCursor,
          cursorScore: prev.nextSubCursor as double?);
      final responseFeeds = await _fetchFeeds(
          bookId: prev.bookId,
          sort: prev.sort,
          cursorId: prev.nextCursor,
          cursorScore: prev.nextSubCursor as double?);

      state = AsyncValue.data(
        prev.copyWith(
          thumbnails: [...prev.thumbnails, ...responseThumbnail.data],
          feeds: [...prev.feeds, ...responseFeeds.data],
          nextCursor: responseThumbnail.nextCursor ?? -1,
          nextSubCursor: responseThumbnail.nextSubCursor,
          hasNext: responseThumbnail.hasNext,
        ),
      );
    }
  }

  Future<void> toggleSort() async {
    await initState(
        state.value!.bookId,
        state.value!.sort == RelatedDiarySort.LATEST
            ? RelatedDiarySort.POPULAR
            : RelatedDiarySort.LATEST);
  }
}
