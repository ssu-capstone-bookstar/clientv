import 'package:flutter/material.dart';
import '../../../../common/theme/app_colors.dart';

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
            color: AppColors.backgroundBlack,
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '소개를 작성해 보세요',
                border: InputBorder.none,
                filled: true,
                fillColor: AppColors.backgroundBlack,
              ),
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
