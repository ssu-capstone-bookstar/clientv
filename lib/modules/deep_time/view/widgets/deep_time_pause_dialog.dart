import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/button/cta_button_s.dart';
import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../view_model/deep_time_view_model.dart';

class DeepTimePauseDialog extends ConsumerWidget {
  const DeepTimePauseDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      backgroundColor: ColorName.g6,
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
            Text('딥타임 중단', style: AppTexts.b6.copyWith(color: ColorName.w1)),
            const SizedBox(height: 8),
            Text(
              '정말 딥타임을 멈출까요?',
              style: AppTexts.b1.copyWith(color: ColorName.w1),
            ),
            const SizedBox(height: 24),
            Assets.icons.icDeeptypeNotification1.svg(width: 60),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: CtaButtonS(
                    text: '멈추기',
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
                    text: '계속 진행하기',
                    onPressed: () {
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
