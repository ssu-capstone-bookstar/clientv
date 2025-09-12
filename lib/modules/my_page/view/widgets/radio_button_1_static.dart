// RadioButton1Static 사용 예시:
//
// RadioButton1Static(
//   title: '텍스트',
//   description: '내용을 보여주세요',
// )
import 'package:flutter/material.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';

class RadioButton1Static extends StatelessWidget {
  final String title;
  final String description;

  const RadioButton1Static({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorName.g7,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: ColorName.g6, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTexts.b5.copyWith(color: ColorName.w1),
          ),
          const SizedBox(height: 10),
          Container(
            constraints: const BoxConstraints(maxWidth: 265),
            child: Text(
              description,
              style: AppTexts.b10.copyWith(color: ColorName.g2),
            ),
          ),
        ],
      ),
    );
  }
}
