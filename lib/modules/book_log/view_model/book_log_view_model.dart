import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/modules/book_log/state/book_log_state.dart';
import 'package:book/modules/profile/model/profile_with_counts.dart';
import 'package:book/modules/profile/repository/profile_repository.dart';
import 'package:book/modules/profile/view_model/profile_view_model.dart';
import 'package:book/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:book/modules/reading_diary/model/report_diary_request.dart';
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
  FutureOr<BookLogState> build(int? memberId) async {
    _readingDiaryRepository = ref.watch(readingDiaryRepositoryProvider);
    _profileRepository = ref.watch(profileRepositoryProvider);
    return await initState(memberId);
  }

  Future<BookLogState> initState(int? memberId) async {
    final prev = state.value ?? BookLogState();

    if (memberId == null) {
      final responseFeeds =
          await _readingDiaryRepository.getReadingDiariesMembersFollowingFeed();
      state = AsyncValue.data(prev.copyWith(
        feeds: responseFeeds.data.data,
        hasNext: responseFeeds.data.hasNext,
        nextCursor: responseFeeds.data.nextCursor ?? -1,
      ));
      return state.value ?? BookLogState();
    } else {
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
  }

  BookLogState? getCurrentState() {
    return state.value;
  }

  Future<BookLogState> refreshState() async {
    final prev = state.value ?? BookLogState();
    if (prev.nextCursor != -1) {
      if (prev.memberId == null) {
        final responseFeeds = await _readingDiaryRepository
            .getReadingDiariesMembersFollowingFeed(cursor: prev.nextCursor);
        state = AsyncValue.data(prev.copyWith(
          feeds: [...prev.feeds, ...responseFeeds.data.data],
          hasNext: responseFeeds.data.hasNext,
          nextCursor: responseFeeds.data.nextCursor ?? -1,
        ));
      } else {
        final responseThumbnails = await _readingDiaryRepository
            .getReadingDiariesMembersThumbnails(prev.memberId!,
                cursorId: prev.nextCursor);

        final responseFeeds = await _readingDiaryRepository
            .getReadingDiariesMembersFeed(prev.memberId!,
                cursor: prev.nextCursor);
        state = AsyncValue.data(prev.copyWith(
          thumbnails: [...prev.thumbnails, ...responseThumbnails.data.data],
          feeds: [...prev.feeds, ...responseFeeds.data.data],
          hasNext: responseFeeds.data.hasNext,
          nextCursor: responseFeeds.data.nextCursor ?? -1,
        ));

        return state.value ?? BookLogState();
      }
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

  Future<BookLogState> handleFeedScrap(
      int diaryId, bool scraped, int index) async {
    if (scraped) {
      await _readingDiaryRepository.unscrapDiary(diaryId);
    } else {
      await _readingDiaryRepository.scrapDiary(diaryId);
    }
    final prev = state.value ?? BookLogState();
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

  Future<BookLogState> deleteFeed(int diaryId) async {
    await _readingDiaryRepository.deleteDiary(diaryId);
    final prev = state.value ?? BookLogState();
    state = AsyncValue.data(prev.copyWith(
      feeds: prev.feeds.where((feed) => feed.diaryId != diaryId).toList(),
      thumbnails: prev.thumbnails
          .where((thumbnail) => thumbnail.diaryId != diaryId)
          .toList(),
    ));
    return state.value ?? BookLogState();
  }

  Future<void> reportFeed(
      int diaryId, ReportType reportType, String content) async {
    await _readingDiaryRepository.reportDiary(ReportDiaryRequest(
        readingDiaryId: diaryId, reportType: reportType, content: content));
  }
}

enum ReportType {
  OBSCENE_AND_SEXUALLY_SUGGESTIVE_CONTENT("음란물 및 선정적 콘텐츠"),
  HATE_SPEECH_AND_DISPARAGING_REMARKS("혐오 및 비하 표현"),
  FALSE_INFORMATION_AND_FRAUD("허위 정보 및 사기"),
  VIOLENT_AND_SELF_HARM_THREATENING_CONTENT("폭력 및 자해/위협 콘텐츠"),
  ILLEGAL_FILMING_AND_DRUGS_GAMBLING("불법 촬영물 및 마약/도박"),
  SPAM_AND_ADVERTISING("스팸 및 광고"),
  OTHER("기타");

  const ReportType(this.text);
  final String text;
}

List<ReportType> reportTypes = [
  ReportType.OBSCENE_AND_SEXUALLY_SUGGESTIVE_CONTENT,
  ReportType.HATE_SPEECH_AND_DISPARAGING_REMARKS,
  ReportType.FALSE_INFORMATION_AND_FRAUD,
  ReportType.VIOLENT_AND_SELF_HARM_THREATENING_CONTENT,
  ReportType.ILLEGAL_FILMING_AND_DRUGS_GAMBLING,
  ReportType.SPAM_AND_ADVERTISING,
  ReportType.OTHER,
];
