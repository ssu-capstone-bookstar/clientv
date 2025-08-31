import 'package:book/common/models/image_request.dart';
import 'package:book/modules/book_log/view_model/book_log_view_model.dart';
import 'package:book/modules/reading_diary/model/diary_update_request.dart';
import 'package:book/modules/reading_diary/view/widgets/reading_diary_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ReadingDiaryUpdateScreen extends ConsumerStatefulWidget {
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
  ConsumerState<ReadingDiaryUpdateScreen> createState() =>
      _ReadingDiaryUpdateScreenState();
}

class _ReadingDiaryUpdateScreenState
    extends ConsumerState<ReadingDiaryUpdateScreen> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<ImageRequest> _uploadedImages = [];
  final List<String> _newImages = [];

  @override
  void initState() {
    setState(() {
      _textController.text = widget.request.content;
      _uploadedImages.addAll(widget.request.images);
    });
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
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
            initialImages: widget.request.images,
            focusNode: _focusNode,
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
            }),
      ),
    );
  }
}
