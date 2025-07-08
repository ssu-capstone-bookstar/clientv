import 'package:book/common/components/checkbox_2.dart';
import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/modules/my_page/view/widgets/radio_button_1_static.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원 탈퇴'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '떠난다니 아쉬워요',
              style: AppTexts.h4.copyWith(color: ColorName.w1),
            ),
            const SizedBox(height: 8),
            Text(
              '탈퇴 전 아래의 정보를 꼼꼼히 확인해 주세요.',
              style: AppTexts.b8.copyWith(color: ColorName.g3),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 233,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RadioButton1Static(
                    title: '모든 데이터가 즉시 삭제돼요',
                    description:
                        '북스타에서 활동한 데이터는 탈퇴와 동시에 즉시 삭제되며, 삭제된 이후에는 다시 불러올 수 없어요.',
                  ),
                  RadioButton1Static(
                    title: '30일 내 로그인하면 탈퇴가 취소돼요',
                    description:
                        '유예 기간인 30일 내 로그인 한다면, 탈퇴 신청이 취소되어 기존의 계정으로 북스타에서 활동할 수 있어요',
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: CheckBox2(
                label: '위 주의사항을 모두 숙지했으며 탈퇴에 동의해요',
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 54),
        child: CtaButtonL1(
          text: '탈퇴하기',
          onPressed: () {},
        ),
      ),
    );
  }
}
