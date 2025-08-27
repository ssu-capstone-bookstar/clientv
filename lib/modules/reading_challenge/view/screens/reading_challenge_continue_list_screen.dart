import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/components/button/cta_button_s.dart';
import 'package:book/common/components/custom_grid_view.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/ongoing_challenge_card.dart';
import 'package:book/modules/reading_challenge/view_model/ongoing_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/dialog/custom_dialog.dart';
import '../../../../common/components/text_field/search_text_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../auth/view_model/auth_view_model.dart';
import '../../../auth/view_model/auth_state.dart';
import '../../view_model/get_challenges_by_member_view_model.dart';

class ReadingChallengeContinueListScreen extends ConsumerStatefulWidget {
  const ReadingChallengeContinueListScreen({super.key});

  @override
  ConsumerState<ReadingChallengeContinueListScreen> createState() =>
      _ReadingChallengeContinueListScreenState();
}

class _ReadingChallengeContinueListScreenState
    extends ConsumerState<ReadingChallengeContinueListScreen> {
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
    final notifier = ref.read(ongoingChallengeViewModelProvider.notifier);
    final isSelectionMode = state.isSelectionMode;
    final selectedChallengeIds = state.selectedChallengeIds;

    return Scaffold(
      appBar: AppBar(
        title: Text('리딩 챌린지', style: AppTexts.b5),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBook(
                isSelectionMode: isSelectionMode,
                textController: _textController,
                onTapSelectionMode: notifier.toggleSelectionMode),
            const SizedBox(height: 18),
            Expanded(
              child: state.challenges.when(
                data: (data) {
                  final filteredChallenges = data
                      .where((challenge) => challenge.book.title
                          .toLowerCase()
                          .contains(searchQuery.toLowerCase()))
                      .toList();
                  return _buildChallengeGrid(
                    challenges: filteredChallenges,
                    isSelectionMode: isSelectionMode,
                    selectedChallengeIds: state.selectedChallengeIds,
                    onTapItem: (challenge) {
                      final uri = Uri(
                        path: '/reading-challenge/detail/${challenge.book.id}',
                        queryParameters: {
                          'challengeId': challenge.challengeId.toString(),
                          'totalPages': challenge.totalPages.toString(),
                        },
                      );
                      context.push(uri.toString());
                    },
                    onToggleItem: (challenge) {
                      notifier.toggleChallengeSelection(challenge.challengeId);
                    },
                  );
                },
                loading: _loading,
                error: _error("리딩챌린지 정보를 불러오는데 실패했습니다."),
              ),
            ),
            if (isSelectionMode)
              _buildBottomDeleteButton(
                isEnabled: selectedChallengeIds.isNotEmpty,
                onTap: () {
                  _showDeleteConfirmDialog(
                    context: context,
                    onCancel: () => Navigator.of(context).pop(),
                    onConfirm: () async {
                      Navigator.of(context).pop(); // Close the first dialog
                      await notifier.deleteSelectedChallenges();
                      // BookLogScreen의 챌린지 목록 Provider invalidate
                      final user = ref.read(authViewModelProvider).value;
                      final memberId =
                          (user is AuthSuccess) ? user.memberId : 0;
                      ref.invalidate(getChallengesByMemberViewModelProvider(
                          memberId: memberId));
                      if (context.mounted) {
                        _showDeleteSuccessDialog(context);
                      }
                    },
                  );
                },
              ),
            const SizedBox(height: 34),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBook({
    required bool isSelectionMode,
    required TextEditingController textController,
    required Function() onTapSelectionMode,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '완독에 도전 중인 도서를 찾아보세요',
          style: AppTexts.b1.copyWith(color: ColorName.w1),
        ),
        SizedBox(
          height: 15,
        ),
        SearchTextField(
          controller: textController,
          hintText: '읽고 싶은 책을 검색해 보세요',
          hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
          suffixIcon: textController.text.isNotEmpty
              ? Assets.images.icSearchColored3x.image(scale: 3)
              : Assets.images.icSearchUncolored3x.image(scale: 3),
        ),
        const SizedBox(height: 25),
        Align(
          alignment: Alignment.centerRight,
          child: CtaButtonS(
            text: isSelectionMode ? '선택 취소' : '챌린지 중단하기',
            onPressed: onTapSelectionMode,
            width: 76,
          ),
        ),
      ],
    );
  }

  Widget _buildChallengeGrid({
    required List<ChallengeResponse> challenges,
    required bool isSelectionMode,
    required Set<int> selectedChallengeIds,
    required Function(ChallengeResponse) onTapItem,
    required Function(ChallengeResponse) onToggleItem,
  }) {
    return CustomGridView(
      emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
      emptyText: '진행중인 챌린지가 없습니다.',
      isEmpty: challenges.isEmpty,
      itemCount: challenges.length,
      itemBuilder: (context, index) {
        final challenge = challenges[index];
        return OngoingChallengeCard(
          challenge: challenge,
          isSelectionMode: isSelectionMode,
          isSelected: selectedChallengeIds.contains(challenge.challengeId),
          onTap: () => onTapItem(challenge),
          onToggle: () => onToggleItem(challenge),
        );
      },
      hasNext: false, // TODO: cursor pagination 추가
      // scrollController: scrollController, // TODO: cursor pagination 추가
      gridPadding: EdgeInsets.zero,
    );
  }

  Widget _buildBottomDeleteButton({
    required bool isEnabled,
    required Function() onTap,
  }) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 34),
        child: CtaButtonL1(
          text: '챌린지 중단하기',
          onPressed: isEnabled ? onTap : null,
        ));
  }

  void _showDeleteConfirmDialog({
    required BuildContext context,
    required Function() onCancel,
    required Function() onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (_) {
        return CustomDialog(
          title: '리딩 챌린지를 중단할까요?',
          content: '중단한 리딩 챌린지는 마이페이지 > 중단한 리딩 챌린지에서\n언제든지 다시 진행할 수 있어요',
          titleStyle: AppTexts.b7.copyWith(color: ColorName.w1),
          contentStyle: AppTexts.b11.copyWith(color: ColorName.g2),
          icon: Assets.icons.icReadingChallengeChar1
              .svg(width: 100, height: 106.8803482055664),
          onCancel: onCancel,
          onConfirm: onConfirm,
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

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
