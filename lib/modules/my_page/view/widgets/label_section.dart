import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class LabelSection extends StatelessWidget {
  final String text;
  const LabelSection(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTexts.b8.copyWith(color: ColorName.g2),
    );
  }
}
