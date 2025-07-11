import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerSupportScreen extends StatelessWidget {
  const CustomerSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('고객 센터'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              GoRouter.of(context).go('/book-log');
            },
          ),
        ],
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 58,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 87,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 2),
                        Assets.icons.icMail
                            .svg(width: 16.25, height: 13.083333969116211),
                        const SizedBox(width: 5),
                        Text(
                          '이메일 문의',
                          style: AppTexts.b8.copyWith(color: ColorName.g3),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    enabled: false,
                    maxLines: 1,
                    minLines: 1,
                    style: AppTexts.b7.copyWith(color: ColorName.w1),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: 'abc1234@gmail.com', // TODO: 메일 받을 줏 정보 편집
                      hintStyle: AppTexts.b7.copyWith(color: ColorName.w1),
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  )),
                ],
              ),
            ),
            const Divider(height: 1, color: ColorName.g7, thickness: 1),
          ],
        ),
      ),
    );
  }
}
