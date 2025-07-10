import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/common/components/custom_dialog.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_pick/model/search_book_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_book_info_widget.dart';
import 'package:book/modules/reading_challenge/view/widgets/step_progress_indicator.dart';
import 'package:book/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:book/modules/reading_challenge/view_model/reading_challenge_progress_state.dart';
import 'package:book/modules/reading_challenge/view_model/reading_challenge_progress_view_model.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref
            .read(currentChallengeViewModelProvider.notifier)
            .setChallenge(widget.book, widget.totalPages);
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
    final state = ref.watch(readingChallengeProgressViewModelProvider);
    final viewModel =
        ref.read(readingChallengeProgressViewModelProvider.notifier);
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
                      _buildPageInputSection(viewModel),
                      const SizedBox(height: 24),
                      _buildBottomButtonSection(
                          context, state, book, widget.totalPages),
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

  Widget _buildPageInputSection(ReadingChallengeProgressViewModel viewModel) {
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
          onChanged: (value) => viewModel.setStartPage(value),
        ),
        const SizedBox(height: 16),
        _buildPageInputField(
          label: '까지 읽었어요',
          onChanged: (value) => viewModel.setEndPage(value),
        ),
      ],
    );
  }

  Widget _buildPageInputField({
    required String label,
    required ValueChanged<String> onChanged,
  }) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: onChanged,
            textAlign: TextAlign.left,
            style: AppTexts.h3.copyWith(color: ColorName.w1),
            keyboardType: TextInputType.number,
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
    ReadingChallengeProgressState state,
    SearchBookResponse book,
    int totalPages,
  ) {
    final currentChallengeVM =
        ref.read(currentChallengeViewModelProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL1(
          text: '기록하기',
          enabled: state.isButtonEnabled,
          onPressed: () async {
            try {
              // challengeId가 없는 경우(신규)에만 챌린지를 생성
              if (widget.challengeId == null) {
                await currentChallengeVM.createChallenge();
              }

              if (state.endPage != null &&
                  int.tryParse(state.endPage!) != null &&
                  int.parse(state.endPage!) >= totalPages) {
                context.push(
                  '/reading-challenge/rating',
                  extra: book,
                );
              } else {
                context.push('/reading-challenge/diary-encourage',
                    extra: false);
              }
            } catch (e) {
              // Handle error, e.g., show an error dialog
              print('Failed to process reading record: $e');
            }
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
