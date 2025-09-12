import 'package:bookstar/modules/diary_comment/model/diary_comment_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_comment_state.freezed.dart';

@freezed
abstract class FeedCommentState with _$FeedCommentState {
  const factory FeedCommentState({
    @Default([]) List<DiaryCommentResponse> comments,
    @Default(false) bool hasNext,
    @Default(-1) int nextCursor,
    @Default(-1) int diaryId,
  }) = _FeedCommentState;
}