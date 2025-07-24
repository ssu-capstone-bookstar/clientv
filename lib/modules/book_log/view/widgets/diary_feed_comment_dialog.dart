import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/book_log/view/widgets/comment_list.dart';
import 'package:book/modules/book_log/view/widgets/comment_text_field.dart';
import 'package:book/modules/book_log/view_model/feed_comment_view_model.dart';
import 'package:book/modules/diary_comment/model/diary_comment_response.dart';
import 'package:flutter/material.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiaryFeedCommentDialog extends ConsumerStatefulWidget {
  final int diaryId;

  const DiaryFeedCommentDialog({super.key, required this.diaryId});

  @override
  ConsumerState<DiaryFeedCommentDialog> createState() =>
      _DiaryFeedCommentDialogState();
}

class _DiaryFeedCommentDialogState
    extends ConsumerState<DiaryFeedCommentDialog> {
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textController = TextEditingController();
  DiaryCommentResponse? targetParentComment;
  bool hasChanged = false;

  void _onChanged() {
    setState(() {
      hasChanged = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {});
    });
    // _setupScrollListener();
  }

  // void _setupScrollListener() {
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.pixels >=
  //             _scrollController.position.maxScrollExtent * 0.8 &&
  //         !_isLoadingMore) {
  //       _onBottomReached();
  //     }
  //   });
  // }

  // void _onBottomReached() {
  //   final now = DateTime.now();
  //   // 디바운싱: 마지막 호출로부터 2초가 지나지 않았으면 무시
  //   if (_lastBottomReachedTime != null &&
  //       now.difference(_lastBottomReachedTime!).inSeconds < 2) {
  //     return;
  //   }
  //   // 이미 로딩 중이면 무시
  //   if (_isLoadingMore) {
  //     return;
  //   }
  //   _lastBottomReachedTime = now;
  //   _isLoadingMore = true;
  //   // 실제 로딩 로직 실행
  //   _loadMoreThumbnails();
  // }

  // void _loadMoreThumbnails() async {
  //   await ref
  //       .read(bookLogViewModelProvider(widget.memberId).notifier)
  //       .refreshState();
  //   _isLoadingMore = false;
  // }

  // Future<void> _onRefresh() async {
  //   await ref
  //       .read(bookLogViewModelProvider(widget.memberId).notifier)
  //       .initState(widget.memberId);
  // }

  _resetText() {
    setState(() {
      _textController.clear();
      targetParentComment = null;
    });
  }

  _showKeyboard() {
    _focusNode.requestFocus();
  }

  _hideKeyboard() {
    _focusNode.unfocus();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  updateTargetParentComment(DiaryCommentResponse? comment) {
    setState(() {
      targetParentComment = comment;
    });
  }

  @override
  Widget build(BuildContext context) {
    final stateAsync = ref.watch(feedCommentViewModelProvider(widget.diaryId));
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    handleCommentSend() async {
      if (targetParentComment == null) {
        await ref
            .read(feedCommentViewModelProvider(widget.diaryId).notifier)
            .addComment(widget.diaryId, _textController.text);
      } else {
        await ref
            .read(feedCommentViewModelProvider(widget.diaryId).notifier)
            .addReply(widget.diaryId, _textController.text,
                targetParentComment!.commentId);
      }
      _resetText();
      _hideKeyboard();
      _onChanged();
    }

    handleCommentDelete(int commentId) async {
      await ref
          .read(feedCommentViewModelProvider(widget.diaryId).notifier)
          .deleteComment(commentId);
      _onChanged();
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          final currentState =
              ref.read(feedCommentViewModelProvider(widget.diaryId)).value;

          // 댓글과 답글을 포함한 총 개수 계산
          final totalCommentCount = currentState?.comments
                  .fold<int>(0, (sum, comment) => sum + 1 + comment.replies.length) ??
              0;

          Navigator.pop(context, {
            'commentCount': totalCommentCount,
            'hasChanges': hasChanged,
          });
        }
      },
      child: stateAsync.when(
        loading: _loading,
        error: _error("피드 댓글 정보를 불러올 수 없습니다."),
        data: (state) {
          final comments = state.comments;
          final isEmpty = comments.isEmpty;
          return GestureDetector(
            onTap: () {
              _hideKeyboard();
            },
            child: AnimatedPadding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeOut,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildDragHandle(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("댓글 (${comments.length})",
                            style: AppTexts.b7.copyWith(color: ColorName.w1)),
                        SizedBox(
                          height: _focusNode.hasFocus ? 200 : 300,
                          child: !isEmpty
                              ? CommentList(
                                  comments: comments,
                                  onDelete: (int commentId) {
                                    handleCommentDelete(commentId);
                                  },
                                  onReply: (int parentCommentId, int index) {
                                    final targetComment = comments[index];
                                    if (targetComment.commentId ==
                                        parentCommentId) {
                                      updateTargetParentComment(targetComment);
                                      _showKeyboard();
                                    }
                                  })
                              : Center(
                                  child: Text("댓글을 남겨 책에 대한 감상을\n공유해 보세요",
                                      textAlign: TextAlign.center,
                                      style: AppTexts.b8
                                          .copyWith(color: ColorName.g3))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 16),
                          child: CommentTextField(
                            focusNode: _focusNode,
                            controller: _textController,
                            backgroundColor: ColorName.g7,
                            textColor: ColorName.g3,
                            hintText: targetParentComment == null
                                ? '이 책에 대한 생각을 들려주세요'
                                : null,
                            hintStyle:
                                AppTexts.b8.copyWith(color: ColorName.g3),
                            borderRadius: 16,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: _textController.text.isNotEmpty
                                  ? Assets.icons.icBookpickChatSendColored
                                      .svg(width: 22, height: 22)
                                  : Assets.icons.icBookpickChatSendDisabled
                                      .svg(width: 22, height: 22),
                            ),
                            onTapSuffixIcon: () {
                              handleCommentSend();
                            },
                            prefix: targetParentComment != null
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "@${targetParentComment!.writer.nickName}",
                                        style: AppTexts.b8
                                            .copyWith(color: ColorName.p1),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      )
                                    ],
                                  )
                                : null,
                            onTapPrefix: () {
                              updateTargetParentComment(null);
                            },
                            keyboardType: TextInputType.multiline,
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDragHandle() {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: ColorName.g7,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
