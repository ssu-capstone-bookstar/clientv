import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StarBadge extends StatelessWidget {
  final double rating;
  const StarBadge({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.5,
      height: 16,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
      decoration: BoxDecoration(
        color: ColorName.w3,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.icons.icStar.path,
            width: 8,
            height: 8,
            colorFilter: const ColorFilter.mode(ColorName.p1, BlendMode.srcIn),
          ),
          const SizedBox(width: 1.5),
          Text(
            rating.toStringAsFixed(1),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
              fontSize: 11,
              height: 1.1, // 110%
              letterSpacing: -0.22, // -2% of 11px
              color: ColorName.p1,
            ),
          ),
        ],
      ),
    );
  }
}
