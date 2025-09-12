import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/diary_response.dart';
import 'package:bookstar/modules/reading_diary/model/report_request.dart';
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
  late ReadingDiaryRepository _readingDiaryRepository;

  @override
  Future<RelatedDiaryState> build(int bookId) async {
    _readingDiaryRepository = ref.read(readingDiaryRepositoryProvider);
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
    final response = sort == RelatedDiarySort.LATEST
        ? await _readingDiaryRepository.getRelatedDiariesThumbnail(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          )
        : await _readingDiaryRepository.getRelatedDiariesThumbnailPopular(
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
        ? await _readingDiaryRepository.getRelatedDiariesFeed(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          )
        : await _readingDiaryRepository.getRelatedDiariesFeedPopular(
            bookId,
            cursorId: cursorId,
            cursorScore: cursorScore,
            size: 18,
          );
    return response.data;
  }

  Future<void> refreshState() async {
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

  Future<RelatedDiaryState> handleFeedLike(
      int diaryId, bool liked, int index) async {
    if (liked) {
      await _readingDiaryRepository.unlikeDiary(diaryId);
    } else {
      await _readingDiaryRepository.likeDiary(diaryId);
    }
    final prev = state.value ?? RelatedDiaryState();
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
    return state.value ?? RelatedDiaryState();
  }

  Future<RelatedDiaryState> handleFeedScrap(
      int diaryId, bool scraped, int index) async {
    if (scraped) {
      await _readingDiaryRepository.unscrapDiary(diaryId);
    } else {
      await _readingDiaryRepository.scrapDiary(diaryId);
    }
    final prev = state.value ?? RelatedDiaryState();
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
    return state.value ?? RelatedDiaryState();
  }

  RelatedDiaryState changeCommentCount(int diaryId, int commentCount) {
    final prev = state.value ?? RelatedDiaryState();
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
    return state.value ?? RelatedDiaryState();
  }

  Future<RelatedDiaryState> deleteFeed(int diaryId) async {
    await _readingDiaryRepository.deleteDiary(diaryId);
    final prev = state.value ?? RelatedDiaryState();
    state = AsyncValue.data(prev.copyWith(
      feeds: prev.feeds.where((feed) => feed.diaryId != diaryId).toList(),
      thumbnails: prev.thumbnails
          .where((thumbnail) => thumbnail.diaryId != diaryId)
          .toList(),
    ));
    return state.value ?? RelatedDiaryState();
  }

  Future<void> reportFeed(
      int diaryId, ReportType reportType, String content) async {
    await _readingDiaryRepository.report(ReportRequest(
        readingDiaryId: diaryId,
        reportType: reportType,
        reportDomain: ReportDomain.READING_DIARY,
        content: content));
  }

  Future<void> toggleSort() async {
    await initState(
        state.value!.bookId,
        state.value!.sort == RelatedDiarySort.LATEST
            ? RelatedDiarySort.POPULAR
            : RelatedDiarySort.LATEST);
  }
}
