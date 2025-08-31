import 'dart:io';

import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/components/modal/photo_source_modal.dart';
import 'package:book/common/models/image_request.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_diary/view/widgets/text_input_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ReadingDiaryEditForm extends ConsumerStatefulWidget {
  const ReadingDiaryEditForm({
    super.key,
    required this.textController,
    required this.initialImages,
    required this.focusNode,
    required this.onFocus,
    required this.onUpdateText,
    required this.onUpdateImage,
    required this.onSave,
  });

  final TextEditingController textController;
  final List<ImageRequest> initialImages;
  final FocusNode focusNode;
  final Function(bool) onFocus;
  final Function(String) onUpdateText;
  final Function(List<ImageRequest>, List<String>) onUpdateImage;
  final Function() onSave;

  @override
  ConsumerState<ReadingDiaryEditForm> createState() =>
      _ReadingDiaryEditFormState();
}

class _ReadingDiaryEditFormState extends ConsumerState<ReadingDiaryEditForm> {
  final List<ImageRequest> uploadedImages = [];
  final List<String> newImages = [];
  final PageController _pageController = PageController();
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    setState(() {
      uploadedImages.addAll(widget.initialImages);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTabText() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return TextInputSheet(
              initialText: widget.textController.text,
              focusNode: widget.focusNode,
              onTextChanged: widget.onUpdateText,
              onFocus: widget.onFocus,
            );
          },
        );
      },
    ).then((_) {
      setState(
        () {},
      );
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
        setState(() {
          newImages.addAll(imagePaths);
        });
        widget.onUpdateImage(uploadedImages, newImages);
        final previousLength = newImages.length;
        if (_pageController.page?.toInt() != null &&
            _pageController.page!.toInt() + 1 == previousLength) {
          _goToPage(previousLength - 1);
        }
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
    widget.onUpdateImage(uploadedImages, newImages);
  }

  @override
  Widget build(BuildContext context) {
    final isNotEmptyText = widget.textController.text.isNotEmpty;
    return GestureDetector(
      onTap: () {
        widget.onFocus(false);
      },
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildImageSection(
                        uploadedImages: uploadedImages,
                        newImages: newImages,
                        pageController: _pageController,
                        onPick: _pickImages,
                        onRemove: _removeImage),
                    GestureDetector(
                        onTap: _onTabText,
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: isNotEmptyText
                                ? _buildTextSection(
                                    text: widget.textController.text)
                                : _buildEmptyTextSection(),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            if (isNotEmptyText) _buildSubmitButton(onSave: widget.onSave),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection(
      {required List<ImageRequest> uploadedImages,
      required List<String> newImages,
      required PageController pageController,
      required Function(ImageSource) onPick,
      required Function(int) onRemove}) {
    final totalImageLength = uploadedImages.length + newImages.length;

    return AspectRatio(
      aspectRatio: 1,
      child: PageView.builder(
        controller: pageController,
        itemCount: totalImageLength == 0 ? 1 : totalImageLength,
        itemBuilder: (context, index) {
          if (totalImageLength == 0) {
            return GestureDetector(
              onTap: () => PhotoSourceModal.show(context,
                  onPick: (source) => onPick(source)),
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
                    right: 8,
                    child: GestureDetector(
                      onTap: () => onRemove(index),
                      child: const Center(
                        child: Icon(Icons.close, size: 24, color: ColorName.g1),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 32,
                    child: GestureDetector(
                      onTap: () => PhotoSourceModal.show(context,
                          onPick: (source) => onPick(source)),
                      child: const Center(
                        child: Icon(Icons.add_photo_alternate,
                            size: 24, color: ColorName.g1),
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

  Widget _buildEmptyTextSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.edit, color: ColorName.g4, size: 18),
          const SizedBox(width: 8),
          Text(
            '느낀 생각을 마음껏 표현해 보세요',
            style: AppTexts.b8.copyWith(color: ColorName.g4),
          ),
        ],
      ),
    );
  }

  Widget _buildTextSection({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Text(
        text,
        style: AppTexts.b8.copyWith(color: ColorName.w1),
      ),
    );
  }

  Widget _buildSubmitButton({required Function() onSave}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: CtaButtonL1(
        text: '저장하기',
        onPressed: onSave,
      ),
    );
  }
}
