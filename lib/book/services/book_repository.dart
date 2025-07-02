import 'package:book/book/models/book_detail_response.dart';
import 'package:book/book/models/book_overview_response.dart';
import 'package:book/book/models/book_rating_request.dart';
import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/response_form.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
}
