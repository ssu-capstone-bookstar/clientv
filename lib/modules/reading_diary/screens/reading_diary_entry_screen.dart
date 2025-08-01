import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/theme/style/app_texts.dart';
import '../../../common/components/button/cta_button_l1.dart';
import '../../../gen/colors.gen.dart';
import '../../reading_challenge/view_model/current_challenge_view_model.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../../auth/view_model/auth_state.dart';
import '../view_model/create_diary_view_model.dart';
import '../view_model/challenge_diaries_view_model.dart';

class ReadingDiaryEntryScreen extends ConsumerStatefulWidget {
  const ReadingDiaryEntryScreen({
    super.key,
    required this.imagePaths,
    required this.bookId,
  });

  final List<String> imagePaths;
  final int bookId;

  static String get routeName => 'reading-diary-entry';

  @override
  ConsumerState<ReadingDiaryEntryScreen> createState() =>
      _ReadingDiaryEntryScreenState();
}

class _ReadingDiaryEntryScreenState
    extends ConsumerState<ReadingDiaryEntryScreen> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus &&
          _textController.text.trim().isEmpty &&
          mounted) {
        setState(() {
          _isEditing = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: _buildAppBar(),
        body: _buildBody(isKeyboardVisible),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('독서 다이어리'),
      leading: const BackButton(),
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // TODO: Add confirmation dialog before popping
            context.go('/reading-challenge');
          },
        ),
      ],
    );
  }

  Widget _buildBody(bool isKeyboardVisible) {
    final canSubmit = _textController.text.trim().isNotEmpty;
    final isSaveButtonVisible = !isKeyboardVisible && (_isEditing || canSubmit);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (widget.imagePaths.isNotEmpty) _buildImageSection(),
                  _buildTextSection(),
                ],
              ),
            ),
          ),
          if (isSaveButtonVisible) _buildSubmitButton(),
        ],
      ),
    );
  }

  Widget _buildImageSection() {
    return AspectRatio(
      aspectRatio: 1,
      child: PageView.builder(
        itemCount: widget.imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Image.file(
              File(widget.imagePaths[index]),
              fit: BoxFit.contain,
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextSection() {
    if (!_isEditing) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _isEditing = true;
          });
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              _focusNode.requestFocus();
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Row(
            children: [
              const Icon(Icons.edit, color: ColorName.g4, size: 20),
              const SizedBox(width: 8),
              Text(
                '느낀 생각을 마음껏 표현해 보세요',
                style: AppTexts.b10.copyWith(color: ColorName.g4),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          controller: _textController,
          focusNode: _focusNode,
          style: AppTexts.b10.copyWith(color: ColorName.w1),
          decoration: InputDecoration(
            hint:  Row(
            children: [
              const Icon(Icons.edit, color: ColorName.g4, size: 20),
              const SizedBox(width: 8),
              Text(
                '느낀 생각을 마음껏 표현해 보세요',
                style: AppTexts.b10.copyWith(color: ColorName.g4),
              ),
            ],
          ),
            border: InputBorder.none,
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
          autofocus: true,
        ),
      );
    }
  }

  Widget _buildSubmitButton() {
    final isLoading = ref.watch(createDiaryViewModelProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: CtaButtonL1(
        text: '저장하기',
        enabled: _textController.text.trim().isNotEmpty && !isLoading,
        onPressed: () async {
          final images = widget.imagePaths.map((path) => XFile(path)).toList();
          final success =
              await ref.read(createDiaryViewModelProvider.notifier).submitDiary(
                    bookId: widget.bookId,
                    images: images,
                    content: _textController.text,
                  );
          if (success && mounted) {
            final authState = ref.read(authViewModelProvider);
            final int? memberId = authState.when(
              data: (data) => (data is AuthSuccess) ? data.memberId : null,
              loading: () => null,
              error: (e, st) => null,
            );
            final challengeId =
                ref.read(currentChallengeViewModelProvider).challengeId;
            if (memberId != null && challengeId != null) {
              ref.invalidate(challengeDiariesViewModelProvider(
                memberId: memberId,
                challengeId: challengeId,
              ));
            }
            context.go('/reading-challenge');
          } else if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('다이어리 저장에 실패했습니다.')),
            );
          }
        },
      ),
    );
  }

  // Widget _buildToolButton(IconData icon, String label) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Icon(icon, color: Colors.white, size: 28),
  //       const SizedBox(height: 4),
  //       Text(
  //         label,
  //         style: AppTexts.b3.copyWith(color: Colors.white),
  //       ),
  //     ],
  //   );
  // }
}
