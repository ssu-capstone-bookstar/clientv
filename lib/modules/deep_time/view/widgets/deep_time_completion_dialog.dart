import 'package:bookstar/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../common/components/dialog/custom_dialog.dart';
import 'package:go_router/go_router.dart';

class DeepTimeCompletionDialog extends ConsumerWidget {
  const DeepTimeCompletionDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomDialog(
      title: '딥타임 종료',
      content: '딥타임이 종료되었어요\n리딩 챌린지를 작성해 볼까요?',
      confirmButtonText: '리딩 챌린지 작성하기',
      cancelButtonText: '다시 하기',
      icon: Assets.icons.icDeeptypeNotification2.svg(width: 100),
      onConfirm: () {
        if (!context.mounted) return;
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        context.go('/reading-challenge/');
      },
      onCancel: () {
        if (!context.mounted) return;
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      },
    );
  }
}
