import 'package:book/modules/book_log/view/widgets/profile_speech_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../view_model/book_log_view_model.dart';
import '../widgets/book_log_header_section.dart';
import '../widgets/book_log_low_section.dart';
import '../widgets/book_log_mid_section.dart';
import 'package:book/modules/reading_challenge/view_model/get_challenges_by_member_view_model.dart';

class BookLogScreen extends ConsumerWidget {
  const BookLogScreen({super.key, this.showAppBar = true, this.otherMemberId = 0});
  final bool showAppBar;
  final int otherMemberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authViewModelProvider).value;
    final memberId = otherMemberId == 0 ? ((user is AuthSuccess) ? user.memberId : 0) : otherMemberId;
    final isMyProfile = otherMemberId == 0 ? (user is AuthSuccess && user.memberId == memberId) : false;

    final profileAsync = ref.watch(bookLogProfileProvider(memberId));
    final challengesAsync = ref
        .watch(getChallengesByMemberViewModelProvider(memberId: memberId))
        .challenges;

    return profileAsync.when(
      loading: _loading,
      error: _error('프로필 정보를 불러올 수 없습니다.'),
      data: (profile) => challengesAsync.when(
        loading: _loading,
        error: _error('책장 정보를 불러올 수 없습니다.'),
        data: (challenges) {
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
                    onEdit: () => GoRouter.of(context).go('/book-log/profile'),
                    profileImageKey: GlobalKey(),
                  ),
                  const SizedBox(height: 25),
                  BookLogMidSection(books: challenges),
                  const SizedBox(height: 20),
                  BookLogLowSection(memberId: memberId),
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
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
