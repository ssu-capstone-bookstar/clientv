import 'package:flutter/material.dart';

import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/colors.gen.dart';

class BookLabeledText extends StatelessWidget {
  final String label;
  final String value;
  final double gap;

  const BookLabeledText({
    super.key,
    required this.label,
    required this.value,
    this.gap = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: label, style: AppTexts.b11.copyWith(color: ColorName.g3)),
          WidgetSpan(child: SizedBox(width: gap)),
          TextSpan(text: value, style: AppTexts.b11.copyWith(color: ColorName.g2)),
        ],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
