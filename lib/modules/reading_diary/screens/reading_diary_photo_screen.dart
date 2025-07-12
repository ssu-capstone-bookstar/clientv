import 'package:book/common/components/radio_button_1.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:book/common/components/photo_source_modal.dart';

enum PhotoSelection {
  addPhoto,
  noPhoto,
}

class ReadingDiaryPhotoScreen extends ConsumerStatefulWidget {
  const ReadingDiaryPhotoScreen({
    super.key,
    required this.progressId,
  });

  final int progressId;

  @override
  ConsumerState<ReadingDiaryPhotoScreen> createState() =>
      _ReadingDiaryPhotoScreenState();
}

class _ReadingDiaryPhotoScreenState
    extends ConsumerState<ReadingDiaryPhotoScreen> {
  PhotoSelection? _selection;
  final ImagePicker _picker = ImagePicker();

  final List<Map<String, dynamic>> _photoOptions = [
    {
      'value': PhotoSelection.addPhoto,
      'title': '사진 추가하기',
      'description': '갤러리에서 사진을 직접 골라보세요',
    },
    {
      'value': PhotoSelection.noPhoto,
      'title': '사진 추가 없음',
      'description': '사진 없이 표지 사진으로 피드에 등록돼요',
    },
  ];

  Future<void> _pickImages(ImageSource source) async {
    List<XFile> pickedFiles = [];
    if (source == ImageSource.camera) {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null) {
        pickedFiles.add(image);
      }
    } else {
      pickedFiles = await _picker.pickMultiImage();
    }

    if (pickedFiles.isNotEmpty && mounted) {
      final imagePaths = pickedFiles.map((f) => f.path).toList();
      context.push(
        '/reading-diary/${widget.progressId}/entry',
        extra: {
          'images': imagePaths,
          'progressId': widget.progressId,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('독서 다이어리'),
        leading: const BackButton(),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.go('/reading-challenge');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '도서에 대한 나의 감상을\n자유롭게 표현해 보세요',
                style: AppTexts.h1.copyWith(color: ColorName.w1),
              ),
              const SizedBox(height: 40),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _photoOptions.length,
                itemBuilder: (context, index) {
                  final option = _photoOptions[index];
                  return RadioButton1<PhotoSelection>(
                    title: option['title'],
                    description: option['description'],
                    value: option['value'],
                    groupValue: _selection,
                    onChanged: (value) {
                      if (mounted) {
                        setState(() {
                          _selection = value;
                        });
                      }
                      if (value == PhotoSelection.addPhoto) {
                        PhotoSourceModal.show(context, onPick: _pickImages);
                      } else if (mounted) {
                        context.push(
                          '/reading-diary/${widget.progressId}/entry',
                          extra: {
                            'images': <String>[],
                            'progressId': widget.progressId,
                          },
                        );
                      }
                    },
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
