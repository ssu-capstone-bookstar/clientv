import 'package:book/modules/profile/model/profile_with_counts.dart';
import 'package:flutter/material.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'profile_stat.dart';
import 'stat_divider.dart';

class BookLogProfile extends StatelessWidget {
  final ProfileWithCounts profile;
  final bool isMyProfile;
  final bool isFollowing;
  final Key? profileImageKey;

  const BookLogProfile({
    required this.profile,
    this.isMyProfile = false,
    this.isFollowing = false,
    this.profileImageKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              backgroundImage: profile.profileImageUrl.isNotEmpty
                  ? NetworkImage(profile.profileImageUrl)
                  : null,
              child: profile.profileImageUrl.isEmpty
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
                '@${profile.nickName}',
                style: AppTexts.b7.copyWith(color: ColorName.p1),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 6),
          // 통계
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileStat(label: '게시물', value: profile.diaryCount),
                StatDivider(),
                ProfileStat(label: '팔로잉', value: profile.followingCount),
                StatDivider(),
                ProfileStat(label: '팔로워', value: profile.followerCount),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
