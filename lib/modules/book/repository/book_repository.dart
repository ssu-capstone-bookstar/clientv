import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/response_form.dart';
import '../model/book_detail_response.dart';
import '../model/book_overview_response.dart';
import '../model/book_rating_request.dart';
import '../../../common/models/cursor_page_response.dart';
import '../../../common/models/dual_cursor_page_response.dart';
import '../../../modules/reading_diary/model/diary_thumbnail_response.dart';
import '../../../modules/reading_diary/model/related_diary_thumbnail.dart';
import '../../../modules/reading_diary/model/diary_response.dart';

part 'book_repository.g.dart';

@Riverpod(keepAlive: true)
BookRepository bookRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return BookRepository(dio);
}

@RestApi()
abstract class BookRepository {
  factory BookRepository(Dio dio, {String baseUrl}) = _BookRepository;

  @GET('/api/v1/books/{bookId}')
  Future<ResponseForm<BookDetailResponse>> getBookDetail(
    @Path('bookId') int bookId,
  );

  @GET('/api/v2/books/{bookId}/overview')
  Future<ResponseForm<BookOverviewResponse>> getBookOverview(
    @Path('bookId') int bookId,
  );

  @POST('/api/v2/books/{bookId}/ratings')
  Future<ResponseForm<void>> rateBook(
    @Path('bookId') int bookId,
    @Body() BookRatingRequest request,
  );

  @DELETE('/api/v2/books/{bookId}/ratings')
  Future<ResponseForm<void>> deleteBookRating(
    @Path('bookId') int bookId,
  );

  @POST('/api/v2/books/{bookId}/like')
  Future<ResponseForm<void>> createBookLike(
    @Path('bookId') int bookId,
  );

  @DELETE('/api/v2/books/{bookId}/like')
  Future<ResponseForm<void>> deleteBookLike(
    @Path('bookId') int bookId,
  );

  /// 특정 책과 관련된 독서일기 썸네일 목록을 최신순으로 조회합니다.
  @GET('/api/v2/books/{bookId}/reading-diaries/thumbnail')
  Future<ResponseForm<CursorPageResponse<DiaryThumbnail>>>
      getRelatedLatestDiaryThumbnailsByBook(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  /// 특정 책과 관련된 독서일기 썸네일 목록을 인기순(DB 기반)으로 조회합니다.
  @GET('/api/v2/books/{bookId}/reading-diaries/thumbnail/popular')
  Future<ResponseForm<DualCursorPageResponse<RelatedDiaryThumbnail>>>
      getRelatedPopularDiaryThumbnailsByBook(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });

  /// 특정 책의 독서일기 피드 목록을 최신순으로 조회합니다.
  @GET('/api/v2/books/{bookId}/reading-diaries/feed')
  Future<ResponseForm<CursorPageResponse<DiaryResponse>>>
      getLatestDiaryFeedsByBook(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  /// 특정 책의 독서일기 피드 목록을 인기순(DB 기반)으로 조회합니다.
  @GET('/api/v2/books/{bookId}/reading-diaries/feed/popular')
  Future<ResponseForm<DualCursorPageResponse<DiaryResponse>>>
      getPopularDiaryFeedsByBook(
    @Path('bookId') int bookId, {
    @Query('cursorId') int? cursorId,
    @Query('cursorScore') double? cursorScore,
    @Query('size') int? size,
  });
}
