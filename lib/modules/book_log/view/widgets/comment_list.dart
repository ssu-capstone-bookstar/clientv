import 'package:book/modules/book_log/view/widgets/comment_card.dart';
import 'package:book/modules/diary_comment/model/diary_comment_response.dart';
import 'package:book/modules/diary_comment/model/diary_reply_response.dart';
import 'package:flutter/material.dart';

class CommentList extends StatelessWidget {
  const CommentList(
      {super.key,
      this.comments,
      this.replies,
      required this.onDelete,
      this.onReply});
  final List<DiaryCommentResponse>? comments;
  final List<DiaryReplyResponse>? replies;
  final Function(int) onDelete;
  final Function(int, int)? onReply;

  @override
  Widget build(BuildContext context) {
    return comments != null
        ? ListView.builder(
            reverse: true,
            itemCount: comments!.length,
            itemBuilder: (context, index) {
              final comment = comments![index];
              return Column(
                children: [
                  CommentCard(
                      comment: comment,
                      onDelete: onDelete,
                      onReply: (commentId) => onReply?.call(commentId, index)),
                  if (comment.replies.isNotEmpty)
                    CommentList(replies: comment.replies, onDelete: onDelete)
                ],
              );
            },
          )
        : replies != null
            ? ListView.builder(
                reverse: true,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: replies!.length,
                itemBuilder: (context, index) {
                  final reply = replies![index];
                  return CommentCard(reply: reply, onDelete: onDelete);
                },
              )
            : Container();
  }
}
