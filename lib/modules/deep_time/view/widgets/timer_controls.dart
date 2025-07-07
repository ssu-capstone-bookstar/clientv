import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/deep_time/view/widgets/deep_time_pause_dialog.dart';
import 'package:book/modules/deep_time/view_model/deep_time_state.dart';
import 'package:book/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimerControls extends ConsumerWidget {
  const TimerControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth * 0.18;

    final state = ref.watch(deepTimeViewModelProvider).value;
    if (state == null) {
      return const SizedBox.shrink();
    }

    final status = state.status;
    final bool isRunning = status == DeepTimeStatus.running;
    final bool isReady = status == DeepTimeStatus.ready;
    final bool isPaused = status == DeepTimeStatus.paused;
    final bool isSetting =
        status == DeepTimeStatus.initial || status == DeepTimeStatus.setting;

    VoidCallback? onPressed;

    if (isSetting) {
      onPressed = null;
    } else if (isRunning) {
      onPressed = () {
        showDialog(
          context: context,
          builder: (_) => const DeepTimePauseDialog(),
        );
      };
    } else if (isPaused) {
      final viewModel = ref.read(deepTimeViewModelProvider.notifier);
      onPressed = viewModel.pauseTimer;
    } else if (isReady) {
      final viewModel = ref.read(deepTimeViewModelProvider.notifier);
      onPressed = viewModel.startTimer;
    }

    return GestureDetector(
      onTap: onPressed,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: isRunning
            ? Icon(
                Icons.pause_circle_filled,
                key: const ValueKey('pause'),
                color: ColorName.p1,
                size: iconSize,
              )
            : Icon(
                Icons.play_circle_filled,
                key: const ValueKey('play'),
                color: isSetting ? ColorName.g5 : ColorName.p1,
                size: iconSize,
              ),
      ),
    );
  }
}
