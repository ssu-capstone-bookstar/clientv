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
  });

  final SearchBookResponse book;
  final int totalPages;

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

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(readingChallengeProgressViewModelProvider);
    final viewModel =
        ref.read(readingChallengeProgressViewModelProvider.notifier);
    final book = widget.book;
    final totalPages = widget.totalPages;

    return Scaffold(
      appBar: AppBar(
        title: Text("리딩 챌린지"),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.go('/reading-challenge');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
            const Spacer(),
            _buildBottomButtonSection(context, state, book, totalPages),
          ],
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
              if (ref.read(currentChallengeViewModelProvider).challengeId ==
                  null) {
                await currentChallengeVM.createChallenge();
              }

              // TODO: 챌린지 생성 후 독서 기록 API 호출 필요

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
              print('Failed to create challenge: $e');
            }
          },
        ),
        const SizedBox(height: 8),
        CtaButtonL1(
          text: '다음에 기록하기',
          enabled: !state.isButtonEnabled,
          onPressed: () {
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
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
