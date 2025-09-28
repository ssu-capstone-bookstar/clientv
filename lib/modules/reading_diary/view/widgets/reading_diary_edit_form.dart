import 'dart:io';
import 'dart:typed_data';

import 'package:bookstar/common/components/button/cta_button_l1.dart';
import 'package:bookstar/common/components/modal/photo_source_modal.dart';
import 'package:bookstar/common/models/image_request.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/reading_diary/view/widgets/text_input_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pro_image_editor/core/models/editor_callbacks/pro_image_editor_callbacks.dart';
import 'package:pro_image_editor/core/models/editor_configs/pro_image_editor_configs.dart';
import 'package:pro_image_editor/features/main_editor/main_editor.dart';

const int IMAGE_LIMIT = 10;

abstract class ImageItem {
  ImageItem();
}

class UrlImage extends ImageItem {
  final ImageRequest imageRequest;

  UrlImage({required this.imageRequest});
}

class GalleryImage extends ImageItem {
  final String path;

  GalleryImage({required this.path});
}

class EditingImage extends ImageItem {
  final Uint8List bytes;
  EditingImage({required this.bytes});
}

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
  final Function(List<ImageItem>) onUpdateImage;
  final Function() onSave;
  final Function(bool) onUpdateDisabledSave;

  @override
  ConsumerState<ReadingDiaryEditForm> createState() =>
      _ReadingDiaryEditFormState();
}

class _ReadingDiaryEditFormState extends ConsumerState<ReadingDiaryEditForm> {
  final List<ImageItem> images = [];
  final ImagePicker _picker = ImagePicker();
  bool _isEditing = false;
  int _currentImageIndex = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.initialImages.isNotEmpty) {
        setState(() {
          widget.initialImages.asMap().forEach((index, item) {
            images.add(UrlImage(imageRequest: item));
          });
        });
        widget.onUpdateImage(images);
      }
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

  void _editImage(int index) {
    setState(() {
      _isEditing = true;
    });
  }

  void _endEditing() {
    setState(() {
      _isEditing = false;
    });
  }

  void _onImageEditingComplete(Uint8List bytes, int index) {
    setState(() {
      images[index] = EditingImage(bytes: bytes);
    });
    widget.onUpdateImage(images);
  }

  Future<void> _pickImages(ImageSource source) async {
    List<XFile> pickedFiles = [];
    final limit = IMAGE_LIMIT - images.length;
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
          imagePaths.asMap().forEach((index, path) {
            images.add(GalleryImage(path: path));
          });
        });
        widget.onUpdateImage(images);
      }
    }
  }

  void _removeImage(int index) {
    final totalImageCount = images.length;
    final isLastIndex = index == totalImageCount - 1;
    setState(() {
      images.removeAt(index);
    });
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
                        images: images,
                        isEditing: _isEditing,
                        onEditImage: _editImage,
                        onEndEditing: _endEditing,
                        onImageEditingComplete: _onImageEditingComplete,
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
      {required List<ImageItem> images,
      required bool isEditing,
      required Function(int) onEditImage,
      required Function() onEndEditing,
      required Function(Uint8List bytes, int index) onImageEditingComplete,
      required Function(ImageSource) onPick,
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
                            onTap: () => !isEditing
                                ? onEditImage(currentImageIndex)
                                : onEndEditing(),
                            child: !isEditing
                                ? Icon(Icons.edit,
                                    color: Colors.white, size: 24)
                                : Icon(Icons.close,
                                    color: Colors.white, size: 24),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            onTap: () => !isEditing
                                ? PhotoSourceModal.show(context,
                                    onPick: (source) => onPick(source))
                                : null,
                            child: const Center(
                              child: Icon(Icons.add_photo_alternate,
                                  size: 24, color: ColorName.g1),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            onTap: () =>
                                !isEditing ? onRemove(currentImageIndex) : null,
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
                          physics: isEditing
                              ? const NeverScrollableScrollPhysics() // 편집 중 → 스크롤 막기
                              : const AlwaysScrollableScrollPhysics(), // 기본 → 스크롤 가능
                          itemCount: totalImageLength,
                          onPageChanged: onImageIndexChanged,
                          itemBuilder: (context, index) {
                            final item = images[index];
                            if (item is UrlImage) {
                              return _urlImageWidget(
                                  item: item,
                                  isEditing: isEditing,
                                  onImageEditingComplete: (bytes) {
                                    onImageEditingComplete(bytes, index);
                                  },
                                  onCloseEditor: onEndEditing);
                            } else if (item is GalleryImage) {
                              return _galleryImageWidget(
                                  item: item,
                                  isEditing: isEditing,
                                  onImageEditingComplete: (bytes) {
                                    onImageEditingComplete(bytes, index);
                                  },
                                  onCloseEditor: onEndEditing);
                            } else if (item is EditingImage) {
                              return _editingImageWidget(
                                  item: item,
                                  isEditing: isEditing,
                                  onImageEditingComplete: (bytes) {
                                    onImageEditingComplete(bytes, index);
                                  },
                                  onCloseEditor: onEndEditing);
                            } else {
                              return Container();
                            }
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

  Widget _urlImageWidget(
      {required UrlImage item,
      required bool isEditing,
      required Function(Uint8List bytes) onImageEditingComplete,
      required Function() onCloseEditor}) {
    return !isEditing
        ? CachedNetworkImage(
            imageUrl: item.imageRequest.imageUrl,
            fit: BoxFit.contain,
            errorWidget: (context, url, error) => Container())
        : ProImageEditor.network(item.imageRequest.imageUrl,
            configs: proImageEditorConfigs,
            callbacks: getProImageEditorCallback(
              onImageEditingComplete: (bytes) async {
                onImageEditingComplete(bytes);
              },
              onCloseEditor: () {
                onCloseEditor();
              },
            ));
  }

  Widget _galleryImageWidget(
      {required GalleryImage item,
      required bool isEditing,
      required Function(Uint8List bytes) onImageEditingComplete,
      required Function() onCloseEditor}) {
    return !isEditing
        ? Image.file(
            File(
              item.path,
            ),
            fit: BoxFit.contain,
          )
        : ProImageEditor.file(
            File(item.path),
            configs: proImageEditorConfigs,
            callbacks: getProImageEditorCallback(
              onImageEditingComplete: (bytes) async {
                onImageEditingComplete(bytes);
              },
              onCloseEditor: () {
                onCloseEditor();
              },
            ),
          );
  }

  Widget _editingImageWidget(
      {required EditingImage item,
      required bool isEditing,
      required Function(Uint8List bytes) onImageEditingComplete,
      required Function() onCloseEditor}) {
    return !isEditing
        ? Image.memory(
            item.bytes,
            fit: BoxFit.contain,
          )
        : ProImageEditor.memory(
            item.bytes,
            configs: proImageEditorConfigs,
            callbacks: getProImageEditorCallback(
              onImageEditingComplete: (bytes) async {
                onImageEditingComplete(bytes);
              },
              onCloseEditor: () {
                onCloseEditor();
              },
            ),
          );
  }

  ProImageEditorConfigs proImageEditorConfigs = ProImageEditorConfigs(
      theme: ThemeData(
        primaryColor: ColorName.p1,
        scaffoldBackgroundColor: ColorName.b1,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorName.b1,
          surfaceTintColor: ColorName.b1,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: ColorName.g7),
          actionsIconTheme: IconThemeData(color: ColorName.g7),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorName.g7,
          selectedItemColor: ColorName.p1,
          unselectedItemColor: ColorName.g3,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorName.g7,
          hintStyle: const TextStyle(color: ColorName.g3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          prefixIconColor: ColorName.g3,
        ),
      ),
      i18n: I18n(
        paintEditor: I18nPaintEditor(
          bottomNavigationBarText: "펜",
          freestyle: "펜",
          eraser: "지우개",
          lineWidth: "선 굵기",
          changeOpacity: "투명도",
        ),
        textEditor: I18nTextEditor(
          bottomNavigationBarText: "텍스트",
          fontScale: "폰트 크기",
          inputHintText: "텍스트 입력",
        ),
        cropRotateEditor: I18nCropRotateEditor(
          bottomNavigationBarText: "자르기/회전",
          rotate: "회전",
          flip: "좌우반전",
          ratio: "비율",
          reset: "초기화",
        ),
      ),
      mainEditor: MainEditorConfigs(
        canZoomWhenLayerSelected: false,
      ),
      paintEditor: PaintEditorConfigs(
        enableModeArrow: false,
        enableModeLine: false,
        enableModeRect: false,
        enableModeCircle: false,
        enableModeDashLine: false,
        enableModePolygon: false,
        enableModeBlur: false,
        enableModePixelate: false,
        showToggleFillButton: false,
        style: PaintEditorStyle(
          bottomBarActiveItemColor: Colors.deepPurple,
        ),
      ),
      tuneEditor: TuneEditorConfigs(enabled: false),
      filterEditor: FilterEditorConfigs(enabled: false),
      blurEditor: BlurEditorConfigs(enabled: false),
      stickerEditor: StickerEditorConfigs(
        enabled: false,
      )
      );

  ProImageEditorCallbacks getProImageEditorCallback(
      {required Function(Uint8List bytes) onImageEditingComplete,
      required Function() onCloseEditor}) {
    return ProImageEditorCallbacks(
      onCloseEditor: (editorMode) {
        onCloseEditor();
      },
      onImageEditingComplete: (bytes) async {
        onImageEditingComplete(bytes);
      },
    );
  }
}
