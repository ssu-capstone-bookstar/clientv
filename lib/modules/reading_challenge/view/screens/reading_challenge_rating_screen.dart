import 'package:book/common/components/cta_button_l1.dart';
import 'package:book/common/components/cta_button_l2.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_book_info_widget.dart';
import 'package:book/modules/reading_challenge/view/widgets/step_progress_indicator.dart';
import 'package:book/modules/reading_challenge/view_model/reading_challenge_rating_view_model.dart';
import 'package:book/modules/search/model/search_book_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ReadingChallengeRatingScreen extends ConsumerWidget {
  const ReadingChallengeRatingScreen({
    super.key,
    required this.book,
  });

  final SearchBookResponse book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel =
        ref.read(readingChallengeRatingViewModelProvider.notifier);
    final state = ref.watch(readingChallengeRatingViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("리딩 챌린지"),
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
            _buildRatingSection(viewModel, state),
            const Spacer(),
            _buildBottomButtonSection(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingSection(
    ReadingChallengeRatingViewModel viewModel,
    ReadingChallengeRatingState state,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '해당 도서를 읽은 별점 후기를 남겨보세요',
          style: AppTexts.b6.copyWith(color: ColorName.p1),
        ),
        const SizedBox(height: 24),
        // TODO: 임시로 라이브러리 별점 사용
        RatingBar(
          initialRating: state.rating,
          minRating: 0.5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemSize: 60.0,
          ratingWidget: RatingWidget(
            full: const Icon(Icons.star_rounded, color: ColorName.p1),
            half: const Icon(Icons.star_half, color: ColorName.p1),
            empty: const Icon(Icons.star_border_rounded, color: ColorName.g6),
          ),
          onRatingUpdate: (rating) {
            viewModel.setRating(rating);
          },
        ),
      ],
    );
  }

  Widget _buildBottomButtonSection(BuildContext context, WidgetRef ref) {
    final viewModel =
        ref.read(readingChallengeRatingViewModelProvider.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL1(
          text: '저장하기',
          enabled: viewModel.isButtonEnabled,
          onPressed: () {
            // TODO: 별점 저장 API 호출
            context.push(
              '/reading-challenge/diary-encourage',
              extra: true,
            );
          },
        ),
        const SizedBox(height: 8),
        CtaButtonL2(
          text: '나중에 남기기',
          onPressed: () {
            context.go('/reading-challenge');
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
