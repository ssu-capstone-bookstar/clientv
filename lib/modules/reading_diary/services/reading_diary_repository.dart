import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/remote/client/dio_client.dart';
import '../../../common/models/cursor_page_response.dart';
import '../../../common/models/dual_cursor_page_response.dart';
import '../../../common/models/response_form.dart';
import '../models/diary_request.dart';
import '../models/diary_response.dart';
import '../models/liked_diary_response.dart';
import '../models/related_diary_sort.dart';
import '../models/related_diary_thumbnail.dart';

part 'reading_diary_repository.g.dart';

@Riverpod(keepAlive: true)
ReadingDiaryRepository readingDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ReadingDiaryRepository(dio);
}

@RestApi()
abstract class ReadingDiaryRepository {
  factory ReadingDiaryRepository(Dio dio, {String baseUrl}) =
      _ReadingDiaryRepository;

  @POST('/api/v2/reading-diaries/challenges/{challengeId}')
  Future<ResponseForm<DiaryResponse>> createDiary(
    @Path('challengeId') int challengeId,
    @Body() DiaryRequest request,
  );

  @DELETE('/api/v2/reading-diaries/{diaryId}')
  Future<ResponseForm<dynamic>> deleteDiary(@Path('diaryId') int diaryId);

  @GET('/api/v2/reading-diaries/members/{memberId}')
  Future<ResponseForm<CursorPageResponse<DiaryResponse>>> getMemberDiaries(
    @Path('memberId') int memberId, {
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/api/v2/reading-diaries/members/{memberId}/challenges/{challengeId}')
  Future<ResponseForm<List<DiaryResponse>>> getDiariesByChallenge(
    @Path('memberId') int memberId,
    @Path('challengeId') int challengeId,
  );

  @POST('/api/v2/reading-diaries/{diaryId}/like')
  Future<ResponseForm<dynamic>> likeDiary(@Path('diaryId') int diaryId);

  @DELETE('/api/v2/reading-diaries/{diaryId}/like')
  Future<ResponseForm<dynamic>> unlikeDiary(@Path('diaryId') int diaryId);

  @GET('/api/v2/reading-diaries/me')
  Future<ResponseForm<CursorPageResponse<LikedDiaryResponse>>> getLikedDiaries({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/api/v2/books/{bookId}/related/reading-diaries')
  Future<ResponseForm<DualCursorPageResponse<RelatedDiaryThumbnail>>>
      getRelatedDiaries(
    @Path('bookId') int bookId, {
    @Query('relatedDiarySort') RelatedDiarySort? relatedDiarySort,
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });
}
