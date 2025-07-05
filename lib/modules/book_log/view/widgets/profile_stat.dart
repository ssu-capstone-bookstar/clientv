import 'package:flutter/material.dart';

class ProfileStat extends StatelessWidget {
  final String label;
  final int value;
  const ProfileStat({required this.label, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 19,
      child: Text(
        ' 0$label $value',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 1.6, // 160%
          letterSpacing: -0.015,
          color: Color(0xFF6B6B75),
        ),
      ),
    );
  }
}
// TODO: 디자인/기능 확장 필요시 이 파일에서 작업
