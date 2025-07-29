import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../infra/network/dio_client.dart';
import '../../../common/models/cursor_page_response.dart';
import '../../../common/models/response_form.dart';
import '../model/scrapped_diary_thumbnail_response.dart';
import '../model/scrapped_diary_feed_response.dart';

part 'scrapped_diary_repository.g.dart';

@Riverpod(keepAlive: true)
ScrappedDiaryRepository scrappedDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ScrappedDiaryRepository(dio);
}

@RestApi(baseUrl: '/api/v2')
abstract class ScrappedDiaryRepository {
  factory ScrappedDiaryRepository(Dio dio, {String baseUrl}) =
      _ScrappedDiaryRepository;

  @GET('/scraps/reading-diaries/thumbnail')
  Future<ResponseForm<CursorPageResponse<ScrappedDiaryThumbnailResponse>>>
      getScrappedDiaryThumbnails({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/scraps/reading-diaries/feed')
  Future<ResponseForm<CursorPageResponse<ScrappedDiaryFeed>>>
      getScrappedDiaryFeeds({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @DELETE('/scraps/reading-diaries/{diaryId}')
  Future<ResponseForm<void>> deleteScrappedDiary(
    @Path('diaryId') int diaryId,
  );
}
