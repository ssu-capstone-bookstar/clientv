import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';
import '../../theme/app_style.dart';
import '../button/cta_button_l1.dart';
import '../button/cta_button_s.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.content,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onConfirm,
    required this.onCancel,
    this.icon,
  });

  final String title;
  final String content;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
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
            Text(title, style: AppTexts.b5.copyWith(color: ColorName.w1)),
            const SizedBox(height: 16),
            if (icon != null) ...[
              icon!,
              const SizedBox(height: 16),
            ],
            Text(
              content,
              style: AppTexts.b3.copyWith(color: ColorName.w1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                if (cancelButtonText.isNotEmpty)
                  Expanded(
                    child: CtaButtonS(
                      text: cancelButtonText,
                      onPressed: onCancel,
                    ),
                  ),
                if (cancelButtonText.isNotEmpty) const SizedBox(width: 8),
                Expanded(
                  child: CtaButtonL1(
                    text: confirmButtonText,
                    onPressed: onConfirm,
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
