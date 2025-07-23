import 'package:book/modules/book_log/view/widgets/profile_speech_bubble.dart';
import 'package:book/modules/follow/view_model/follow_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../view_model/book_log_view_model.dart';
import '../widgets/book_log_header_section.dart';
import '../widgets/book_log_low_section.dart';
import 'package:book/modules/reading_challenge/view_model/get_challenges_by_member_view_model.dart';

class BookLogScreen extends ConsumerWidget {
  const BookLogScreen(
      {super.key, this.showAppBar = true, this.otherMemberId = 0});
  final bool showAppBar;
  final int otherMemberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authViewModelProvider).value;
    final memberId = otherMemberId == 0
        ? ((user is AuthSuccess) ? user.memberId : 0)
        : otherMemberId;
    final isMyProfile = otherMemberId == 0
        ? (user is AuthSuccess && user.memberId == memberId)
        : false;

    final bookLogAsync = ref.watch(bookLogViewModelProvider(memberId));
    final challengesAsync = ref
        .watch(getChallengesByMemberViewModelProvider(memberId: memberId))
        .challenges;
    final followInfoAsync = ref.watch(followInfoViewModelProvider);

    return bookLogAsync.when(
        loading: _loading,
        error: _error('프로필 정보를 불러올 수 없습니다.'),
        data: (bookLog) => challengesAsync.when(
              loading: _loading,
              error: _error('책장 정보를 불러올 수 없습니다.'),
              data: (challenges) => followInfoAsync.when(
                loading: _loading,
                error: _error('팔로워 정보를 불러올 수 없습니다.'),
                data: (followInfo) {
                  final targetMemberId = !isMyProfile ? memberId : -1;
                  final isFollowing =
                      followInfo.following.map((e) => e.memberId).contains(
                            targetMemberId,
                          );
                  void onFollow() {
                    if (isFollowing) {
                      ref.read(followInfoViewModelProvider.notifier).unfollow(targetMemberId);
                    } else {
                      ref.read(followInfoViewModelProvider.notifier).follow(targetMemberId);
                    }
                  }
                  final profile = bookLog.profile;
                  final thumbnails = bookLog.thumbnails;
                  return Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          BookLogHeaderSection(
                            profileImageUrl: profile.profileImageUrl,
                            nickName: profile.nickName,
                            diaryCount: profile.diaryCount,
                            followingCount: profile.followingCount,
                            followerCount: profile.followerCount,
                            isMyProfile: isMyProfile,
                            isFollowing: isFollowing,
                            onEdit: () =>
                                GoRouter.of(context).go('/book-log/profile'),
                            onFollow: onFollow,
                            profileImageKey: GlobalKey(),
                          ),
                          // const SizedBox(height: 25),
                          // BookLogMidSection(books: challenges), TODO: 책장 추가
                          const SizedBox(height: 20),
                          BookLogLowSection(
                            thumbnails: thumbnails,
                            memberId: memberId,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ProfileSpeechBubble(text: profile.introduction),
                      ),
                    ],
                  );
                },
              ),
            ));
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
