import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class DiaryFeedDeleteDialog extends StatelessWidget {
  const DiaryFeedDeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildActionButton(
            context,
            '독서 다이어리 삭제하기',
            ColorName.p1,
            AppTexts.b7.copyWith(color: ColorName.w1),
            () {
              Navigator.pop(context, true);
            },
          ),
          const SizedBox(height: 8),
          _buildActionButton(
            context,
            '취소하기',
            ColorName.g7,
            AppTexts.b7.copyWith(color: ColorName.w1),
            () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String text,
    Color backgroundColor,
    TextStyle textStyle,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }
}
