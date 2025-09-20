import 'dart:math';

import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/deep_time/view_model/deep_time_state.dart';
import 'package:bookstar/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularTimer extends ConsumerStatefulWidget {
  final double size;
  const CircularTimer({
    super.key,
    required this.size,
  });

  @override
  ConsumerState<CircularTimer> createState() => _CircularTimerState();
}

class _CircularTimerState extends ConsumerState<CircularTimer> {
  @override
  Widget build(BuildContext context) {
    final deepTimeState = ref.watch(deepTimeViewModelProvider).value;
    final status = deepTimeState?.status ?? DeepTimeStatus.initial;
    final settingDuration = deepTimeState?.settingDuration ?? Duration.zero;
    final remainingDuration = deepTimeState?.remainingDuration ?? Duration.zero;

    final bool isSettingTime =
        !(status == DeepTimeStatus.running || status == DeepTimeStatus.paused);

    final appearance = CircularSliderAppearance(
      customWidths: CustomSliderWidths(
        trackWidth: widget.size * 0.03,
        progressBarWidth: widget.size * 0.04,
        handlerSize: widget.size * 0.03,
        shadowWidth: 0,
      ),
      customColors: CustomSliderColors(
        trackColor: ColorName.g6,
        progressBarColors: [ColorName.p1, ColorName.o],
        dotColor: ColorName.w1,
        hideShadow: true,
      ),
      size: widget.size,
      startAngle: 270,
      angleRange: 360,
    );

    if (isSettingTime) {
      // --- 시간 설정 모드 ---
      // 사용자 입력을 위해 SleekCircularSlider 사용
      return SleekCircularSlider(
        appearance: appearance,
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
      // 동일한 모양을 위해 SleekCircularSlider를 사용하되, 상호작용은 비활성화합니다.
      return SleekCircularSlider(
        appearance: appearance,
        min: 0,
        max: 60.0,
        initialValue: remainingDuration.inSeconds / 60.0,
        onChange: null, // Makes the slider non-interactive
        innerWidget: (double value) => const SizedBox.shrink(),
      );
    }
  }
}
