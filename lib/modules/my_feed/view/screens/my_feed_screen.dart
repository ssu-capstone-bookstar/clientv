import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/book_log/view/widgets/book_log_profile.dart';
import 'package:bookstar/modules/book_log/view/widgets/book_log_thumbnail_grid.dart';
import 'package:bookstar/modules/book_log/view/widgets/profile_speech_bubble.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/follow/view_model/follow_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';

class MyFeedScreen extends BaseScreen {
  const MyFeedScreen(
      {super.key, this.requiredRefresh = false});
  final bool requiredRefresh;

  @override
  BaseScreenState<MyFeedScreen> createState() => _MyFeedScreenState();
}

class _MyFeedScreenState extends BaseScreenState<MyFeedScreen> {
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
            ?.thumbnails
            .length ??
        0;
  }

  @override
  Future<void> onInitState() async {
    final userAsync = ref.read(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;
    if (widget.requiredRefresh) {
      final bookLogNotifier =
          ref.read(bookLogViewModelProvider(currentMemberId).notifier);
      await bookLogNotifier.initState(currentMemberId);
    }
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
                      await Clipboard.setData(
                          ClipboardData(text: introduction));
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
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    final isMyProfile = true;
    return AppBar(
        title: const Text('마이피드'),
        actions: [
          if (isMyProfile)
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => context.push('/my-feed/my-page'),
            )
        ]);
  }

  @override
  Widget buildBody(BuildContext context) {
    final userAsync = ref.watch(authViewModelProvider);
    final user = userAsync.value;
    final currentMemberId = (user is AuthSuccess) ? user.memberId : -1;
    final bookLogAsync = ref.watch(bookLogViewModelProvider(currentMemberId));
    final bookLogNotifier =
        ref.read(bookLogViewModelProvider(currentMemberId).notifier);
    final followInfo = ref.watch(followInfoViewModelProvider).value;
    final followInfoNotifier = ref.read(followInfoViewModelProvider.notifier);
    final isMyProfile = true;
    final isFollowing = followInfo?.following
            .map((e) => e.memberId)
            .contains(currentMemberId) ??
        false;

    return bookLogAsync.when(
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
                      onEdit: () => context.push('/my-feed/profile'),
                      onFollow: () async {
                        if (isFollowing) {
                          await followInfoNotifier.unfollow(currentMemberId);
                        } else {
                          await followInfoNotifier.follow(currentMemberId);
                        }
                        await bookLogNotifier.refreshFollowState();
                      },
                      profileImageKey: GlobalKey(),
                    ),
                    const SizedBox(height: 20),
                    BookLogThumbnailGrid(
                        thumbnails: bookLog.thumbnails,
                        scrollController: scrollController,
                        onClickThumbnail: (int targetIndex) {
                          context.push('/my-feed/feed/$currentMemberId',
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
                      onTap: () => _onTapBubble(bookLog.profile.introduction)),
                ),
              ],
            ),
        error: error("북로그 정보를 불러올 수 없습니다."),
        loading: loading);
  }
}
