import 'package:flutter/material.dart';
import 'package:book/common/theme/app_colors.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryPurple,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        minimumSize: const Size(0, 36),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        elevation: 0,
      ),
      onPressed: () {
        // TODO: 팔로우/언팔로우 로직 구현
      },
      child: const Text('팔로우'),
    );
  }
}
// TODO: 팔로우/언팔로우 로직 구현 필요시 이 파일에서 작업
