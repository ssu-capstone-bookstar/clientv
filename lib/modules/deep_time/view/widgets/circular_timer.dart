import 'dart:math';

import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/deep_time/view_model/deep_time_state.dart';
import 'package:bookstar/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularTimer extends ConsumerWidget {
  final double size;
  const CircularTimer({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deepTimeState = ref.watch(deepTimeViewModelProvider).value;
    final status = deepTimeState?.status ?? DeepTimeStatus.initial;
    final settingDuration = deepTimeState?.settingDuration ?? Duration.zero;
    final remainingDuration = deepTimeState?.remainingDuration ?? Duration.zero;

    final bool isSettingTime =
        !(status == DeepTimeStatus.running || status == DeepTimeStatus.paused);

    if (isSettingTime) {
      // --- 시간 설정 모드 ---
      // 사용자 입력을 위해 SleekCircularSlider 사용
      return SleekCircularSlider(
        appearance: CircularSliderAppearance(
          customWidths: CustomSliderWidths(
            trackWidth: size * 0.03,
            progressBarWidth: size * 0.04,
            handlerSize: size * 0.03,
            shadowWidth: 0,
          ),
          customColors: CustomSliderColors(
            trackColor: ColorName.g6,
            progressBarColor: ColorName.g4,
            dotColor: ColorName.g4,
            hideShadow: true,
          ),
          size: size,
          startAngle: 270,
          angleRange: 360,
        ),
        min: 0,
        max: 60.0,
        initialValue: settingDuration.inMinutes.toDouble(),
        onChange: (double val) {
          ref
              .read(deepTimeViewModelProvider.notifier)
              .setDuration(Duration(minutes: val.round()));
        },
        innerWidget: (double value) => const SizedBox.shrink(),
      );
    } else {
      // --- 타이머 작동 모드 ---
      // 줄어드는 애니메이션을 위해 CustomPainter 사용
      return CustomPaint(
        size: Size(size, size),
        painter: _ShrinkingTimerPainter(
          size: size,
          remainingDuration: remainingDuration,
        ),
      );
    }
  }
}

class _ShrinkingTimerPainter extends CustomPainter {
  final double size;
  final Duration remainingDuration;

  _ShrinkingTimerPainter({
    required this.size,
    required this.remainingDuration,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final strokeWidth = this.size * 0.04;

    // 1. 희미한 배경 트랙 그리기
    final trackPaint = Paint()
      ..color = ColorName.g6
      ..style = PaintingStyle.stroke
      ..strokeWidth = this.size * 0.04;
    canvas.drawCircle(center, radius, trackPaint);

    // 2. 60분 기준의 원을 기반으로 진행률 계산
    // 이 부분이 핵심적인 변경 사항입니다. 이제 전체 설정 시간이 아닌,
    // 60분에 대한 비율을 기반으로 호의 각도를 계산합니다.
    const double totalSecondsInCircle = 60.0 * 60.0; // 60분 * 60초
    final double progress = remainingDuration.inSeconds / totalSecondsInCircle;

    // 3. 시간이 지남에 따라 줄어드는 보라색 진행 호 그리기
    final progressPaint = Paint()
      ..color = ColorName.p1
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // 이제 sweepAngle(호의 각도)은 60분 다이얼에 비례하여 정확하게 계산됩니다.
    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2, // 12시 방향에서 시작
      sweepAngle, // 남은 시간을 기반으로 한 호의 길이
      false,
      progressPaint,
    );

    // 4. 줄어드는 호의 끝에 핸들 그리기
    final handleAngle = -pi / 2 + sweepAngle;
    final handlePaint = Paint()..color = ColorName.p1;
    final handleOffset = Offset(
      center.dx + radius * cos(handleAngle),
      center.dy + radius * sin(handleAngle),
    );
    canvas.drawCircle(handleOffset, strokeWidth / 2 + 2, handlePaint);
  }

  @override
  bool shouldRepaint(covariant _ShrinkingTimerPainter oldDelegate) {
    // 남은 시간이 변경될 때만 다시 그립니다.
    return oldDelegate.remainingDuration != remainingDuration ||
        oldDelegate.size != size;
  }
}
