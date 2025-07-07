import 'package:flutter/material.dart';

import '../../../../common/theme/style/app_texts.dart';

class BookPreviewInfo extends StatelessWidget {
  final String title;

  const BookPreviewInfo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTexts.b11,
      ),
    );
  }
}
