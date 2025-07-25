import 'package:flutter/material.dart';

import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class BookCoverDetailInfo extends StatelessWidget {
  final String title;
  final String author;
  final double rating;

  const BookCoverDetailInfo({
    super.key,
    required this.title,
    required this.author,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: AppPaddings.BOOK_PICK_DETAIL_INFO_PADDING,
            decoration: BoxDecoration(
              color: ColorName.w3,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 2.0,
              children: [
                Assets.icons.icStar.svg(),
                Text(rating.toStringAsFixed(1),
                    style: AppTexts.cap1.copyWith(color: ColorName.p1)),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTexts.b11),
          Text(author,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTexts.b11.copyWith(color: ColorName.g2)),
        ],
      ),
    );
  }
}
