import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/assets.gen.dart';

class ProfileSpeechBubble extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Function() onTap;

  const ProfileSpeechBubble(
      {required this.text,
      this.width = 100,
      this.height = 38,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final displayText = text.isEmpty ? '소개를 작성해 보세요' : text;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 188), // 프로필 이미지 너비
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Assets.images.speechBubble
                  .image(width: width, height: height, fit: BoxFit.fill),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  displayText,
                  style: AppTexts.b11.copyWith(
                    color: ColorName.w1,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
