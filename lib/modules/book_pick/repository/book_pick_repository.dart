import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/modules/book_pick/model/like_book_response.dart';
import 'package:book/modules/book_pick/model/youtube_recommend_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/response_form.dart';

part 'book_pick_repository.g.dart';

@Riverpod(keepAlive: true)
BookPickRepository bookPickRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return BookPickRepository(dio);
}

@RestApi()
abstract class BookPickRepository {
  factory BookPickRepository(Dio dio, {String baseUrl}) = _BookPickRepository;

  @GET('/api/v2/books/my-likes')
  Future<ResponseForm<CursorPageResponse<LikeBookResponse>>> getMyLikes({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/api/v2/youtube/recommend')
  Future<ResponseForm<List<YoutubeRecommendResponse>>> getYoutubeRecommend();

  @POST('/api/v2/youtube/watch/{videoId}')
  Future<ResponseForm<void>> watchYoutubeVideo({
    @Path('videoId') required String videoId,
  });
}
