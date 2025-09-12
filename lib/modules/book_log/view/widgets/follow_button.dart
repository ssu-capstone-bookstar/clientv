import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key, this.onPressed, this.isFollowing = false});
  final VoidCallback? onPressed;
  final bool isFollowing;
    @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 26,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ColorName.p1,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: ColorName.p3, width: 1),
          ),
          padding: EdgeInsets.zero,
          elevation: 0,
        ),
        onPressed:
            onPressed,
        child: SizedBox(
          width: 55,
          height: 19,
          child: Center(
            child: Text(
              isFollowing ? '팔로잉 취소' : '팔로우',
              textAlign: TextAlign.center,
              style: AppTexts.b9.copyWith(color: ColorName.w1),
            ),
          ),
        ),
      ),
    );
  }

}
// TODO: 팔로우/언팔로우 로직 구현 필요시 이 파일에서 작업
