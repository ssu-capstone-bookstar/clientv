import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_pick/model/search_book_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_book_info_widget.dart';
import 'package:book/modules/reading_challenge/view/widgets/step_progress_indicator.dart';
import 'package:book/modules/reading_challenge/view_model/challenge_creation_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ReadingChallengeTotalPageScreen extends ConsumerStatefulWidget {
  const ReadingChallengeTotalPageScreen({
    super.key,
    required this.book,
  });

  final SearchBookResponse book;

  @override
  ConsumerState<ReadingChallengeTotalPageScreen> createState() =>
      _ReadingChallengeTotalPageScreenState();
}

class _ReadingChallengeTotalPageScreenState
    extends ConsumerState<ReadingChallengeTotalPageScreen> {
  final _textController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        _isButtonEnabled = _textController.text.isNotEmpty;
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
    final book = widget.book;

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
              currentStep: 1,
            ),
            const SizedBox(height: 60),
            _buildPageInputSection(),
            const Spacer(),
            _buildBottomButtonSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageInputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '선택하신 책의 전체 페이지 수를 알려주세요',
          style: AppTexts.b8.copyWith(color: ColorName.p1),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 24),
        TextField(
          controller: _textController,
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
      ],
    );
  }

  Widget _buildBottomButtonSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CtaButtonL1(
          text: '다음',
          enabled: _isButtonEnabled,
          onPressed: () {
            final totalPages = int.tryParse(_textController.text);
            if (totalPages != null && mounted) {
              context.push(
                '/reading-challenge/start-and-end',
                extra: {
                  'book': widget.book,
                  'totalPages': totalPages,
                },
              );
            }
          },
        ),
        const SizedBox(height: 34),
      ],
    );
  }
}
