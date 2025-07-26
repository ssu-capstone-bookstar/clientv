import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/book_log/view/widgets/book_log_profile.dart';
import 'package:book/modules/book_log/view/widgets/book_log_thumbnail_grid.dart';
import 'package:book/modules/book_log/view/widgets/profile_speech_bubble.dart';
import 'package:book/modules/follow/view_model/follow_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';
import '../../view_model/book_log_view_model.dart';

class BookLogThumbnailScreen extends ConsumerWidget {
  const BookLogThumbnailScreen({super.key, required this.memberId});
  final int memberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookLogAsync = ref.watch(bookLogViewModelProvider(memberId));
    final user = ref.watch(authViewModelProvider).value;
    final followInfo = ref.watch(followInfoViewModelProvider).value;
    final isMyProfile = (user is AuthSuccess && user.memberId == memberId);
    final isFollowing =
        followInfo?.following.map((e) => e.memberId).contains(memberId) ??
            false;

    return Scaffold(
      appBar: AppBar(
          title: const Text('책로그'),
          leading: IconButton(
            icon: const BackButton(),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
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
                        onFollow: () {
                          if (isFollowing) {
                            ref
                                .read(followInfoViewModelProvider.notifier)
                                .unfollow(memberId);
                          } else {
                            ref
                                .read(followInfoViewModelProvider.notifier)
                                .follow(memberId);
                          }
                        },
                        profileImageKey: GlobalKey(),
                      ),
                      const SizedBox(height: 20),
                      BookLogThumbnailGrid(
                          thumbnails: bookLog.thumbnails,
                          onScrollBottom: () async {
                            await ref
                                .read(
                                    bookLogViewModelProvider(memberId).notifier)
                                .refreshState();
                          },
                          onRefresh: () async {
                            await ref
                                .read(
                                    bookLogViewModelProvider(memberId).notifier)
                                .initState(memberId);
                          },
                          onClickThumbnail: (int targetIndex) {
                            context.push('/book-log/feed/$memberId', extra: {
                              'index': targetIndex,
                            });
                          }),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child:
                        ProfileSpeechBubble(text: bookLog.profile.introduction),
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
