import '../../model/book_log_models.dart';
import 'package:book/modules/book_log/widgets/speech_bubble_overlay.dart';
import 'package:book/modules/profile/view_model/profile_with_counts_provider.dart';
import 'package:book/modules/reading_diary/viewmodels/member_diaries_provider.dart';
import 'package:book/modules/user/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/common/theme/app_colors.dart';
import '../widgets/profile_stat.dart';
import '../widgets/stat_divider.dart';
import '../widgets/book_status_badge.dart';
import '../widgets/profile_edit_button.dart';
// TODO: 실제 데이터 연동, 상태관리 연동 등 필요한 부분에 주석 추가

class BookLogScreen extends ConsumerStatefulWidget {
  final int memberId;
  final bool showAppBar;
  const BookLogScreen(
      {super.key, required this.memberId, this.showAppBar = true});

  @override
  ConsumerState<BookLogScreen> createState() => _BookLogScreenState();
}

class _BookLogScreenState extends ConsumerState<BookLogScreen> {
  final GlobalKey _profileImageKey = GlobalKey();
  OverlayEntry? _speechBubbleEntry;
  bool _speechBubbleShown = false;

  @override
  void dispose() {
    _removeSpeechBubble();
    super.dispose();
  }

  void _removeSpeechBubble() {
    _speechBubbleEntry?.remove();
    _speechBubbleEntry = null;
  }

  void _showSpeechBubble(BuildContext context) {
    if (_speechBubbleEntry != null) return;
    if (_profileImageKey.currentContext == null) return;
    final RenderBox box =
        _profileImageKey.currentContext!.findRenderObject() as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero);
    final Size size = box.size;
    // 말풍선 중앙이 프로필 이미지 중앙에 오도록 Figma 기준 위치 조정
    final double bubbleWidth = 100;
    final double bubbleHeight = 38;
    final Offset bubbleOffset = Offset(
      position.dx + (size.width / 2) - (bubbleWidth / 2) + 100,
      position.dy - bubbleHeight + 8 - 60, // 8px 겹치게 조정
    );
    _speechBubbleEntry = SpeechBubbleOverlay.show(
      context: context,
      target: bubbleOffset,
      text: '책을 읽자',
      bubbleWidth: bubbleWidth,
      bubbleHeight: bubbleHeight,
      duration: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);
    final bool isMyProfile = user != null && user.memberId == widget.memberId;
    final profileAsync = ref.watch(profileWithCountsProvider(widget.memberId));
    final diariesAsync = ref.watch(memberDiariesProvider(widget.memberId));

    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      body: SafeArea(
        child: profileAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, st) => Center(
              child: Text('프로필 정보를 불러올 수 없습니다.',
                  style: TextStyle(color: AppColors.textGrey))),
          data: (profile) {
            if (!_speechBubbleShown) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _removeSpeechBubble();
                _showSpeechBubble(context);
              });
              _speechBubbleShown = true;
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                // 프로필 + 말풍선
                Center(
                  child: CircleAvatar(
                    key: _profileImageKey,
                    radius: 40,
                    backgroundColor: AppColors.widgetBlack,
                    backgroundImage: profile.profileImageUrl.isNotEmpty
                        ? NetworkImage(profile.profileImageUrl)
                        : null,
                    child: profile.profileImageUrl.isEmpty
                        ? const Icon(Icons.person,
                            size: 40, color: Color(0xFF444444))
                        : null,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '@${profile.nickName}',
                  style: const TextStyle(
                    color: AppColors.primaryPurple,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                // 통계(게시물/팔로잉/팔로워)
                SizedBox(
                  width: 188,
                  height: 19,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ProfileStat(label: '게시물', value: profile.diaryCount),
                      StatDivider(),
                      ProfileStat(label: '팔로잉', value: profile.followingCount),
                      StatDivider(),
                      ProfileStat(label: '팔로워', value: profile.followerCount),
                    ],
                  ),
                ),
                // 프로필 편집 버튼 (Figma 기준: 프로필 정보 아래, 책장 위)
                if (isMyProfile) ...[
                  const SizedBox(height: 20),
                  ProfileEditButton(),
                  const SizedBox(height: 16),
                ],
                const SizedBox(height: 15),
                // 책장(Bookshelf)
                SizedBox(
                  height: 72,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyBooks.length, // TODO: 실제 데이터로 교체
                    separatorBuilder: (_, __) => const SizedBox(width: 6),
                    padding: const EdgeInsets.only(left: 16),
                    itemBuilder: (context, idx) {
                      final book = dummyBooks[idx]; // TODO: 실제 데이터로 교체
                      return SizedBox(
                        width: 78,
                        height: 69,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: AppColors.widgetBlack,
                                shape: BoxShape.circle,
                              ),
                              child: book.imageUrl.isNotEmpty
                                  ? ClipOval(
                                      child: Image.asset(
                                        book.imageUrl,
                                        width: 48,
                                        height: 48,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Icon(Icons.book,
                                      color: Color(0xFF444444), size: 28),
                            ),
                            const SizedBox(height: 6),
                            SizedBox(
                              width: 78,
                              height: 18,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  BookStatusBadge(status: book.status),
                                  const SizedBox(width: 3),
                                  Expanded(
                                    child: Text(
                                      book.title,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // 책로그 그리드
                Expanded(
                  child: diariesAsync.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (e, st) => Center(
                      child: Text(
                        '책로그를 불러올 수 없습니다.',
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    data: (diaries) {
                      final displayDiaries = dummyDiaries; // TODO: 실제 데이터로 교체
                      return displayDiaries.isEmpty
                          ? const Center(
                              child: Text(
                                '아직 책로그가 없습니다.',
                                style: TextStyle(
                                  color: AppColors.textGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          : LayoutBuilder(
                              builder: (context, constraints) {
                                final double gridWidth = constraints.maxWidth;
                                final double cellSize = gridWidth / 3;
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 0,
                                    childAspectRatio: 1,
                                  ),
                                  itemCount:
                                      displayDiaries.length, // TODO: 실제 데이터로 교체
                                  itemBuilder: (context, idx) {
                                    final diary =
                                        displayDiaries[idx]; // TODO: 실제 데이터로 교체
                                    final row = idx ~/ 3;
                                    final col = idx % 3;
                                    BorderSide borderSide = const BorderSide(
                                        color: Color(0xFF191919), width: 1);
                                    Border border = Border(
                                      right: col < 2
                                          ? borderSide
                                          : BorderSide.none,
                                      bottom: borderSide,
                                      left: col == 0
                                          ? borderSide
                                          : BorderSide.none,
                                      top: row == 0
                                          ? borderSide
                                          : BorderSide.none,
                                    );
                                    final imageUrl = diary.images.isNotEmpty
                                        ? diary.images.first.imageUrl
                                        : null;
                                    return Container(
                                      width: cellSize,
                                      height: cellSize,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF2D2D33),
                                        border: border,
                                      ),
                                      child: imageUrl != null &&
                                              imageUrl.isNotEmpty
                                          ? Image.network(
                                              imageUrl,
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              height: double.infinity,
                                            )
                                          : const Center(
                                              child: Icon(Icons.menu_book,
                                                  color: Color(0xFF444444),
                                                  size: 36),
                                            ),
                                    );
                                  },
                                );
                              },
                            );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
