import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/dialog/custom_dialog.dart';
import '../../../../gen/assets.gen.dart';
import '../../view_model/deep_time_view_model.dart';
import '../../view_model/playlist_view_model.dart';

class DeepTimePauseDialog extends ConsumerWidget {
  const DeepTimePauseDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomDialog(
      title: '딥타임 중단',
      content: '정말 딥타임을 멈출까요?',
      confirmButtonText: '계속 진행하기',
      cancelButtonText: '멈추기',
      icon: Assets.icons.icDeeptypeNotification1.svg(width: 100),
      onConfirm: () {
        Navigator.of(context).pop();
      },
      onCancel: () async {
        final audioPlayer = ref.read(audioPlayerProvider);
        if (audioPlayer.playing) {
          await audioPlayer.stop();
        }
        ref.read(selectedMusicProvider.notifier).cancel();
        await ref.read(deepTimeViewModelProvider.notifier).resetTimer();
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      },
    );
  }
}
