import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/modules/book_log/state/book_log_state.dart';
import 'package:book/modules/profile/model/profile_with_counts.dart';
import 'package:book/modules/profile/repository/profile_repository.dart';
import 'package:book/modules/profile/view_model/profile_view_model.dart';
import 'package:book/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:book/modules/reading_diary/repository/reading_diary_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_log_view_model.g.dart';

// Provider for profile (delegates to profileProvider)
final bookLogProfileProvider =
    FutureProvider.family<ProfileWithCounts, int>((ref, memberId) async {
  final profile = await ref.watch(profileProvider(memberId).future);
  return profile ?? const ProfileWithCounts();
});

// Provider for diaries (delegates to reading_diary repository)
final bookLogDiariesProvider =
    FutureProvider.family<CursorPageResponse<DiaryThumbnail>, int>(
        (ref, memberId) async {
  final repo = ref.watch(readingDiaryRepositoryProvider);
  final response = await repo.getReadingDiariesMembersThumbnails(memberId);
  return response.data;
});

@riverpod
class BookLogViewModel extends _$BookLogViewModel {
  late final ReadingDiaryRepository _readingDiaryRepository;
  late final ProfileRepository _profileRepository;

  @override
  FutureOr<BookLogState> build(int memberId) async {
    _readingDiaryRepository = ref.watch(readingDiaryRepositoryProvider);
    _profileRepository = ref.watch(profileRepositoryProvider);
    return await initState(memberId);
  }

  Future<BookLogState> initState(int memberId) async {
    final prev = state.value ?? BookLogState();
    final responseProfile =
        await _profileRepository.getProfileById(memberId.toString());
    final responseThumbnails = await _readingDiaryRepository
        .getReadingDiariesMembersThumbnails(memberId);
    final responseFeeds =
        await _readingDiaryRepository.getReadingDiariesMembersFeed(memberId);
    state = AsyncValue.data(prev.copyWith(
      profile: responseProfile.data,
      thumbnails: responseThumbnails.data.data,
      feeds: responseFeeds.data.data,
      hasNext: responseFeeds.data.hasNext,
      nextCursor: responseFeeds.data.nextCursor ?? -1,
      memberId: memberId,
    ));
    return state.value ?? BookLogState();
  }

  BookLogState? getCurrentState() {
    return state.value;
  }

  Future<BookLogState> refreshState() async {
    final prev = state.value ?? BookLogState();
    if (prev.nextCursor != -1) {
      final responseThumbnails = await _readingDiaryRepository
          .getReadingDiariesMembersThumbnails(prev.memberId,
              cursorId: prev.nextCursor);

      /// TODO: cursorId로 통일하는게?
      final responseFeeds = await _readingDiaryRepository
          .getReadingDiariesMembersFeed(prev.memberId, cursor: prev.nextCursor);
      state = AsyncValue.data(prev.copyWith(
        thumbnails: [...prev.thumbnails, ...responseThumbnails.data.data],
        feeds: [...prev.feeds, ...responseFeeds.data.data],
        hasNext: responseFeeds.data.hasNext,
        nextCursor: responseFeeds.data.nextCursor ?? -1,
      ));

      return state.value ?? BookLogState();
    }

    return prev;
  }

  Future<BookLogState> handleFeedLike(
      int diaryId, bool liked, int index) async {
    if (liked) {
      await _readingDiaryRepository.unlikeDiary(diaryId);
    } else {
      await _readingDiaryRepository.likeDiary(diaryId);
    }
    final prev = state.value ?? BookLogState();
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
    return state.value ?? BookLogState();
  }

  BookLogState changeCommentCount(int diaryId, int commentCount) {
    final prev = state.value ?? BookLogState();
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
    return state.value ?? BookLogState();
  }
}
