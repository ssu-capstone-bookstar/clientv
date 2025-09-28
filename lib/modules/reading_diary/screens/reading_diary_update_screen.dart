import 'dart:io';

import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/diary_update_request.dart';
import 'package:bookstar/modules/reading_diary/view/widgets/reading_diary_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

class ReadingDiaryUpdateScreen extends BaseScreen {
  const ReadingDiaryUpdateScreen({
    super.key,
    required this.diaryId,
    required this.request,
    required this.memberId,
  });

  final int diaryId;
  final DiaryUpdateRequest request;
  final int memberId;

  @override
  BaseScreenState<ReadingDiaryUpdateScreen> createState() =>
      _ReadingDiaryUpdateScreenState();
}

class _ReadingDiaryUpdateScreenState
    extends BaseScreenState<ReadingDiaryUpdateScreen> {
  @override
  bool enableRefreshIndicator() => false;
  final TextEditingController _textController = TextEditingController();
  final List<ImageItem> _images = [];
  bool _disableSave = false;
  void _updateDisableSave(bool value) {
    setState(() {
      _disableSave = value;
    });
  }

  @override
  void onInitState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textController.text = widget.request.content;
      });
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
        initialImages: widget.request.images,
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
          final diaryRequestWithId = DiaryRequestWithId(
            request: DiaryUpdateRequest(
              content: _textController.text,
              images: imageRequests,
            ),
            diaryId: widget.diaryId,
          );
          await ref.read(bookLogDiaryUpdateProvider(diaryRequestWithId).future);
          if (context.mounted) {
            context.go('/book-log/thumbnail/${widget.memberId}',
                extra: {'requiredRefresh': true});
          }
        });
  }
}
