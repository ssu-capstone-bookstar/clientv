import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/response_form.dart';
import '../model/book_detail_response.dart';
import '../model/book_overview_response.dart';
import '../model/book_rating_request.dart';

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
