import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/common/components/custom_dialog.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_pick/model/search_book_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_book_info_widget.dart';
import 'package:book/modules/reading_challenge/view/widgets/step_progress_indicator.dart';
import 'package:book/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ReadingChallengeStartAndEndPageScreen extends ConsumerStatefulWidget {
  const ReadingChallengeStartAndEndPageScreen({
    super.key,
    required this.book,
    required this.totalPages,
    this.challengeId,
  });

  final SearchBookResponse book;
  final int totalPages;
  final int? challengeId;

  @override
  ConsumerState<ReadingChallengeStartAndEndPageScreen> createState() =>
      _ReadingChallengeStartAndEndPageScreenState();
}

class _ReadingChallengeStartAndEndPageScreenState
    extends ConsumerState<ReadingChallengeStartAndEndPageScreen> {

  final FocusNode startFocusNode = FocusNode();
  final FocusNode endFocusNode = FocusNode();

  @override
  void dispose() {
    startFocusNode.dispose();
    endFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref
            .read(currentChallengeViewModelProvider.notifier)
            .initializeChallenge(
              book: widget.book,
              totalPages: widget.totalPages,
              challengeId: widget.challengeId,
            );
      }
    });
  }

  void _showSkipDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return CustomDialog(
          title: '알림',
          content: '챌린지 생성이 안됩니다. 괜찮으신가요?',
          confirmButtonText: '확인',
          cancelButtonText: '취소',
          onConfirm: () {
            Navigator.of(context).pop();
            context.go('/reading-challenge');
          },
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(currentChallengeViewModelProvider.notifier);
    final book = widget.book;

    return Scaffold(
      appBar: AppBar(
        title: Text("리딩 챌린지"),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              if (widget.challengeId != null) {
                // 진행 중인 챌린지에서 왔다면 바로 이전 화면으로
                context.pop();
              } else {
                // 신규 챌린지라면 확인 다이얼로그 표시
                _showSkipDialog();
              }
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),
                      ChallengeBookInfoWidget(book: book),
                      const SizedBox(height: 16),
                      const StepProgressIndicator(
                        totalSteps: 3,
                        currentStep: 2,
                      ),
                      const SizedBox(height: 40),
                      _buildPageInputSection(context, viewModel, startFocusNode, endFocusNode),
                      const SizedBox(height: 24),
                      _buildBottomButtonSection(
                          context, book, widget.totalPages),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageInputSection(BuildContext ctx, CurrentChallengeViewModel viewModel, FocusNode startFocusNode, FocusNode endFocusNode) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '오늘 읽은 페이지 수를 알려주세요',
          style: AppTexts.b8.copyWith(color: ColorName.p1),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 24),
        _buildPageInputField(
          label: '에서',
          focusNode: startFocusNode,
          textInputAction: TextInputAction.next,
          onChanged: (value) => viewModel.setStartPage(value),
          onSubmitted: () {
            FocusScope.of(ctx).requestFocus(endFocusNode);
          },
        ),
        const SizedBox(height: 16),
        _buildPageInputField(
          label: '까지 읽었어요',
          focusNode: endFocusNode,
          textInputAction: TextInputAction.done,
          onChanged: (value) => viewModel.setEndPage(value),
          onSubmitted: () {
            FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }

  Widget _buildPageInputField({
    required String label,
    required ValueChanged<String> onChanged,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    Function()? onSubmitted,
  }) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: focusNode,
            textInputAction: textInputAction,
            onChanged: onChanged,
            onSubmitted: (_) => onSubmitted,
            textAlign: TextAlign.left,
            style: AppTexts.h3.copyWith(color: ColorName.w1),
            keyboardType: TextInputType.numberWithOptions(signed: true),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              filled: false,
              hintText: '페이지',
              hintStyle: AppTexts.h3.copyWith(color: ColorName.g6),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ColorName.g6),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ColorName.p1),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(label, style: AppTexts.h3.copyWith(color: ColorName.w1)),
      ],
    );
  }

  Widget _buildBottomButtonSection(
    BuildContext context,
    SearchBookResponse book,
    int totalPages,
  ) {
    final state = ref.watch(currentChallengeViewModelProvider);
    final viewModel = ref.read(currentChallengeViewModelProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL1(
          text: '기록하기',
          enabled: viewModel.isButtonEnabled,
          onPressed: () async {
            try {
              final int progressId;
              if (widget.challengeId == null) {
                progressId = await viewModel.createChallenge(ref);
              } else {
                progressId = await viewModel.updateChallengeProgress();
              }

              if (!context.mounted) return;

              final isChallengeCompleted = state.endPage != null &&
                  int.tryParse(state.endPage!) != null &&
                  int.parse(state.endPage!) >= totalPages;

              if (isChallengeCompleted) {
                context.push(
                  '/reading-challenge/rating',
                  extra: book,
                );
              } else {
                context.push(
                  '/reading-challenge/diary-encourage',
                  extra: {
                    'isChallengeCompleted': isChallengeCompleted,
                    'progressId': progressId,
                  },
                );
              }
            } catch (e) {
              debugPrint('Failed to process reading record: $e');
            }
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
