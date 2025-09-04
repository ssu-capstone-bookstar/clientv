import 'package:book/modules/reading_diary/model/search_user_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/cursor_page_response.dart';
import '../../../common/models/response_form.dart';
import '../model/search_book_response.dart';
import '../model/search_history_response.dart';

part 'search_book_repository.g.dart';

@Riverpod(keepAlive: true)
SearchBookRepository searchBookRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return SearchBookRepository(dio);
}

@RestApi()
abstract class SearchBookRepository {
  factory SearchBookRepository(Dio dio, {String baseUrl}) =
      _SearchBookRepository;

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
