import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DiaryFeedReportSuccessDialog extends StatelessWidget {
  const DiaryFeedReportSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          left: 16,
          right: 16,
          top: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("신고가 접수되었어요",
                style: AppTexts.b5.copyWith(color: ColorName.w1)),
            SizedBox(
              height: 6,
            ),
            Text("보다 안전한 북스타가 될 수 있도록 바로 확인할게요",
                style: AppTexts.b10.copyWith(color: ColorName.g1)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Center(child: Assets.icons.icPointShopChar2.svg()),
            ),
            _buildActionButton(
              context,
              '책로그 돌아가기',
              ColorName.p1,
              AppTexts.b7.copyWith(color: ColorName.w1),
              () {
                context.pop();
              },
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
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
