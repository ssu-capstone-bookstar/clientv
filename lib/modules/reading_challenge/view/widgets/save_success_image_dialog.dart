import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SaveSuccessImageDialog extends StatelessWidget {
  const SaveSuccessImageDialog({super.key});

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
            Text("스크린샷이 저장되었어요",
                style: AppTexts.b3.copyWith(color: ColorName.w1)),
            SizedBox(
              height: 6,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "#북스타",
                  style: AppTexts.b6.copyWith(color: ColorName.p1)),
              TextSpan(
                  text: " 해시태그와 함께 ",
                  style: AppTexts.b6.copyWith(color: ColorName.g1)),
              TextSpan(
                  text: "인스타그램",
                  style: AppTexts.b6.copyWith(color: ColorName.p1)),
              TextSpan(
                  text: "에 게시하고 나의 꾸준한 독서 습관을 공유해 보세요!",
                  style: AppTexts.b6.copyWith(color: ColorName.g1)),
            ])),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Center(child: Assets.icons.icPointShopChar2.svg()),
            ),
            _buildActionButton(
              context,
              '돌아가기',
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
