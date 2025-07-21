import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/components/text_field/input_1.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/modules/book_pick/model/search_book_response.dart';
import 'package:book/modules/reading_challenge/view/widgets/challenge_book_info_widget.dart';
import 'package:book/modules/reading_challenge/view/widgets/step_progress_indicator.dart';
import 'package:flutter/material.dart';
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("리딩 챌린지"),
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
          padding: AppPaddings.SCREEN_BODY_PADDING,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ChallengeBookInfoWidget(book: book),
                    const SizedBox(height: 25),
                    const StepProgressIndicator(
                      totalSteps: 3,
                      currentStep: 1,
                    ),
                    const SizedBox(height: 40),
                    _buildPageInputSection(),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomButtonSection(),
      ),
    );
  }

  Widget _buildPageInputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Input1(
          controller: _textController,
          label: '선택하신 책의 전체 페이지 수를 알려주세요',
          hintText: '페이지',
        ),
      ],
    );
  }

  Widget _buildBottomButtonSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 54),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CtaButtonL1(
            text: '다음으로',
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
        ],
      ),
    );
  }
}
