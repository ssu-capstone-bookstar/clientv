import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_book_info_widget.dart';
import 'package:book/modules/reading_challenge/view_model/reading_challenge_progress_state.dart';
import 'package:book/modules/reading_challenge/view_model/reading_challenge_progress_view_model.dart';
import 'package:book/modules/search/model/search_book_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReadingChallengeProgressScreen extends ConsumerWidget {
  const ReadingChallengeProgressScreen({
    super.key,
    required this.book,
    required this.totalPages,
  });

  final SearchBookResponse book;
  final int totalPages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(readingChallengeProgressViewModelProvider);
    final viewModel =
        ref.read(readingChallengeProgressViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('리딩 챌린지 중'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            ChallengeBookInfoWidget(book: book),
            const SizedBox(height: 40),
            _buildPageInputSection(viewModel),
            const Spacer(),
            _buildBottomButtonSection(state),
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

  Widget _buildBottomButtonSection(ReadingChallengeProgressState state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL1(
          text: '기록하기',
          enabled: state.isButtonEnabled,
          onPressed: () {
            // TODO: Handle challenge logging
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
