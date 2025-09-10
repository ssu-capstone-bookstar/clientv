import 'dart:io';

import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/components/modal/photo_source_modal.dart';
import 'package:book/common/models/image_request.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_diary/view/widgets/text_input_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

const int IMAGE_LIMIT = 10;

class ReadingDiaryEditForm extends ConsumerStatefulWidget {
  const ReadingDiaryEditForm({
    super.key,
    required this.textController,
    required this.initialImages,
    required this.focusNode,
    required this.disabledSave,
    required this.onFocus,
    required this.onUpdateText,
    required this.onUpdateImage,
    required this.onSave,
    required this.onUpdateDisabledSave,
  });

  final TextEditingController textController;
  final List<ImageRequest> initialImages;
  final FocusNode focusNode;
  final bool disabledSave;
  final Function(bool) onFocus;
  final Function(String) onUpdateText;
  final Function(List<ImageRequest>, List<String>) onUpdateImage;
  final Function() onSave;
  final Function(bool) onUpdateDisabledSave;

  @override
  ConsumerState<ReadingDiaryEditForm> createState() =>
      _ReadingDiaryEditFormState();
}

class _ReadingDiaryEditFormState extends ConsumerState<ReadingDiaryEditForm> {
  final List<ImageRequest> uploadedImages = [];
  final List<String> newImages = [];
  final ImagePicker _picker = ImagePicker();
  int _currentImageIndex = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        uploadedImages.addAll(widget.initialImages);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
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

  void _onImageIndexChanged(int index) {
    int newIndex = index;
    if (newIndex < 0) newIndex = 0;
    setState(() {
      _currentImageIndex = newIndex;
    });
  }

  Future<void> _pickImages(ImageSource source) async {
    List<XFile> pickedFiles = [];
    final limit = IMAGE_LIMIT - uploadedImages.length - newImages.length;
    if (source == ImageSource.camera) {
      if (limit > 0) {
        final XFile? image = await _picker.pickImage(source: source);
        if (image != null) {
          pickedFiles.add(image);
        }
      } else {
        // TODO: limit이 0인 경우 처리 (토스트 메시지)
      }
    } else if (source == ImageSource.gallery) {
      if (limit >= 2) {
        pickedFiles = await _picker.pickMultiImage(limit: limit);
      } else if (limit == 1) {
        final XFile? image = await _picker.pickImage(source: source);
        if (image != null) {
          pickedFiles.add(image);
        }
      } else {
        // TODO: limit이 0인 경우 처리 (토스트 메시지)
      }
    }

    if (pickedFiles.isNotEmpty && mounted) {
      final imagePaths = pickedFiles.map((f) => f.path).toList();
      if (imagePaths.isNotEmpty) {
        setState(() {
          newImages.addAll(imagePaths);
        });
        widget.onUpdateImage(uploadedImages, newImages);
      }
    }
  }

  _removeImage(int index) {
    final totalImageCount = uploadedImages.length + newImages.length;
    final isLastIndex = index == totalImageCount - 1;

    setState(() {
      if (index < uploadedImages.length) {
        // 서버에 업로드된 이미지인 경우
        uploadedImages.removeAt(index);
      } else {
        // 새로 추가한 이미지인 경우
        newImages.removeAt(index - uploadedImages.length);
      }
    });
    if (isLastIndex) {
      _onImageIndexChanged(index - 1);
    }
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
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: _buildImageSection(
                        uploadedImages: uploadedImages,
                        newImages: newImages,
                        onPick: _pickImages,
                        onRemove: _removeImage,
                        currentImageIndex: _currentImageIndex,
                        onImageIndexChanged: _onImageIndexChanged),
                  ),
                  SliverToBoxAdapter(
                    child: GestureDetector(
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
                  ),
                ],
              ),
            ),
            if (isNotEmptyText)
              _buildSubmitButton(
                  disabled: widget.disabledSave,
                  onSave: () async {
                    widget.onUpdateDisabledSave(true);
                    await widget.onSave();
                    widget.onUpdateDisabledSave(false);
                  }),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection(
      {required List<ImageRequest> uploadedImages,
      required List<String> newImages,
      required Function(ImageSource) onPick,
      required Function(int) onRemove,
      required int currentImageIndex,
      required Function(int) onImageIndexChanged}) {
    final totalImageLength = uploadedImages.length + newImages.length;

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: totalImageLength == 0
              ? Center(
                child: GestureDetector(
                  onTap: () => PhotoSourceModal.show(context,
                      onPick: (source) => onPick(source)),
                  child: const Center(
                    child: Icon(Icons.add_photo_alternate,
                        size: 24, color: ColorName.g1),
                  ),
                ),
              )
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () => PhotoSourceModal.show(context,
                                onPick: (source) => onPick(source)),
                            child: const Center(
                              child: Icon(Icons.add_photo_alternate,
                                  size: 24, color: ColorName.g1),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onRemove(currentImageIndex);
                            },
                            child: const Center(
                              child: Icon(Icons.close,
                                  size: 24, color: ColorName.g1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: PageView.builder(
                          itemCount: totalImageLength,
                          onPageChanged: onImageIndexChanged,
                          itemBuilder: (context, index) {
                            return index < uploadedImages.length
                                ? CachedNetworkImage(
                                    imageUrl: uploadedImages[index].image ?? "",
                                    fit: BoxFit.contain,
                                    errorWidget: (context, url, error) =>
                                        Container(),
                                  )
                                : CachedNetworkImage(
                                    imageUrl: newImages[
                                        index - uploadedImages.length],
                                    fit: BoxFit.contain,
                                    errorWidget: (context, url, error) =>
                                        Image.file(
                                      File(
                                        newImages[
                                            index - uploadedImages.length],
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            totalImageLength,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentImageIndex == index ? 20 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentImageIndex == index
                    ? ColorName.p1 // 활성화된 인디케이터 색상
                    : ColorName.g7, // 비활성화된 인디케이터 색상
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ],
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

  Widget _buildSubmitButton(
      {required Function() onSave, required bool disabled}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: CtaButtonL1(
        text: '저장하기',
        enabled: !disabled,
        onPressed: onSave,
      ),
    );
  }
}
