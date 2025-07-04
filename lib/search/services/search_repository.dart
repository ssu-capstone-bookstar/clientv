import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/common/models/response_form.dart';
import 'package:book/search/models/search_book_response.dart';
import 'package:book/search/models/search_history_response.dart';
import 'package:book/search/models/search_user_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_repository.g.dart';

@Riverpod(keepAlive: true)
SearchRepository searchRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return SearchRepository(dio);
}

@RestApi()
abstract class SearchRepository {
  factory SearchRepository(Dio dio, {String baseUrl}) = _SearchRepository;

  @GET('/api/v2/search/books/aladin')
  Future<ResponseForm<CursorPageResponse<SearchBookResponse>>> searchBooks(
    @Query('query') String query, {
    @Query('start') int start = 1,
  });

  @GET('/api/v2/search/histories')
  Future<ResponseForm<List<SearchHistoryResponse>>> getSearchHistories();

  @DELETE('/api/v2/search/histories')
  Future<ResponseForm<void>> deleteSearchHistory(@Query('query') String query);

  @GET('/api/v2/search/users/{nickName}')
  Future<ResponseForm<List<SearchUserResponse>>> getUsersByName(
    @Path('nickName') String nickName,
  );
}
