import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class LoginInfoScreen extends StatelessWidget {
  const LoginInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인 정보'),
        titleTextStyle: AppTexts.b5.copyWith(color: ColorName.w1),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(child: Text('로그인 정보 화면')),
    );
  }
}
