import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/cursor_page_response.dart';
import 'package:book/common/models/response_form.dart';
import 'package:book/diary_comment/models/comment_request.dart';
import 'package:book/diary_comment/models/diary_comment_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_comment_repository.g.dart';

@Riverpod(keepAlive: true)
DiaryCommentRepository diaryCommentRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return DiaryCommentRepository(dio);
}

@RestApi()
abstract class DiaryCommentRepository {
  factory DiaryCommentRepository(Dio dio, {String baseUrl}) =
      _DiaryCommentRepository;

  @GET('/api/v2/reading-diaries/{diaryId}/comments')
  Future<ResponseForm<CursorPageResponse<DiaryCommentResponse>>> findComments({
    @Path('diaryId') required int diaryId,
    @Query('cursorId') int? cursorId,
    @Query('size') int? size,
  });

  @POST('/api/v2/reading-diaries/{diaryId}/comments')
  Future<ResponseForm<void>> createComment(
    @Path('diaryId') int diaryId,
    @Body() CommentRequest request,
  );

  @DELETE('/api/v2/reading-diaries/comments/{commentId}')
  Future<ResponseForm<void>> deleteComment(
    @Path('commentId') int commentId,
  );
}
