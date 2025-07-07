import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/common/components/text_button.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeepTimePauseDialog extends ConsumerWidget {
  const DeepTimePauseDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      backgroundColor: ColorName.g6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('딥타임 중단', style: AppTexts.b4.copyWith(color: ColorName.w1)),
            const SizedBox(height: 8),
            Text(
              '정말 딥타임을 멈출까요?',
              style: AppTexts.b6.copyWith(color: ColorName.g4),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.icBookpickChatCharacter.svg(width: 60),
                const SizedBox(width: 16),
                // TODO: Add user profile image
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorName.g6,
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: CustomTextButton(
                    label: '멈추기',
                    onTap: () {
                      ref.read(deepTimeViewModelProvider.notifier).pauseTimer();
                      Navigator.of(context).pop();
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
