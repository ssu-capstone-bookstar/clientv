import 'dart:io';

import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/diary_request.dart';
import 'package:bookstar/modules/reading_diary/view/widgets/reading_diary_edit_form.dart';
import 'package:bookstar/modules/reading_diary/view_model/challenge_diaries_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

class BookLogCreateScreen extends BaseScreen {
  const BookLogCreateScreen({
    super.key,
  });

  @override
  BaseScreenState<BaseScreen> createState() => _BookLogCreateScreenState();
}

class _BookLogCreateScreenState
    extends BaseScreenState<BookLogCreateScreen> {
  @override
  bool enableRefreshIndicator() => false;
  final int _selectedBookId = -1;
  final TextEditingController _textController = TextEditingController();
  final List<ImageItem> _images = [];
  bool _disableSave = false;
  void _updateDisableSave(bool value) {
    setState(() {
      _disableSave = value;
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('독서 다이어리'),
      leading: IconButton(
        icon: const BackButton(),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return ReadingDiaryEditForm(
      textController: _textController,
      initialImages: [],
      focusNode: focusNode,
      disabledSave: _disableSave,
      onUpdateDisabledSave: _updateDisableSave,
      onFocus: (show) {
        if (show) {
          focusNode.requestFocus();
        } else {
          focusNode.unfocus();
        }
      },
      onUpdateText: (text) {
        setState(() {
          _textController.text = text;
        });
      },
      onUpdateImage: (newImages) {
        setState(() {
          _images.clear();
          _images.addAll(newImages);
        });
      },
      onSave: () async {
        final List<ImageRequest> imageRequests =
            await Future.wait(_images.asMap().entries.map((entry) async {
          final index = entry.key;
          final item = entry.value;
          if (item is UrlImage) {
            return ImageRequest(
              imageUrl: item.imageRequest.imageUrl,
              sequence: index + 1,
            );
          } else if (item is GalleryImage) {
            final file = File(item.path);
            final imageRequest =
                await ref.read(fileToImageRequestProvider(file).future);
            return ImageRequest(
              imageUrl: imageRequest.imageUrl,
              sequence: index + 1,
            );
          } else if (item is EditingImage) {
            // 임시 디렉토리 가져오기
            final tempDir = await getTemporaryDirectory();
            final file = File(
                '${tempDir.path}/bookstar_${DateTime.now().millisecondsSinceEpoch}.png');
            // 바이트 데이터 쓰기
            await file.writeAsBytes(item.bytes);
            final imageRequest =
                await ref.read(fileToImageRequestProvider(file).future);
            return ImageRequest(
              imageUrl: imageRequest.imageUrl,
              sequence: index + 1,
            );
          } else {
            throw Exception('Unknown image type');
          }
        }));
        final diaryRequest = DiaryRequest(
          bookId: _selectedBookId,
          content: _textController.text,
          images: imageRequests,
        );

        await ref.read(bookLogDiaryCreateProvider(diaryRequest).future);

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
      },
    );
  }
}
