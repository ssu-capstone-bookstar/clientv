import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../common/components/button/cta_button_l2.dart';
import '../../../../common/components/dialog/custom_dialog.dart';
import '../../../../common/theme/app_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../view_model/current_challenge_view_model.dart';
import '../widgets/step_progress_indicator.dart';

class ReadingChallengeDiaryEncourageScreen extends ConsumerWidget {
  const ReadingChallengeDiaryEncourageScreen({
    super.key,
    required this.isChallengeCompleted,
    required this.progressId,
  });

  final bool isChallengeCompleted;
  final int progressId;

  static const path = '/reading-challenge/diary-encourage';
  static const name = 'ReadingChallengeDiaryEncourageScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = isChallengeCompleted ? '리딩 챌린지 중 (3/챌린지 성공)' : '리딩 챌린지';
    final subtitle = isChallengeCompleted ? '완독하셨네요! 챌린지 성공을 축하드려요' : null;
    final image = isChallengeCompleted
        ? Assets.icons.icReadingChallengeCompleted.svg()
        : Assets.icons.icReadingChallengeNotCompleted.svg();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: BackButton(
          onPressed: context.pop,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.go('/reading-challenge');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              Text(
                '오늘 읽은 내용을\n다이어리에 기록해 보세요',
                style: AppTexts.h2.copyWith(color: ColorName.w1),
              ),
              if (subtitle != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  // TODO: 보라색 그라데이션 효과
                  child: Text(
                    subtitle,
                    style: AppTexts.h4.copyWith(color: ColorName.p1),
                  ),
                ),
              const SizedBox(height: 12),
              const StepProgressIndicator(
                totalSteps: 3,
                currentStep: 3,
              ),
              const Spacer(),
              image,
              const Spacer(),
              _buildBottomButtons(context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL2(
          text: '나중에 하기',
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => CustomDialog(
                title: '나중에 하기',
                content: '독서 다이어리를 작성하지 않으면\n리딩 챌린지 참여가 인정되지 않아요',
                confirmButtonText: '바로 작성하기',
                cancelButtonText: '나중에 하기',
                onConfirm: () {
                  final challengeId =
                      ref.read(currentChallengeViewModelProvider).challengeId;
                  if (challengeId == null) return;
                  context.pop();
                  context.push('/reading-diary/$progressId');
                },
                onCancel: () {
                  context.go('/reading-challenge');
                },
                icon: Assets.icons.icReadingChallengeChar3.svg(
                  width: 80,
                  height: 80,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        CtaButtonL1(
          text: '작성하기',
          onPressed: () {
            final progressId =
                ref.read(currentChallengeViewModelProvider).progressId;
            if (progressId == null) return;
            context.push('/reading-diary/$progressId');
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
