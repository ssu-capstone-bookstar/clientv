import 'package:flutter/material.dart';

import '../../../../common/theme/style/app_texts.dart';
import '../../theme/style/app_paddings.dart';

class SectionHeader extends StatelessWidget {
  final String heading;
  final String description;
  final TextStyle headingStyle;
  final TextStyle descriptionStyle;
  final Widget trailing;
  final EdgeInsetsGeometry padding;
  final double spacing;

  const SectionHeader({
    super.key,
    required this.heading,
    required this.description,
    required this.trailing,
    this.headingStyle = AppTexts.b3,
    this.descriptionStyle = AppTexts.b10,
    this.padding = AppPaddings.SORTABLE_HEADER_PADDING,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: spacing,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(heading, style: headingStyle),
              trailing,
            ],
          ),
          Text(description, style: descriptionStyle),
        ],
      ),
    );
  }
}
