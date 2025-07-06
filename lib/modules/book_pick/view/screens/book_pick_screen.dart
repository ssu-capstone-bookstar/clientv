import 'package:book/common/theme/app_colors.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class BookPickScreen extends StatelessWidget {
  const BookPickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15.0,
      children: [
        Text('책 찾기', style: AppTexts.h4),
        SearchTextField(
          hintText: '읽고 싶은 책을 검색해 보세요',
          hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
          suffixIcon: Assets.images.icSearchUncolored3x.image(scale: 3),
          onTap: () => context.push('/book-pick/search'),
          readOnly: true,
        ),
      ],
    );
  }
}
