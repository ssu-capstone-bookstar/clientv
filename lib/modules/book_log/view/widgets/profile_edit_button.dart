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
          backgroundColor: const Color(0xFF775DFF),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Color(0xFF8670FF), width: 1),
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
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                height: 19 / 12, // 160%
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// TODO: 라우팅/기능 확장 필요시 이 파일에서 작업
