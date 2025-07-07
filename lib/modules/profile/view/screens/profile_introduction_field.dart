import 'package:flutter/material.dart';
import '../../../../common/theme/style/app_colors.dart';
import '../../../../gen/colors.gen.dart';

class ProfileIntroductionField extends StatelessWidget {
  final TextEditingController controller;
  const ProfileIntroductionField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: const Text('소개', style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          child: Container(
            color: ColorName.b2,
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '소개를 작성해 보세요',
                border: InputBorder.none,
                filled: true,
                fillColor: ColorName.b2,
              ),
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
