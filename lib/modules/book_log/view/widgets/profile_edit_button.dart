import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({super.key, this.onPressed});
  final VoidCallback? onPressed;
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
            onPressed ?? () => GoRouter.of(context).go('/book-log/profile'),
        child: SizedBox(
          width: 55,
          height: 19,
          child: Center(
            child: Text(
              '프로필 편집',
              textAlign: TextAlign.center,
              style: AppTexts.b9.copyWith(color: ColorName.w1),
            ),
          ),
        ),
      ),
    );
  }
}
