import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GalleryPermissionRequestDialog extends StatelessWidget {
  const GalleryPermissionRequestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("사진을 추가하기 위해선 갤러리 권한 허용이 필요합니다",
                style: AppTexts.b3.copyWith(color: ColorName.w1)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(child: Assets.icons.icPointShopChar2.svg()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildActionButton(
                  context,
                  '확인',
                  ColorName.p1,
                  AppTexts.b7.copyWith(color: ColorName.w1),
                  () {
                    context.pop({"result": true});
                  },
                ),
                SizedBox(
                  width: 16,
                ),
                _buildActionButton(
                  context,
                  '취소',
                  ColorName.g3,
                  AppTexts.b7.copyWith(color: ColorName.w1),
                  () {
                    context.pop({"result": false});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String text,
    Color backgroundColor,
    TextStyle textStyle,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 100,
          height: 48,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }
}
