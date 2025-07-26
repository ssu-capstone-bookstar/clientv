import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/book_log/view/widgets/book_log_feed_list.dart';
import 'package:book/modules/book_log/view/widgets/diary_feed_comment_dialog.dart';
import 'package:book/modules/book_log/view/widgets/diary_feed_delete_dialog.dart';
import 'package:book/modules/book_log/view/widgets/diary_feed_report_dialog.dart';
import 'package:book/modules/book_log/view/widgets/diary_feed_report_success_dialog.dart';
import 'package:book/modules/follow/view_model/follow_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../gen/colors.gen.dart';
import '../../view_model/book_log_view_model.dart';

class BookLogFeedScreen extends ConsumerWidget {
  const BookLogFeedScreen(
      {super.key, required this.memberId, required this.initialIndex});
  final int memberId;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookLogAsync = ref.watch(bookLogViewModelProvider(memberId));
    final followInfoAsync = ref.watch(followInfoViewModelProvider);
    final userAsync = ref.watch(authViewModelProvider);

    return userAsync.when(
      data: (user) {
        return bookLogAsync.when(
          data: (bookLog) => followInfoAsync.when(
            data: (followInfo) => Scaffold(
              appBar: AppBar(
                title: const Text('책로그'),
                leading: IconButton(
                  icon: const BackButton(),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              body: BookLogFeedList(
                bookLog: bookLog,
                initialIndex: initialIndex,
                onScrollBottom: () async {
                  await ref
                      .read(bookLogViewModelProvider(memberId).notifier)
                      .refreshState();
                },
                onRefresh: () async {
                  await ref
                      .read(bookLogViewModelProvider(memberId).notifier)
                      .initState(null);
                },
                onLike: (int targetIndex) {
                  final targetFeed = bookLog.feeds[targetIndex];
                  ref
                      .read(bookLogViewModelProvider(memberId).notifier)
                      .handleFeedLike(
                          targetFeed.diaryId, targetFeed.liked, targetIndex);
                },
                onMessage: (BuildContext ctx, int targetIndex) async {
                  final targetFeed = bookLog.feeds[targetIndex];
                  final result = await showModalBottomSheet(
                      context: ctx,
                      isScrollControlled: true,
                      backgroundColor: ColorName.b1,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) =>
                          DiaryFeedCommentDialog(diaryId: targetFeed.diaryId));

                  int? commentCount = result?['commentCount'];
                  if (commentCount != null) {
                    ref
                        .read(bookLogViewModelProvider(memberId).notifier)
                        .changeCommentCount(targetFeed.diaryId, commentCount);
                  }
                },
                onDelete: (BuildContext ctx, int targetIndex) async {
                  final targetFeed = bookLog.feeds[targetIndex];
                  final result = await showModalBottomSheet(
                      context: ctx,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => DiaryFeedDeleteDialog());
                  if (result == true) {
                    await ref
                        .read(bookLogViewModelProvider(memberId).notifier)
                        .deleteFeed(targetFeed.diaryId);
                  }
                },
                onReport: (BuildContext ctx, int targetIndex) async {
                  final targetFeed = bookLog.feeds[targetIndex];
                  final result = await showModalBottomSheet(
                      context: ctx,
                      isScrollControlled: true,
                      backgroundColor: ColorName.b1,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) => DiaryFeedReportDialog());

                  if (result == null) return;

                  ReportType? reportType = result?['reportType'];
                  String? content = result?['content'];

                  if (reportType == null || content == null) return;
                  await ref
                      .read(bookLogViewModelProvider(memberId).notifier)
                      .reportFeed(targetFeed.diaryId, reportType, content);
                  if (!ctx.mounted) return;
                  await showModalBottomSheet(
                      context: ctx,
                      isScrollControlled: true,
                      backgroundColor: ColorName.b1,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) => DiaryFeedReportSuccessDialog());
                },
                onClickProfile: (int targetIndex) {
                  // final targetFeed = bookLog.feeds[targetIndex];
                  // context.push('/book-log/thumbnail/${targetFeed.memberId}');
                },
              ),
            ),
            error: _error("팔로우 정보를 불러올 수 없습니다."),
            loading: _loading,
          ),
          error: _error("북로그 정보를 불러올 수 없습니다."),
          loading: _loading,
        );
      },
      error: _error("유저 정보를 불러올 수 없습니다."),
      loading: _loading,
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
