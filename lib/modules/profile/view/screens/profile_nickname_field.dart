import 'package:flutter/material.dart';
import '../../../../common/theme/app_colors.dart';

class ProfileNicknameField extends StatelessWidget {
  final TextEditingController controller;
  const ProfileNicknameField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: const Text('닉네임', style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          child: Container(
            color: AppColors.backgroundBlack,
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '닉네임을 입력하세요',
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
