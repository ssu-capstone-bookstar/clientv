import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/book_log/view/widgets/book_log_feed_list.dart';
import 'package:bookstar/modules/book_log/view/widgets/diary_feed_comment_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/diary_feed_delete_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_success_dialog.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/follow/view_model/follow_info_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/diary_update_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';

class MyFeedFeedScreen extends BaseScreen {
  const MyFeedFeedScreen({super.key, required this.initialIndex});
  final int initialIndex;

  @override
  BaseScreenState<MyFeedFeedScreen> createState() => _MyFeedFeedScreenState();
}

class _MyFeedFeedScreenState extends BaseScreenState<MyFeedFeedScreen> {
  @override
  bool enableRefreshIndicator() => true;

  @override
  int getListTotalItemCount() {
    final userAsync = ref.read(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;

    return ref
            .read(bookLogViewModelProvider(currentMemberId))
            .value
            ?.feeds
            .length ??
        0;
  }

  @override
  Future<void> onRefresh() async {
    final userAsync = ref.watch(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;
    final bookLogNotifier =
        ref.read(bookLogViewModelProvider(currentMemberId).notifier);
    await bookLogNotifier.initState(currentMemberId);
  }

  @override
  Future<void> onBottomReached() async {
    final userAsync = ref.watch(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;
    final bookLogNotifier =
        ref.read(bookLogViewModelProvider(currentMemberId).notifier);
    await bookLogNotifier.refreshContentState();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('마이피드'),
      leading: IconButton(
        icon: const BackButton(),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    final userAsync = ref.watch(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;
    final bookLogAsync = ref.watch(bookLogViewModelProvider(currentMemberId));
    final bookLogNotifier =
        ref.read(bookLogViewModelProvider(currentMemberId).notifier);
    final followInfoAsync = ref.watch(followInfoViewModelProvider);

    return userAsync.when(
      data: (user) {
        return bookLogAsync.when(
          data: (bookLog) => followInfoAsync.when(
            data: (followInfo) => BookLogFeedList(
              feeds: bookLog.feeds,
              initialIndex: widget.initialIndex,
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
              onLike: (int targetIndex) {
                final targetFeed = bookLog.feeds[targetIndex];
                bookLogNotifier.handleFeedLike(
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
                  bookLogNotifier.changeCommentCount(
                      targetFeed.diaryId, commentCount);
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
                  await bookLogNotifier.deleteFeed(targetFeed.diaryId);
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
                    builder: (context) => ReportDialog());

                if (result == null) return;

                ReportType? reportType = result?['reportType'];
                String? content = result?['content'];

                if (reportType == null || content == null) return;
                await bookLogNotifier.reportFeed(
                    targetFeed.diaryId, reportType, content);
                if (!ctx.mounted) return;
                await showModalBottomSheet(
                    context: ctx,
                    isScrollControlled: true,
                    backgroundColor: ColorName.b1,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (context) => ReportSuccessDialog());
              },
              onProfile: (int targetIndex) {
                // final targetFeed = bookLog.feeds[targetIndex];
                // context.push('/book-log/thumbnail/${targetFeed.memberId}');
              },
              onBookTitle: (int targetIndex) {
                final targetFeed = bookLog.feeds[targetIndex];
                context.push('/book-pick/overview/${targetFeed.bookId}');
              },
              onScrap: (int targetIndex) {
                final targetFeed = bookLog.feeds[targetIndex];
                bookLogNotifier.handleFeedScrap(
                    targetFeed.diaryId, targetFeed.scraped, targetIndex);
              },
              onUpdate: (int targetIndex) {
                final targetFeed = bookLog.feeds[targetIndex];
                context.push('/book-log/update/${targetFeed.diaryId}', extra: {
                  "memberId": targetFeed.memberId,
                  "request": DiaryUpdateRequest(
                    bookId: targetFeed.bookId,
                    content: targetFeed.content,
                    images: targetFeed.images
                        .map((e) => ImageRequest(
                            imageUrl: e.imageUrl, sequence: e.sequence))
                        .toList(),
                    private: targetFeed.private,
                  )
                });
              },
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
