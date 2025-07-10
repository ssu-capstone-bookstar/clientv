import 'package:book/common/components/custom_dialog.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/ongoing_challenge_card.dart';
import 'package:book/modules/reading_challenge/view_model/ongoing_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/gen/assets.gen.dart';

class OngoingChallengeListScreen extends ConsumerWidget {
  const OngoingChallengeListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ongoingChallengeViewModelProvider);
    final viewModel = ref.read(ongoingChallengeViewModelProvider.notifier);
    final isSelectionMode = state.isSelectionMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('리딩 챌린지', style: AppTexts.b5),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTopSection(viewModel, isSelectionMode),
            const SizedBox(height: 16),
            Expanded(
              child: state.challenges.when(
                data: (challenges) =>
                    _buildChallengeGrid(challenges, state, viewModel),
                error: (error, stack) =>
                    const Center(child: Text('챌린지를 불러오는데 실패했습니다.')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
            if (isSelectionMode)
              _buildBottomDeleteButton(context, state, viewModel),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection(
      OngoingChallengeViewModel viewModel, bool isSelectionMode) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('완독에 도전 중인 도서를 찾아보세요', style: AppTexts.h4),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: viewModel.toggleSelectionMode,
            child: Text(
              isSelectionMode ? '선택 취소' : '챌린지 중단하기',
              style: AppTexts.b6.copyWith(color: ColorName.g3),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChallengeGrid(
    List<ChallengeResponse> challenges,
    OngoingChallengeScreenState screenState,
    OngoingChallengeViewModel viewModel,
  ) {
    if (challenges.isEmpty) {
      return const Center(child: Text('진행중인 챌린지가 없습니다.'));
    }
    final rowCount = (challenges.length / 3).ceil();
    return ListView.separated(
      itemCount: rowCount,
      itemBuilder: (context, rowIndex) {
        final startIndex = rowIndex * 3;
        final List<Widget> rowItems = [];
        for (int i = 0; i < 3; i++) {
          final challengeIndex = startIndex + i;
          if (challengeIndex < challenges.length) {
            final challenge = challenges[challengeIndex];
            rowItems.add(
              Expanded(
                child: OngoingChallengeCard(
                  challenge: challenge,
                  isSelectionMode: screenState.isSelectionMode,
                  isSelected: screenState.selectedChallengeIds
                      .contains(challenge.challengeId),
                ),
              ),
            );
          } else {
            rowItems.add(Expanded(child: Container())); // Placeholder
          }
          if (i < 2) {
            rowItems.add(const SizedBox(width: 16));
          }
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: rowItems,
        );
      },
      separatorBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(color: ColorName.g6, height: 1),
        );
      },
    );
  }

  Widget _buildBottomDeleteButton(BuildContext context,
      OngoingChallengeScreenState state, OngoingChallengeViewModel viewModel) {
    final bool isEnabled = state.selectedChallengeIds.isNotEmpty;
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 34),
      child: GestureDetector(
        onTap: isEnabled
            ? () => _showDeleteConfirmDialog(
                context, viewModel, state.selectedChallengeIds.length)
            : null,
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            color: isEnabled ? ColorName.g6 : ColorName.g7,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Text(
            '챌린지 중단하기',
            style: AppTexts.b7.copyWith(
              color: isEnabled ? ColorName.p1 : ColorName.g4,
            ),
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmDialog(
      BuildContext context, OngoingChallengeViewModel viewModel, int count) {
    showDialog(
      context: context,
      builder: (_) {
        return CustomDialog(
          title: '챌린지 중단',
          content: '선택한 ${count}개의 챌린지를 중단하시겠어요?',
          icon: Assets.icons.icReadingChallengeChar1.svg(),
          onCancel: () => Navigator.of(context).pop(),
          onConfirm: () async {
            Navigator.of(context).pop(); // Close the first dialog
            await viewModel.deleteSelectedChallenges();
            if (context.mounted) {
              _showDeleteSuccessDialog(context);
            }
          },
          confirmButtonText: '중단',
          cancelButtonText: '취소',
        );
      },
    );
  }

  void _showDeleteSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return CustomDialog(
          title: '리딩 챌린지 중단',
          content: '리딩 챌린지를 중단되었어요',
          icon: Assets.icons.icReadingChallengeChar2.svg(),
          onConfirm: () => Navigator.of(context).pop(),
          onCancel: () => Navigator.of(context).pop(),
          confirmButtonText: '확인',
          cancelButtonText: '',
        );
      },
    );
  }
}
