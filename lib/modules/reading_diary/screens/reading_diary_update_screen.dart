import 'dart:io';

import 'package:book/common/components/modal/photo_source_modal.dart';
import 'package:book/common/models/image_request.dart';
import 'package:book/modules/book_log/view_model/book_log_view_model.dart';
import 'package:book/modules/reading_diary/model/diary_update_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/theme/style/app_texts.dart';
import '../../../common/components/button/cta_button_l1.dart';
import '../../../gen/colors.gen.dart';
import '../view_model/create_diary_view_model.dart';

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
  final _textController = TextEditingController();
  final List<ImageRequest> uploadedImages = [];
  final List<String> newImages = [];
  final _focusNode = FocusNode();
  bool _isEditing = false;
  final ImagePicker _picker = ImagePicker();
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    setState(() {
      _textController.text = widget.request.content;
      uploadedImages.addAll(widget.request.images);
      _isEditing = true;
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

  Future<void> _pickImages(ImageSource source) async {
    List<XFile> pickedFiles = [];
    if (source == ImageSource.camera) {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null) {
        pickedFiles.add(image);
      }
    } else if (source == ImageSource.gallery) {
      pickedFiles = await _picker.pickMultiImage();
    }

    if (pickedFiles.isNotEmpty && mounted) {
      final imagePaths = pickedFiles.map((f) => f.path).toList();
      if (imagePaths.isNotEmpty) {
        final previousLength = newImages.length;
        setState(() {
          newImages.addAll(imagePaths);
        });
        _goToPage(previousLength + 1);
      }
    }
  }

  void _goToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  _removeImage(int index) {
    setState(() {
      if (index < uploadedImages.length) {
        // 서버에 업로드된 이미지인 경우
        uploadedImages.removeAt(index);
      } else {
        // 새로 추가한 이미지인 경우
        newImages.removeAt(index - uploadedImages.length);
      }
    });
  }

  _onSave() async {
    final imageRequests = await ref.read(imageUploadProvider(newImages).future);
    final newImageRequests = [...uploadedImages, ...imageRequests]
        .asMap()
        .map((index, e) => MapEntry(index, ImageRequest(image: e.image, sequence: index + 1)))
        .values
        .toList();

    final diaryRequestWithId = DiaryRequestWithId(
      request: DiaryUpdateRequest(
        content: _textController.text,
        images: newImageRequests,
      ),
      diaryId: widget.diaryId,
    );

    await ref.read(bookLogDiaryUpdateProvider(diaryRequestWithId).future);
    if (mounted) {
      context.go('/book-log/thumbnail/${widget.memberId}');
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;
    final canSubmit = _textController.text.trim().isNotEmpty;
    final isSaveButtonVisible = !isKeyboardVisible && (_isEditing || canSubmit);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('독서 다이어리'),
          leading: const BackButton(),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildImageSection(),
                      _buildTextSection(),
                    ],
                  ),
                ),
              ),
              if (isSaveButtonVisible) _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    final totalImageLength = uploadedImages.length + newImages.length;

    return AspectRatio(
      aspectRatio: 1,
      child: PageView.builder(
        controller: _pageController,
        itemCount: totalImageLength == 0 ? 1 : totalImageLength,
        itemBuilder: (context, index) {
          if (totalImageLength == 0) {
            return InkWell(
              onTap: () => PhotoSourceModal.show(context, onPick: _pickImages),
              child: const Center(
                child: Icon(Icons.add_photo_alternate,
                    size: 24, color: ColorName.g1),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  index < uploadedImages.length
                      ? Image.network(uploadedImages[index].image ?? "")
                      : Image.file(
                          File(
                            newImages[index - uploadedImages.length],
                          ),
                          fit: BoxFit.contain,
                        ),
                  Positioned(
                    right: 40,
                    child: InkWell(
                      onTap: () =>
                          PhotoSourceModal.show(context, onPick: _pickImages),
                      child: const Center(
                        child: Icon(Icons.add_photo_alternate,
                            size: 24, color: ColorName.g1),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    child: InkWell(
                      onTap: () => _removeImage(index),
                      child: const Center(
                        child: Icon(Icons.close, size: 24, color: ColorName.g1),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
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
            hint: Row(
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
        onPressed: _onSave,
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
