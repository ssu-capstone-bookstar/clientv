import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class BookStatusBadge extends StatelessWidget {
  final String status;
  const BookStatusBadge({required this.status, super.key});
  @override
  Widget build(BuildContext context) {
    Color bgColor = ColorName.g7;
    Color borderColor = ColorName.g6;
    return Container(
      height: 17,
      padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: borderColor, width: 0.48),
        borderRadius: BorderRadius.circular(3.83),
      ),
      child: Center(
        child: Text(
          status,
          style: AppTexts.cap1.copyWith(color: getStatusTextColor(status)),
        ),
      ),
    );
  }
}

Color getStatusTextColor(String status) {
  if (status == '완독') {
    return ColorName.m;
  } else if (status == '독서중') {
    return ColorName.l;
  } else if (status == '피드' || status == '픽') {
    return ColorName.o;
  } else {
    return Colors.white;
  }
}
