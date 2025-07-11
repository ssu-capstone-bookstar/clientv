import 'package:flutter/material.dart';

import '../../../../common/theme/style/app_paddings.dart';
import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class BookIconValueLabel extends StatelessWidget {
  final Widget icon;
  final String value;

  const BookIconValueLabel({
    super.key,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.BOOK_PICK_DETAIL_INFO_PADDING,
      decoration: BoxDecoration(
        color: ColorName.w3,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 2.0,
        children: [
          Assets.icons.icRatingStar.svg(),
          Text(value, style: AppTexts.cap1.copyWith(color: ColorName.p1)),
        ],
      ),
    );
  }
}
