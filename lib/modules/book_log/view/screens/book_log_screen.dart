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

class BookLogScreen extends ConsumerWidget {
  const BookLogScreen(
      {super.key, this.showAppBar = false, this.otherMemberId = 0});
  final bool showAppBar;
  final int otherMemberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookLogAsync = ref.watch(bookLogViewModelProvider(null));
    final followInfoAsync = ref.watch(followInfoViewModelProvider);

    return bookLogAsync.when(
      data: (bookLog) => followInfoAsync.when(
        data: (followInfo) => BookLogFeedList(
            bookLog: bookLog,
            // followInfo: followInfo,
            initialIndex: null,
            onScrollBottom: () {
              ref.read(bookLogViewModelProvider(null).notifier).refreshState();
            },
            onRefresh: () async {
              await ref
                  .read(bookLogViewModelProvider(null).notifier)
                  .initState(null);
            },
            onLike: (int targetIndex) {
              final targetFeed = bookLog.feeds[targetIndex];
              ref.read(bookLogViewModelProvider(null).notifier).handleFeedLike(
                  targetFeed.diaryId, targetFeed.liked, targetIndex);
            },
            onMessage: (int targetIndex) async {
              final targetFeed = bookLog.feeds[targetIndex];
              final result = await showModalBottomSheet(
                  context: context,
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
                    .read(bookLogViewModelProvider(null).notifier)
                    .changeCommentCount(targetFeed.diaryId, commentCount);
              }
            },
            onDelete: (int targetIndex) async {
              final targetFeed = bookLog.feeds[targetIndex];
              final result = await showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => DiaryFeedDeleteDialog());
              if (result == true) {
                await ref
                    .read(bookLogViewModelProvider(null).notifier)
                    .deleteFeed(targetFeed.diaryId);
              }
            },
            onReport: (int targetIndex) async {
              final targetFeed = bookLog.feeds[targetIndex];
              final result = await showModalBottomSheet(
                  context: context,
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
                  .read(bookLogViewModelProvider(null).notifier)
                  .reportFeed(targetFeed.diaryId, reportType, content);

              await showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: ColorName.b1,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) => DiaryFeedReportSuccessDialog());
            }),
        error: _error("팔로우 정보를 불러올 수 없습니다."),
        loading: _loading,
      ),
      error: _error("북로그 정보를 불러올 수 없습니다."),
      loading: _loading,
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
