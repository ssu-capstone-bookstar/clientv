import 'package:book/modules/book_log/view/widgets/profile_speech_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../model/book_log_models.dart';
import '../../view_model/book_log_view_model.dart';
import '../widgets/book_log_header_section.dart';
import '../widgets/book_log_low_section.dart';
import '../widgets/book_log_mid_section.dart';
// TODO: 실제 데이터 연동, 상태관리 연동 등 필요한 부분에 주석 추가

class BookLogScreen extends ConsumerStatefulWidget {
  final bool showAppBar;

  const BookLogScreen({super.key, this.showAppBar = true});

  @override
  ConsumerState<BookLogScreen> createState() => _BookLogScreenState();
}

class _BookLogScreenState extends ConsumerState<BookLogScreen> with UserState {
  final GlobalKey _profileImageKey = GlobalKey();

  // OverlayEntry? _speechBubbleEntry;
  bool _speechBubbleShown = false;

  @override
  void dispose() {
    // _removeSpeechBubble();
    super.dispose();
  }

  // void _removeSpeechBubble() {
  //   _speechBubbleEntry?.remove();
  //   _speechBubbleEntry = null;
  // }
  //
  // void _showSpeechBubble(BuildContext context) {
  //   if (_speechBubbleEntry != null) return;
  //   if (_profileImageKey.currentContext == null) return;
  //   final RenderBox box =
  //       _profileImageKey.currentContext!.findRenderObject() as RenderBox;
  //   final Offset position = box.localToGlobal(Offset.zero);
  //   // 말풍선 중앙이 프로필 이미지 중앙에 오도록 Figma 기준 위치 조정
  //   final double bubbleWidth = 100;
  //   final double bubbleHeight = 38;
  //   final Offset bubbleOffset = Offset(
  //     position.dx + 86,
  //     position.dy - AppSizes.APP_BAR_HEIGHT - 86 - 10,
  //   );
  //   _speechBubbleEntry = SpeechBubbleOverlay.show(
  //     context: context,
  //     target: bubbleOffset,
  //     text: '책을 읽자',
  //     bubbleWidth: bubbleWidth,
  //     bubbleHeight: bubbleHeight,
  //     duration: null,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authViewModelProvider).value;
    final memberId = (user is AuthSuccess) ? user.memberId : 0;
    final bool isMyProfile =
        user != null && (user is AuthSuccess) && user.memberId == memberId;
    final profileAsync = ref.watch(bookLogProfileProvider(memberId));

    return profileAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(
          child: Text('프로필 정보를 불러올 수 없습니다.',
              style: TextStyle(color: ColorName.g3))),
      data: (profile) {
        // if (!_speechBubbleShown) {
        //   WidgetsBinding.instance.addPostFrameCallback((_) {
        //     _removeSpeechBubble();
        //     _showSpeechBubble(context);
        //   });
        //   _speechBubbleShown = true;
        // }

        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                // SizedBox(height: MediaQuery.of(context).padding.top),
                // 북로그 헤더 : 프로필 이미지, 닉네임, 통계,
                BookLogHeaderSection(
                  profileImageUrl: profile.profileImageUrl,
                  nickName: profile.nickName,
                  diaryCount: profile.diaryCount,
                  followingCount: profile.followingCount,
                  followerCount: profile.followerCount,
                  isMyProfile: isMyProfile,
                  onEdit: () => GoRouter.of(context).go('/book-log/profile'),
                  profileImageKey: _profileImageKey,
                ),
                const SizedBox(height: 25),
                // 책장(Bookshelf)
                BookLogMidSection(books: dummyBooks),
                const SizedBox(height: 20),
                // 책로그 그리드
                BookLogLowSection(),
              ],
            ),
            if (true)
              Align(
                  alignment: Alignment.topCenter,
                  child: ProfileSpeechBubble(text: '책을 읽자'))
          ],
        );
      },
    );

    // return Scaffold(
    //   body:
    // );
  }
}
