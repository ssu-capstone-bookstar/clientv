import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/diary_update_request.dart';
import 'package:bookstar/modules/reading_diary/view/widgets/reading_diary_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  final List<ImageRequest> _uploadedImages = [];
  final List<String> _newImages = [];
  bool _disableSave = false;
  void _updateDisableSave(bool value) {
    setState(() {
      _disableSave = value;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textController.text = widget.request.content;
        _uploadedImages.addAll(widget.request.images);
      });
    });
    super.initState();
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
            onUpdateImage: (uploadedImages, newImages) {
              setState(() {
                _uploadedImages.clear();
                _uploadedImages.addAll(uploadedImages);
                _newImages.clear();
                _newImages.addAll(newImages);
              });
            },
            onSave: () async {
              final imageRequests =
                  await ref.read(imageUploadProvider(_newImages).future);
              final newImageRequests = [..._uploadedImages, ...imageRequests]
                  .asMap()
                  .map((index, e) => MapEntry(
                      index, ImageRequest(image: e.image, sequence: index + 1)))
                  .values
                  .toList();

              final diaryRequestWithId = DiaryRequestWithId(
                request: DiaryUpdateRequest(
                  content: _textController.text,
                  images: newImageRequests,
                ),
                diaryId: widget.diaryId,
              );

              await ref
                  .read(bookLogDiaryUpdateProvider(diaryRequestWithId).future);
              if (context.mounted) {
                context.go('/book-log/thumbnail/${widget.memberId}',
                    extra: {'requiredRefresh': true});
              }
            });
  }
}
