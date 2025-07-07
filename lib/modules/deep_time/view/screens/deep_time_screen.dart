import 'dart:ui';

import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/common/utils/format_utils.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/deep_time/view/widgets/circular_timer.dart';
import 'package:book/modules/deep_time/view/widgets/deep_time_completion_dialog.dart';
import 'package:book/modules/deep_time/view/widgets/timer_character.dart';
import 'package:book/modules/deep_time/view/widgets/timer_controls.dart';
import 'package:book/modules/deep_time/view_model/deep_time_state.dart';
import 'package:book/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeepTimeScreen extends ConsumerWidget {
  const DeepTimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(deepTimeViewModelProvider, (previous, next) {
      if (next.value?.status == DeepTimeStatus.finished) {
        showDialog(
          context: context,
          builder: (_) => const DeepTimeCompletionDialog(),
          barrierDismissible: false,
        );
      }
    });

    final asyncState = ref.watch(deepTimeViewModelProvider);

    return asyncState.when(
      data: (state) => _buildContent(context, ref, state),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => Center(
        child: Text(
          'Error: $e',
          style: const TextStyle(color: ColorName.w1),
        ),
      ),
    );
  }

  Widget _buildContent(
      BuildContext context, WidgetRef ref, DeepTimeState state) {
    final status = state.status;
    final displayDuration =
        status == DeepTimeStatus.running || status == DeepTimeStatus.paused
            ? state.remainingDuration
            : state.settingDuration;

    return LayoutBuilder(builder: (context, constraints) {
      final timerSize = constraints.maxWidth * 0.75;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Spacer(flex: 2),
            _buildTodayTotalTime(state.todayTotalSeconds),
            const Spacer(flex: 4),
            SizedBox(
              width: timerSize,
              height: timerSize,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  CircularTimer(size: timerSize),
                  _buildTimeMarker('0', const Alignment(0, -1.25)),
                  _buildTimeMarker('15', const Alignment(1.25, 0)),
                  _buildTimeMarker('30', const Alignment(0, 1.25)),
                  _buildTimeMarker('45', const Alignment(-1.25, 0)),
                  TimerCharacter(status: status),
                ],
              ),
            ),
            const Spacer(flex: 2),
            _buildStatusText(status, displayDuration),
            const Spacer(),
            if (state.settingDuration > Duration.zero) ...[
              const TimerControls(),
              const SizedBox(height: 24),
            ],
            _TimerDisplay(
              status: status,
              displayDuration: displayDuration,
            ),
            const SizedBox(height: 36),
            CtaButtonL1(
              text: '플레이 리스트',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
    });
  }

  Widget _buildTimeMarker(String text, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: AppTexts.b7.copyWith(color: ColorName.g4),
      ),
    );
  }

  Widget _buildStatusText(DeepTimeStatus status, Duration duration) {
    String text;
    if (duration > Duration.zero) {
      text = ' ';
    } else {
      text = '시간을 돌려 설정해 보세요';
    }

    return Text(
      text,
      style: AppTexts.b6.copyWith(color: ColorName.g4),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildTodayTotalTime(int totalSeconds) {
    final duration = Duration(seconds: totalSeconds);
    final timeStr =
        '${duration.inHours}시간 ${duration.inMinutes.remainder(60)}분';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '오늘의 누적 시간',
          style: AppTexts.b8.copyWith(color: ColorName.g4),
        ),
        const SizedBox(width: 8),
        Text(
          timeStr,
          style: AppTexts.b7.copyWith(color: ColorName.w1),
        ),
      ],
    );
  }
}

class _TimerDisplay extends StatelessWidget {
  const _TimerDisplay({
    required this.status,
    required this.displayDuration,
  });

  final DeepTimeStatus status;
  final Duration displayDuration;

  @override
  Widget build(BuildContext context) {
    final timerText = Text(
      FormatUtils.formatDuration(displayDuration),
      style: (status == DeepTimeStatus.running ? AppTexts.h1 : AppTexts.h2)
          .copyWith(color: ColorName.g2),
    );

    if (status != DeepTimeStatus.running) {
      return timerText;
    }

    return SizedBox(
      height: 80,
      width: 250,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
            child: Container(
              decoration: const BoxDecoration(
                // 아래에서 위로 점점 연해지는 효과
                gradient: LinearGradient(
                  // 시작 색상(진하게) -> 끝 색상(연하게)
                  colors: [
                    Color.fromRGBO(122, 101, 255, 0.7), // 아래쪽 (진한 보라)
                    Color.fromRGBO(122, 101, 255, 0.2), // 위쪽 (연한 보라)
                  ],
                  // 그라데이션 방향: 아래에서 위로
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          timerText,
          Positioned(
            left: -10,
            top: -5,
            child: Assets.icons.icDeeptypeStickerClock.svg(width: 40),
          ),
          Positioned(
            right: -15,
            top: 0,
            child: Assets.icons.icDeeptypeStickerBook.svg(width: 35),
          ),
          Positioned(
            bottom: -25,
            right: 40,
            child: Assets.icons.icDeeptypeStickerCloud.svg(width: 40),
          ),
        ],
      ),
    );
  }
}
