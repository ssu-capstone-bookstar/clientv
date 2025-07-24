import 'package:book/modules/book_log/state/feed_comment_state.dart';
import 'package:book/modules/diary_comment/model/comment_request.dart';
import 'package:book/modules/diary_comment/repository/diary_comment_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_comment_view_model.g.dart';

@riverpod
class FeedCommentViewModel extends _$FeedCommentViewModel {
  late final DiaryCommentRepository _diaryCommentRepository;

  @override
  FutureOr<FeedCommentState> build(int diaryId) async {
    _diaryCommentRepository = ref.watch(diaryCommentRepositoryProvider);
    return await initState(diaryId);
  }

  Future<FeedCommentState> initState(int diaryId) async {
    final prev = state.value ?? FeedCommentState();
    final response =
        await _diaryCommentRepository.findComments(diaryId: diaryId);
    state = AsyncValue.data(prev.copyWith(
      comments: response.data.data,
      hasNext: response.data.hasNext,
      nextCursor: response.data.nextCursor ?? -1,
      diaryId: diaryId,
    ));
    return state.value ?? FeedCommentState();
  }

  Future<void> addComment(int diaryId, String content) async {
    // TODO: POST response 추가하는 식으로 변경되면 수정
    // final prev = state.value ?? FeedCommentState();
    // final response = await _diaryCommentRepository.createComment(
    //     diaryId, CommentRequest(content: content));
    // state = AsyncValue.data(prev.copyWith(
    //   comments: [...prev.comments, response.data],
    // ));

    await _diaryCommentRepository.createComment(
        diaryId, CommentRequest(content: content));
    await initState(diaryId);
  }

  Future<void> addReply(int diaryId, String content, int parentCommentId) async {
    // TODO: POST response 추가하는 식으로 변경되면 수정
    // final prev = state.value ?? FeedCommentState();
    // final response = await _diaryCommentRepository.createComment(
    // diaryId, CommentRequest(content: content, parentCommentId: parentCommentId));
    // state = AsyncValue.data(prev.copyWith(
    //   comments: prev.comments.map((comment) {
    //     if (comment.commentId == parentCommentId) {
    //       return comment.copyWith(
    //         replies: [...comment.replies, response.data],
    //       );
    //     }
    //     return comment;
    //   }).toList(),
    // ));

    await _diaryCommentRepository.createComment(
        diaryId, CommentRequest(content: content, parentCommentId: parentCommentId));
    await initState(diaryId);
  }
  Future<void> deleteComment(int commentId) async {
    // TODO: POST response 추가하는 식으로 변경되면 수정
    // final prev = state.value ?? FeedCommentState();
    // await _diaryCommentRepository.deleteComment(commentId);
    // state = AsyncValue.data(prev.copyWith(
    //   comments: prev.comments.where((comment) {
    //     return comment.commentId != commentId;
    //   }).toList(),
    // ));

    await _diaryCommentRepository.deleteComment(commentId);
    await initState(diaryId);
  }

  // FeedCommentState? getCurrentState() {
  //   return state.value;
  // }

  // Future<FeedCommentState> refreshState() async {
  //   final prev = state.value ?? FeedCommentState();
  //   if (prev.nextCursor != -1) {
  //     final responseThumbnails = await _readingDiaryRepository
  //         .getReadingDiariesMembersThumbnails(prev.memberId,
  //             cursorId: prev.nextCursor);

  //     /// TODO: cursorId로 통일하는게?
  //     final responseFeeds = await _readingDiaryRepository
  //         .getReadingDiariesMembersFeed(prev.memberId, cursor: prev.nextCursor);
  //     state = AsyncValue.data(prev.copyWith(
  //       thumbnails: [...prev.thumbnails, ...responseThumbnails.data.data],
  //       feeds: [...prev.feeds, ...responseFeeds.data.data],
  //       hasNext: responseFeeds.data.hasNext,
  //       nextCursor: responseFeeds.data.nextCursor ?? -1,
  //     ));

  //     return state.value ?? FeedCommentState();
  //   }

  //   return prev;
  // }

  // Future<FeedCommentState> handleFeedLike(
  //     int diaryId, bool liked, int index) async {
  //   if (liked) {
  //     await _readingDiaryRepository.unlikeDiary(diaryId);
  //   } else {
  //     await _readingDiaryRepository.likeDiary(diaryId);
  //   }
  //   final prev = state.value ?? FeedCommentState();
  //   state = AsyncValue.data(prev.copyWith(
  //     feeds: prev.feeds.map((feed) {
  //       if (feed.diaryId == diaryId) {
  //         return feed.copyWith(
  //           liked: !feed.liked,
  //           likeCount: feed.liked ? feed.likeCount - 1 : feed.likeCount + 1,
  //         );
  //       }
  //       return feed;
  //     }).toList(),
  //   ));
  //   return state.value ?? FeedCommentState();
  // }
}
