import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:book/modules/reading_diary/view/widgets/reading_diary_edit_form.dart';
import 'package:book/modules/reading_diary/view_model/challenge_diaries_view_model.dart';
import 'package:book/modules/reading_diary/view_model/create_diary_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ReadingDiaryCreateScreen extends ConsumerStatefulWidget {
  const ReadingDiaryCreateScreen({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  ConsumerState<ReadingDiaryCreateScreen> createState() =>
      _ReadingDiaryCreateScreenState();
}

class _ReadingDiaryCreateScreenState
    extends ConsumerState<ReadingDiaryCreateScreen> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<String> _newImages = [];
  bool _disableSave = false;
  void _updateDisableSave(bool value) {
    setState(() {
      _disableSave = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('독서 다이어리'),
        leading: const BackButton(),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: GestureDetector(
          onTap: () {
            _focusNode.unfocus();
          },
          child: ReadingDiaryEditForm(
            textController: _textController,
            initialImages: [],
            focusNode: _focusNode,
            disabledSave: _disableSave,
            onUpdateDisabledSave: _updateDisableSave,
            onFocus: (show) {
              if (show) {
                _focusNode.requestFocus();
              } else {
                _focusNode.unfocus();
              }
            },
            onUpdateText: (text) {
              setState(() {
                _textController.text = text;
              });
            },
            onUpdateImage: (_, newImages) {
              setState(() {
                _newImages.clear();
                _newImages.addAll(newImages);
              });
            },
            onSave: () async {
              final images = _newImages.map((path) => XFile(path)).toList();
              final success = await ref
                  .read(createDiaryViewModelProvider.notifier)
                  .submitDiary(
                    bookId: widget.bookId,
                    images: images,
                    content: _textController.text,
                  );
              if (success) {
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
                if (context.mounted) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.go('/reading-challenge');
                  });
                }
              } else if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('다이어리 저장에 실패했습니다.')),
                );
              }
            },
          )),
    );
  }
}
