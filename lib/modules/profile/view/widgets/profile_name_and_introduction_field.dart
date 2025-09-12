import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'profile_section_title.dart';

class ProfileNameAndIntroductionField extends StatelessWidget {
  final TextEditingController nicknameController;
  final TextEditingController introductionController;

  const ProfileNameAndIntroductionField({
    required this.nicknameController,
    required this.introductionController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double titleWidth = 40; // 고정 너비로 맞춤
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorName.g7, width: 1),
        ),
      ),
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
                  child: ProfileSectionTitle('닉네임'),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: TextField(
                    controller: nicknameController,
                    maxLines: 1,
                    minLines: 1,
                    style: AppTexts.b6.copyWith(color: ColorName.w1),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: '닉네임을 입력하세요',
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
          SizedBox(
            height: 58,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: titleWidth,
                  child: ProfileSectionTitle('소개'),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: TextField(
                    controller: introductionController,
                    maxLines: 1,
                    minLines: 1,
                    style: AppTexts.b6.copyWith(color: ColorName.w1),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: '소개를 작성해 보세요',
                      hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
