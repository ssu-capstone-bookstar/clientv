import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/deep_time/view_model/deep_time_state.dart';
import 'package:flutter/material.dart';

class TimerCharacter extends StatelessWidget {
  final DeepTimeStatus status;
  const TimerCharacter({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _getCharacter(status).svg(
        key: ValueKey<DeepTimeStatus>(status),
        width: 120,
        height: 120,
      ),
    );
  }

  SvgGenImage _getCharacter(DeepTimeStatus status) {
    switch (status) {
      case DeepTimeStatus.initial:
        return Assets.icons.icDeeptypeCharBw;
      case DeepTimeStatus.setting:
        return Assets.icons.icDeeptypeCharFront;
      case DeepTimeStatus.ready:
        return Assets.icons.icDeeptypeCharFront;
      case DeepTimeStatus.running:
        return Assets.icons.icDeeptypeFire;
      case DeepTimeStatus.paused:
        return Assets.icons.icDeeptypeCharFront;
      case DeepTimeStatus.finished:
        return Assets.icons.icDeeptypeCharBw;
    }
  }
}
