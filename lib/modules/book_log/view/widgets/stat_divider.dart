import 'package:flutter/material.dart';

class StatDivider extends StatelessWidget {
  const StatDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: -1.5708, // -90도 (라디안)
        child: Container(
          width: 18,
          height: 0,
          decoration: BoxDecoration(
            color: const Color(0xFF6B6B75),
            border: Border.all(color: const Color(0xFF2D2D33), width: 1),
          ),
        ),
      ),
    );
  }
}
// TODO: 디자인/기능 확장 필요시 이 파일에서 작업
