import 'package:book/modules/reading_diary/model/report_diary_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../infra/network/dio_client.dart';
import '../../../common/models/cursor_page_response.dart';
import '../../../common/models/dual_cursor_page_response.dart';
import '../../../common/models/response_form.dart';
import '../model/challenge_diary_thumbnail_response.dart';
import '../model/diary_request.dart';
import '../model/diary_response.dart';
import '../model/diary_thumbnail_response.dart';
import '../model/liked_diary_response.dart';
import '../model/related_diary_sort.dart';
import '../model/related_diary_thumbnail.dart';

part 'reading_diary_repository.g.dart';

@Riverpod(keepAlive: true)
ReadingDiaryRepository readingDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ReadingDiaryRepository(dio);
}

@RestApi(baseUrl: '/api/v2')
abstract class ReadingDiaryRepository {
  factory ReadingDiaryRepository(Dio dio, {String baseUrl}) =
      _ReadingDiaryRepository;

  @POST('/reading-diaries')
  Future<ResponseForm<DiaryResponse>> createDiary(
    @Body() DiaryRequest request,
  );

  @DELETE('/reading-diaries/{diaryId}')
  Future<ResponseForm<dynamic>> deleteDiary(@Path('diaryId') int diaryId);

  @GET('/reading-diaries/members/{memberId}/thumbnail')
  Future<ResponseForm<CursorPageResponse<DiaryThumbnail>>>
      getReadingDiariesMembersThumbnails(
    @Path('memberId') int memberId, {
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  /// 특정 사용자가 작성한 독서일기 피드 목록을 최신순으로 조회합니다.
  @GET('/reading-diaries/members/{memberId}/feed')
  Future<ResponseForm<CursorPageResponse<DiaryResponse>>>
      getReadingDiariesMembersFeed(
    @Path('memberId') int memberId, {
    @Query('cursor') int? cursor, // 서버 명세에 따라 파라미터 이름이 다를 수 있음
    @Query('size') int? size,
  });

  @GET('/reading-diaries/books/{bookId}')
  Future<ResponseForm<CursorPageResponse<DiaryResponse>>> getBookDiaries(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/reading-diaries/members/{memberId}/challenges/{challengeId}')
  Future<ResponseForm<DualCursorPageResponse<ChallengeDiaryThumbnailResponse>>>
      getDiariesByChallenge(
    @Path('memberId') int memberId,
    @Path('challengeId') int challengeId, {
    @Query('sort') RelatedDiarySort? sort,
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });

  @POST('/reading-diaries/{diaryId}/like')
  Future<ResponseForm<void>> likeDiary(@Path('diaryId') int diaryId);

  @DELETE('/reading-diaries/{diaryId}/like')
  Future<ResponseForm<void>> unlikeDiary(@Path('diaryId') int diaryId);

  @GET('/reading-diaries/me')
  Future<ResponseForm<CursorPageResponse<LikedDiaryResponse>>> getLikedDiaries({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/books/{bookId}/reading-diaries/thumbnail')
  Future<ResponseForm<DualCursorPageResponse<RelatedDiaryThumbnail>>>
      getRelatedDiaries(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });

  @GET('/books/{bookId}/reading-diaries/thumbnail/popular')
  Future<ResponseForm<DualCursorPageResponse<RelatedDiaryThumbnail>>>
      getRelatedDiariesPopular(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });

  @POST('/report')
  Future<ResponseForm<void>> reportDiary(
    @Body() ReportDiaryRequest request,
  );
  @GET('/books/{bookId}/my-reading-diaries/thumbnail')
  Future<ResponseForm<DualCursorPageResponse<RelatedDiaryThumbnail>>>
      getMyRelatedDiaries(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });

  @GET('/books/{bookId}/my-reading-diaries/thumbnail/popular')
  Future<ResponseForm<DualCursorPageResponse<RelatedDiaryThumbnail>>>
      getMyRelatedDiariesPopular(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });
}
