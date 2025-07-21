import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class StepProgressIndicator extends StatelessWidget {
  const StepProgressIndicator({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  /// 전체 단계의 수
  final int totalSteps;

  /// 현재 단계 (1부터 시작)
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        final isCurrent = index == currentStep - 1;

        Color colorForCurrentStep;
        if (currentStep - 1 == 0) {
          // 첫 단계는 보라색
          colorForCurrentStep = ColorName.p1;
        } else if (currentStep - 1 == totalSteps - 1) {
          // 마지막 단계는 노란색
          colorForCurrentStep = ColorName.l;
        } else {
          // 중간 단계는 빨간색
          colorForCurrentStep = ColorName.r;
        }

        return Container(
          width: isCurrent ? 24 : 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: isCurrent ? colorForCurrentStep : ColorName.g6,
            shape: isCurrent ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: isCurrent ? BorderRadius.circular(4) : null,
          ),
        );
      }),
    );
  }
}
