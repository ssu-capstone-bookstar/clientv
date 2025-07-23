import 'package:book/modules/book_log/view/widgets/follow_button.dart';
import 'package:flutter/material.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'profile_stat.dart';
import 'stat_divider.dart';
import 'profile_edit_button.dart';

class BookLogHeaderSection extends StatelessWidget {
  final String profileImageUrl;
  final String nickName;
  final int diaryCount;
  final int followingCount;
  final int followerCount;
  final bool isMyProfile;
  final bool isFollowing;
  final VoidCallback? onEdit;
  final VoidCallback? onFollow;
  final Key? profileImageKey;

  const BookLogHeaderSection({
    required this.profileImageUrl,
    required this.nickName,
    required this.diaryCount,
    required this.followingCount,
    required this.followerCount,
    this.isMyProfile = false,
    this.isFollowing = false,
    this.onEdit,
    this.onFollow,
    this.profileImageKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 188,
      height: 186,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 프로필 이미지
          SizedBox(
            width: 86,
            height: 86,
            child: CircleAvatar(
              key: profileImageKey,
              backgroundColor: ColorName.g7,
              backgroundImage: profileImageUrl.isNotEmpty
                  ? NetworkImage(profileImageUrl)
                  : null,
              child: profileImageUrl.isEmpty
                  ? const Icon(Icons.person, size: 40, color: ColorName.g5)
                  : null,
            ),
          ),
          const SizedBox(height: 12),
          // 닉네임
          SizedBox(
            width: 188,
            height: 21,
            child: Center(
              child: Text(
                '@$nickName',
                style: AppTexts.b7.copyWith(color: ColorName.p1),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 6),
          // 통계
          SizedBox(
            width: 188,
            height: 19,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileStat(label: '게시물', value: diaryCount),
                StatDivider(),
                ProfileStat(label: '팔로잉', value: followingCount),
                StatDivider(),
                ProfileStat(label: '팔로워', value: followerCount),
              ],
            ),
          ),
          if (isMyProfile) ...[
            const SizedBox(height: 16),
            ProfileEditButton(onPressed: onEdit),
          ] else ...[
            const SizedBox(height: 16),
            FollowButton(isFollowing: isFollowing, onPressed: onFollow),
          ],
        ],
      ),
    );
  }
}
