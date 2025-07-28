import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/liked_diary_thumbnail_response.dart';
import '../model/liked_diary_feed_response.dart';

part 'liked_diary_repository.g.dart';

@RestApi()
abstract class LikedDiaryRepository {
  factory LikedDiaryRepository(Dio dio, {String baseUrl}) =
      _LikedDiaryRepository;

  @GET('/api/v2/reading-diaries/likes/thumbnail')
  Future<LikedDiaryThumbnailResponse> getLikedDiaryThumbnails({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @GET('/api/v2/reading-diaries/likes/feed')
  Future<LikedDiaryFeedResponse> getLikedDiaryFeeds({
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });
}
