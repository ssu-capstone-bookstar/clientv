import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/components/button/cta_button_l2.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/ongoing_challenge_card.dart';
import 'package:book/modules/reading_challenge/view_model/ongoing_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/dialog/custom_dialog.dart';
import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../view_model/get_challenges_by_member_view_model.dart';

class OngoingChallengeListScreen extends ConsumerStatefulWidget {
  const OngoingChallengeListScreen({super.key});

  @override
  ConsumerState<OngoingChallengeListScreen> createState() =>
      _OngoingChallengeListScreenState();
}

class _OngoingChallengeListScreenState
    extends ConsumerState<OngoingChallengeListScreen> {
  final TextEditingController _textController = TextEditingController();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        searchQuery = _textController.text;
      });
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ongoingChallengeViewModelProvider);
    final viewModel = ref.read(ongoingChallengeViewModelProvider.notifier);
    final isSelectionMode = state.isSelectionMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('리딩 챌린지', style: AppTexts.b5),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTopSection(viewModel, isSelectionMode, _textController),
            const SizedBox(height: 16),
            Expanded(
              child: state.challenges.when(
                data: (challenges) => _buildChallengeGrid(
                  challenges
                      .where((challenge) =>
                          challenge.book.title.contains(searchQuery))
                      .toList(),
                  state,
                  viewModel,
                ),
                error: (error, stack) =>
                    const Center(child: Text('챌린지를 불러오는데 실패했습니다.')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
            if (isSelectionMode)
              _buildBottomDeleteButton(context, state, viewModel, ref),
            const SizedBox(height: 34),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection(OngoingChallengeViewModel viewModel,
      bool isSelectionMode, TextEditingController textController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('완독에 도전 중인 도서를 찾아보세요', style: AppTexts.h4),
        const SizedBox(height: 8),
        SearchTextField(
          controller: textController,
          hintText: '읽던 책을 검색해 보세요',
          hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
          suffixIcon: textController.text.isNotEmpty
              ? Assets.images.icSearchColored3x.image(scale: 3)
              : Assets.images.icSearchUncolored3x.image(scale: 3),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: CtaButtonL2(
            text: isSelectionMode ? '선택 취소' : '챌린지 중단하기',
            onPressed: viewModel.toggleSelectionMode,
            width: 76,
            height: 27,
            textStyle: AppTexts.b12,
            defaultTextColor: ColorName.p1,
            borderRadius: 5,
            defaultBackgroundColor: ColorName.g7,
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
                  onToggle: () {
                    viewModel.toggleChallengeSelection(challenge.challengeId);
                  },
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

  Widget _buildBottomDeleteButton(
      BuildContext context,
      OngoingChallengeScreenState state,
      OngoingChallengeViewModel viewModel,
      WidgetRef ref) {
    final bool isEnabled = state.selectedChallengeIds.isNotEmpty;
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 34),
        child: CtaButtonL1(
          text: '챌린지 중단하기',
          onPressed: isEnabled
              ? () => _showDeleteConfirmDialog(
                  context, viewModel, state.selectedChallengeIds.length, ref)
              : null,
        ));
  }

  void _showDeleteConfirmDialog(BuildContext context,
      OngoingChallengeViewModel viewModel, int count, WidgetRef ref) {
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
            // BookLogScreen의 챌린지 목록 Provider invalidate
            final user = ref.read(authViewModelProvider).value;
            final memberId = (user is AuthSuccess) ? user.memberId : 0;
            ref.invalidate(
                getChallengesByMemberViewModelProvider(memberId: memberId));
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
