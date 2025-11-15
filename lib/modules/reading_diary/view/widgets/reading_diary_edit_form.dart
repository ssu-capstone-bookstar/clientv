import 'dart:typed_data';

import 'package:bookstar/common/components/button/cta_button_l1.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/reading_diary/view/widgets/text_input_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const int IMAGE_LIMIT = 10;

abstract class ImageItem {
  ImageItem();
}

class UrlImage extends ImageItem {
  final ImageRequest imageRequest;

  UrlImage({required this.imageRequest});
}

class GalleryImage extends ImageItem {
  final Uint8List originBytes;

  GalleryImage({required this.originBytes});
}

class ReadingDiaryEditForm extends ConsumerStatefulWidget {
  const ReadingDiaryEditForm({
    super.key,
    required this.textController,
    required this.images,
    required this.currentImageIndex,
    required this.focusNode,
    required this.disabledSave,
    required this.onFocus,
    required this.onUpdateText,
    required this.onUpdateImage,
    required this.onSave,
    required this.onUpdateDisabledSave,
    required this.onPick,
    required this.onImageIndexChanged,
  });

  final TextEditingController textController;
  final List<ImageItem> images;
  final int currentImageIndex;
  final FocusNode focusNode;
  final bool disabledSave;
  final Function(bool) onFocus;
  final Function(String) onUpdateText;
  final Function(List<ImageItem>) onUpdateImage;
  final Function() onSave;
  final Function(bool) onUpdateDisabledSave;
  final Function() onPick;
  final Function(int) onImageIndexChanged;

  @override
  ConsumerState<ReadingDiaryEditForm> createState() =>
      _ReadingDiaryEditFormState();
}

class _ReadingDiaryEditFormState extends ConsumerState<ReadingDiaryEditForm> {
  @override
  void initState() {
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
    widget.onImageIndexChanged(newIndex);
  }

  void _removeImage(int index) {
    final images = widget.images;
    final totalImageCount = images.length;
    final isLastIndex = index == totalImageCount - 1;
    images.removeAt(index);
    if (isLastIndex) {
      _onImageIndexChanged(index - 1);
    }
    widget.onUpdateImage(images);
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
                        images: widget.images,
                        onPick: widget.onPick,
                        onRemove: _removeImage,
                        currentImageIndex: widget.currentImageIndex,
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
      {required List<ImageItem> images,
      required Function() onPick,
      required Function(int) onRemove,
      required int currentImageIndex,
      required Function(int) onImageIndexChanged}) {
    final totalImageLength = images.length;

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: totalImageLength == 0
              ? Center(
                  child: GestureDetector(
                    onTap: () => onPick(),
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
                            onTap: () => onPick(),
                            child: const Center(
                              child: Icon(Icons.add_photo_alternate,
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
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: totalImageLength,
                          onPageChanged: onImageIndexChanged,
                          itemBuilder: (context, index) {
                            final item = images[index];
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                if (item is UrlImage)
                                  _urlImageWidget(item: item)
                                else if (item is GalleryImage)
                                  _galleryImageWidget(item: item)
                                else
                                  Container(),
                                Positioned(
                                    top: 16,
                                    right: 16,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: ColorName.b1),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 13,
                                          vertical: 7.5,
                                        ),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () =>
                                                  onRemove(currentImageIndex),
                                              child: const Center(
                                                child: Icon(Icons.close,
                                                    size: 24,
                                                    color: ColorName.g1),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                                "${index + 1}/$totalImageLength"),
                                          ],
                                        ),
                                      ),
                                    ))
                              ],
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

  Widget _urlImageWidget({required UrlImage item}) {
    return CachedNetworkImage(
        imageUrl: item.imageRequest.imageUrl,
        fit: BoxFit.contain,
        errorWidget: (context, url, error) => Container());
  }

  Widget _galleryImageWidget({required GalleryImage item}) {
    return Image.memory(
      item.originBytes,
      fit: BoxFit.contain,
    );
  }
}
