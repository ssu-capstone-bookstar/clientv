import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
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
        '$label $value',
        textAlign: TextAlign.center,
        style: AppTexts.b10.copyWith(color: ColorName.g3),
      ),
    );
  }
}
