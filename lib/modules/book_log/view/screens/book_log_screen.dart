import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/book_log/view/screens/book_log_search_screen.dart';
import 'package:bookstar/modules/book_log/view/widgets/book_log_feed_list.dart';
import 'package:bookstar/modules/book_log/view/widgets/diary_feed_comment_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/diary_feed_delete_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_success_dialog.dart';
import 'package:bookstar/modules/follow/view_model/follow_info_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/diary_update_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';
import '../../view_model/book_log_view_model.dart';

class BookLogScreen extends BaseScreen {
  const BookLogScreen({super.key});

  @override
  BaseScreenState<BookLogScreen> createState() => _BookLogScreenState();
}

class _BookLogScreenState extends BaseScreenState<BookLogScreen> {
  @override
  bool enableRefreshIndicator() => true;

  @override
  int getListTotalItemCount() => ref.watch(bookLogViewModelProvider(null)).value?.feeds.length ?? 0;

  @override
  Future<void> onRefresh() async {
    final bookLogNotifier = ref.read(bookLogViewModelProvider(null).notifier);
    await bookLogNotifier.initState(null);
  }

  @override
  Future<void> onBottomReached() async {
    final bookLogNotifier = ref.read(bookLogViewModelProvider(null).notifier);
    await bookLogNotifier.refreshContentState();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("책로그", style: AppTexts.b5),
      actions: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              barrierColor: ColorName.dim3.withValues(alpha: 0.7),
              builder: (context) => BookLogSearchScreen(),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Assets.icons.icPeopleSearchOne.svg(width: 24, height: 24),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildFloatingActionButton(BuildContext context) {
    final userAsync = ref.watch(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberProfileImage =
        (user is AuthSuccess) ? user.profileImage : "";
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(height: 16),
      InkWell(
        onTap: () {
          context.push('/book-log/thumbnail/$currentMemberId');
        },
        child: SizedBox(
          width: 78,
          height: 78,
          child: CircleAvatar(
            key: UniqueKey(),
            backgroundColor: ColorName.g7,
            backgroundImage: currentMemberProfileImage.isNotEmpty
                ? NetworkImage(currentMemberProfileImage)
                : null,
            child: currentMemberProfileImage.isEmpty
                ? const Icon(Icons.person, size: 40, color: ColorName.g5)
                : null,
          ),
        ),
      ),
    ]);
  }



  @override
  Widget buildBody(BuildContext context) {
    final bookLogAsync = ref.watch(bookLogViewModelProvider(null));
    final followInfoAsync = ref.watch(followInfoViewModelProvider);
    final userAsync = ref.watch(authViewModelProvider);
    final bookLogNotifier = ref.read(bookLogViewModelProvider(null).notifier);

    return userAsync.when(
      data: (user) {
        return bookLogAsync.when(
          data: (bookLog) => followInfoAsync.when(
            data: (followInfo) => BookLogFeedList(
              feeds: bookLog.feeds,
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
              // followInfo: followInfo,
              initialIndex: null,
              onScrollChanged: (showButton) {
                // setState(() {
                //   _showScrollToTopButton = showButton;
                // });
              },
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
                final targetFeed = bookLog.feeds[targetIndex];
                context.push('/book-log/thumbnail/${targetFeed.memberId}');
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
                context.push('/reading-diary/${targetFeed.diaryId}/update',
                    extra: {
                      "memberId": targetFeed.memberId,
                      "request": DiaryUpdateRequest(
                          content: targetFeed.content,
                          images: targetFeed.images
                              .map((e) => ImageRequest(
                                  imageUrl: e.imageUrl, sequence: e.sequence))
                              .toList())
                    });
              },
            ),
            error: error("팔로우 정보를 불러올 수 없습니다."),
            loading: loading,
          ),
          error: error("북로그 정보를 불러올 수 없습니다."),
          loading: loading,
        );
      },
      error: error("유저 정보를 불러올 수 없습니다."),
      loading: loading,
    );
  }
}
