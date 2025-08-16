import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/diary_comment/model/diary_comment_response.dart';
import 'package:book/modules/diary_comment/model/diary_reply_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class CommentCard extends ConsumerWidget {
  const CommentCard(
      {super.key,
      this.comment,
      this.reply,
      required this.onDelete,
      this.onReply,
      required this.onReport});
  final DiaryCommentResponse? comment;
  final DiaryReplyResponse? reply;
  final Function(int) onDelete;
  final Function(int)? onReply;
  final Function(int) onReport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authViewModelProvider).value;
    final bool isMyComment = (comment?.writer.memberId ?? reply?.writer.memberId ?? 0) == ((user is AuthSuccess) ? user.memberId : 0);

    return Slidable(
      key: ValueKey(comment?.commentId ?? reply?.commentId ?? 0),
      endActionPane: 
          ActionPane(
              motion: const DrawerMotion(), // 또는 StretchMotion, BehindMotion 등
              extentRatio: 0.20,
              children: [
                SlidableAction(
                  onPressed: (context) {
                    if (isMyComment) {
                      onDelete(comment?.commentId ?? reply?.commentId ?? 0);
                    } else {
                      onReport(comment?.commentId ?? reply?.commentId ?? 0);
                    }
                  },
                  backgroundColor: ColorName.g7,
                  foregroundColor: ColorName.r,
                  label: isMyComment ? '삭제' : '신고',
                ),
              ],
            ),
          
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: reply != null ? ColorName.dim1 : null,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: 16 + (reply != null ? 50 : 0),
              right: 16,
              top: 8,
              bottom: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          backgroundColor: ColorName.g7,
                          backgroundImage: CachedNetworkImageProvider(
                            comment?.writer.profileImage ??
                                reply?.writer.profileImage ??
                                "",
                          ),
                          child: (comment?.writer.profileImage.isEmpty ??
                                  reply?.writer.profileImage.isEmpty ??
                                  true)
                              ? const Icon(Icons.person,
                                  size: 40, color: ColorName.g5)
                              : null),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              comment?.writer.nickName ??
                                  reply?.writer.nickName ??
                                  "",
                              style: AppTexts.b9.copyWith(color: ColorName.w1)),
                          SizedBox(
                            height: 3,
                          ),
                          Text(comment?.content ?? reply?.content ?? "",
                              overflow: TextOverflow.clip,
                              style:
                                  AppTexts.b11.copyWith(color: ColorName.g2)),
                          SizedBox(
                            height: 6,
                          ),
                          if (comment != null && reply == null)
                            InkWell(
                              onTap: () {
                                onReply?.call(comment!.commentId);
                              },
                              child: Text("답글달기",
                                  style: AppTexts.b11
                                      .copyWith(color: ColorName.g5)),
                            ),
                        ],
                      )
                    ],
                  ),

                  /// TODO: 좋아요 버튼 구현(mvp에선 제외)
                  // Text("좋아요버튼"),
                  _getDateWidget(
                      "${comment?.createdAt ?? reply?.createdAt ?? ""}")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDateWidget(String createdAt) {
    DateTime dt = DateTime.parse(createdAt);
    String formatted = DateFormat('MM/dd\nHH:mm').format(dt);
    return Text(formatted, style: AppTexts.b12.copyWith(color: ColorName.w1));
  }
}
