import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({super.key});
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
        onPressed: () => GoRouter.of(context)
            .go('/book-log/profile'), // TODO: 라우팅/기능 확장 필요시 수정
        child: const SizedBox(
          width: 65,
          height: 19,
          child: Center(
            child: Text(
              '프로필 편집',
              textAlign: TextAlign.center,
              style: AppTexts.b9,
            ),
          ),
        ),
      ),
    );
  }
}
// TODO: 라우팅/기능 확장 필요시 이 파일에서 작업
