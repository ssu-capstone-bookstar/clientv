import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/modules/my_page/view/widgets/label_section.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginInfoScreen extends StatelessWidget {
  const LoginInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double titleWidth = 80;
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인 정보'),
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
                children: [
                  SizedBox(
                    width: titleWidth,
                    child: LabelSection('간편 회원 가입'),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                      child: TextField(
                    enabled: false,
                    maxLines: 1,
                    minLines: 1,
                    style: AppTexts.b6.copyWith(color: ColorName.w1),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: 'xxx.gmail.com', // TODO: 이메일 주소 정보 모델 추가
                      hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  )),
                ],
              ),
            ),
            const Divider(height: 1, color: ColorName.g7, thickness: 1),
            SizedBox(
              height: 58,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: titleWidth,
                    child: LabelSection('연동 상태'),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: TextField(
                      enabled: false,
                      maxLines: 1,
                      minLines: 1,
                      style: AppTexts.b6.copyWith(color: ColorName.w1),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: '연동 상태', // TODO: 연동 상태 정보 모델 추가
                        hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
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
