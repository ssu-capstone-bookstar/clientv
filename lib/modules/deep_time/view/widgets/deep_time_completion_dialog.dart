import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../common/components/button/cta_button_l2.dart';

class DeepTimeCompletionDialog extends ConsumerWidget {
  const DeepTimeCompletionDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      backgroundColor: ColorName.g7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.06,
          vertical: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('딥타임 종료', style: AppTexts.b6.copyWith(color: ColorName.w1)),
            const SizedBox(height: 8),
            Text(
              '딥타임이 종료되었어요\n리딩 챌린지를 작성해 볼까요?',
              style: AppTexts.b1.copyWith(color: ColorName.w1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Assets.icons.icDeeptypeNotification2.svg(width: 80),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: CtaButtonL2(
                    text: '다시 하기',
                    onPressed: () async {
                      await ref
                          .read(deepTimeViewModelProvider.notifier)
                          .resetTimer();
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CtaButtonL1(
                    text: '리딩 챌린지 작성하기',
                    onPressed: () {
                      // TODO: Navigate to reading challenge screen
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
