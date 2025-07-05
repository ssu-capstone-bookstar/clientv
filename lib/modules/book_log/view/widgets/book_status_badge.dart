import 'package:flutter/material.dart';

class BookStatusBadge extends StatelessWidget {
  final String status;
  const BookStatusBadge({required this.status, super.key});
  @override
  Widget build(BuildContext context) {
    Color bgColor = const Color(0xFF2D2D33);
    Color borderColor = const Color(0xFF393942);
    Color textColor = Colors.white;
    if (status == '완독') {
      textColor = const Color(0xFF19F9D9);
    } else if (status == '독서중') {
      textColor = const Color(0xFFF6F99A);
    } else if (status == '피드' || status == '픽') {
      textColor = const Color(0xFFFFB74D);
    }
    return Container(
      height: 18,
      padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: borderColor, width: 0.48),
        borderRadius: BorderRadius.circular(3.83),
      ),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
// TODO: 상태 종류/디자인 확장 필요시 이 파일에서 작업
