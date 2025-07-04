import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/common/models/response_form.dart';
import 'package:book/reading_diary/models/diary_request.dart';
import 'package:book/reading_diary/models/diary_response.dart';
import 'package:book/reading_diary/models/liked_diary_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
  Future<ResponseForm<List<DiaryResponse>>> getMemberDiaries(
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
}
