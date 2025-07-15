import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ChallengeOptionCard extends StatelessWidget {
  const ChallengeOptionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        width: double.infinity,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          color: selected ? ColorName.p1.withOpacity(0.1) : ColorName.g7,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? ColorName.p1 : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTexts.b5.copyWith(
                color: selected ? ColorName.p1 : ColorName.g1,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: AppTexts.b8.copyWith(color: selected ? ColorName.g2 : ColorName.g3),
            ),
          ],
        ),
      ),
    );
  }
}
