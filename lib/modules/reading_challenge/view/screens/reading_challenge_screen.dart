import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_option_card.dart';
import 'package:book/modules/reading_challenge/view_model/reading_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:book/gen/colors.gen.dart';

class ReadingChallengeScreen extends ConsumerWidget {
  const ReadingChallengeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '오늘은 어떤 책을 읽으셨나요?',
              style: AppTexts.b1.copyWith(color: ColorName.w1),
            ),
            SizedBox(height: 22),
            _buildOptionsSection(ref),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomSection(ref, context),
    );
  }

  Widget _buildOptionsSection(WidgetRef ref) {
    final selectedOption = ref.watch(readingChallengeViewModelProvider);
    final viewModel = ref.read(readingChallengeViewModelProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ChallengeOptionCard(
          title: '읽던 책 읽기',
          subtitle: '기존에 읽던 책을 이어서 감상해요',
          selected: selectedOption == ReadingChallengeType.reading,
          onTap: () => viewModel.selectOption(ReadingChallengeType.reading),
        ),
        const SizedBox(height: 12),
        ChallengeOptionCard(
          title: '새로운 책 읽기',
          subtitle: '새롭게 읽은 도서로 리딩 챌린지를 시작해요',
          selected: selectedOption == ReadingChallengeType.newBook,
          onTap: () => viewModel.selectOption(ReadingChallengeType.newBook),
        ),
        const SizedBox(height: 12),
        // ChallengeOptionCard(
        //   title: '모든 포인트 확인',
        //   subtitle: '챌린지에 참여하고 받은 포인트를 확인해 보세요',
        //   selected: selectedOption == ReadingChallengeType.allPoints,
        //   onTap: () => viewModel.selectOption(ReadingChallengeType.allPoints),
        // ),
      ],
    );
  }

  Widget _buildBottomSection(WidgetRef ref, BuildContext context) {
    final selectedOption = ref.watch(readingChallengeViewModelProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL1(
          text: '시작하기',
          enabled: selectedOption != null,
          onPressed: () {
            /** 읽던 책 읽기 */
            if (selectedOption == ReadingChallengeType.reading) {
              context.go('/reading-challenge/continue-list');
            } else if (selectedOption == ReadingChallengeType.newBook) {
              /** 새로운책 읽기*/
              context.go(
                '/reading-challenge/search-new?from=challenge',
              );
            } else {
              // TODO: Handle other options
            }
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
