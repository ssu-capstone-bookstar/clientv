import 'package:bookstar/common/components/button/menu_button.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/book_log/view/widgets/book_log_profile.dart';
import 'package:bookstar/modules/book_log/view/widgets/book_log_thumbnail_grid.dart';
import 'package:bookstar/modules/book_log/view/widgets/profile_speech_bubble.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_success_dialog.dart';
import 'package:bookstar/modules/follow/view_model/follow_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';
import '../../view_model/book_log_view_model.dart';

class BookLogThumbnailScreen extends ConsumerStatefulWidget {
  const BookLogThumbnailScreen(
      {super.key, required this.memberId, this.requiredRefresh = false});
  final int memberId;
  final bool requiredRefresh;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _BookLogThumbnailScreenState();
  }
}

class _BookLogThumbnailScreenState
    extends ConsumerState<BookLogThumbnailScreen> {
  @override
  initState() {
    super.initState();
    if (widget.requiredRefresh) {
      ref
          .read(bookLogViewModelProvider(widget.memberId).notifier)
          .initState(widget.memberId);
    }
  }

  _onTapBubble(String introduction) {
    showDialog(
      context: context,
      barrierColor: ColorName.b1.withAlpha(204),
      builder: (context) {
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
              maxHeight: 400,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.speechBubble.image(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: GestureDetector(
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(text: introduction));
                      Navigator.of(context).pop();
                      if (!context.mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('텍스트가 복사되었습니다'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text(
                      introduction,
                      style: AppTexts.h4.copyWith(
                          color: ColorName.w1, decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bookLogAsync = ref.watch(bookLogViewModelProvider(widget.memberId));
    final bookLogNotifier =
        ref.read(bookLogViewModelProvider(widget.memberId).notifier);
    final user = ref.watch(authViewModelProvider).value;
    final followInfo = ref.watch(followInfoViewModelProvider).value;
    final followInfoNotifier = ref.read(followInfoViewModelProvider.notifier);
    final isMyProfile =
        (user is AuthSuccess && user.memberId == widget.memberId);
    final isFollowing = followInfo?.following
            .map((e) => e.memberId)
            .contains(widget.memberId) ??
        false;

    return Scaffold(
      appBar: AppBar(
          title: const Text('책로그'),
          leading: IconButton(
            icon: const BackButton(),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            if (!isMyProfile)
              MenuButton(
                maxWidth: 90,
                menus: [
                  MenuButtonItem(
                    value: "report",
                    label: "신고하기",
                  )
                ],
                icon: Assets.icons.icMenuMore.svg(color: ColorName.g3),
                onSelected: (value) async {
                  switch (value) {
                    case "report":
                      final result = await showModalBottomSheet(
                          context: context,
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
                      followInfoNotifier.reportMember(
                          widget.memberId, reportType, content);
                      if (!context.mounted) return;
                      await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: ColorName.b1,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) => ReportSuccessDialog());
                      break;
                    default:
                  }
                },
              ),
            if (isMyProfile)
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => context.push('/book-log/my-page'),
              )
          ]),
      body: bookLogAsync.when(
          data: (bookLog) => Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      BookLogProfile(
                        profile: bookLog.profile,
                        isMyProfile: isMyProfile,
                        isFollowing: isFollowing,
                        onEdit: () => context.push('/book-log/profile'),
                        onFollow: () async {
                          if (isFollowing) {
                            await followInfoNotifier.unfollow(widget.memberId);
                          } else {
                            await followInfoNotifier.follow(widget.memberId);
                          }
                          await bookLogNotifier.refreshFollowState();
                        },
                        profileImageKey: GlobalKey(),
                      ),
                      const SizedBox(height: 20),
                      BookLogThumbnailGrid(
                          thumbnails: bookLog.thumbnails,
                          onScrollBottom: () async {
                            await bookLogNotifier.refreshContentState();
                          },
                          onRefresh: () async {
                            await bookLogNotifier.initState(widget.memberId);
                          },
                          onClickThumbnail: (int targetIndex) {
                            context.push('/book-log/feed/${widget.memberId}',
                                extra: {
                                  'index': targetIndex,
                                });
                          }),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ProfileSpeechBubble(
                        text: bookLog.profile.introduction,
                        onTap: () =>
                            _onTapBubble(bookLog.profile.introduction)),
                  ),
                ],
              ),
          error: _error("북로그 정보를 불러올 수 없습니다."),
          loading: _loading),
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
