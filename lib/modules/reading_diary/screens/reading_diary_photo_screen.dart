import 'package:book/common/components/radio_button_1.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:book/modules/reading_diary/screens/reading_diary_entry_screen.dart';

enum PhotoSelection {
  addPhoto,
  noPhoto,
}

class ReadingDiaryPhotoScreen extends StatefulWidget {
  const ReadingDiaryPhotoScreen({super.key});

  static String get routeName => '/reading_diary_photo';

  @override
  State<ReadingDiaryPhotoScreen> createState() =>
      _ReadingDiaryPhotoScreenState();
}

class _ReadingDiaryPhotoScreenState extends State<ReadingDiaryPhotoScreen> {
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
      final imagePaths = pickedFiles.map((file) => file.path).toList();
      context.push(
        '/reading-challenge/reading-diary-entry',
        extra: imagePaths,
      );
    }
  }

  void _showPhotoSourceSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorName.g6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) {
        return _PhotoSourceOptions(onPick: _pickImages);
      },
    );
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
                      setState(() {
                        _selection = value;
                      });
                      if (value == PhotoSelection.addPhoto) {
                        _showPhotoSourceSheet();
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

class _PhotoSourceOptions extends StatelessWidget {
  const _PhotoSourceOptions({required this.onPick});

  final Future<void> Function(ImageSource source) onPick;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '사진 선택하기',
              style: AppTexts.h4.copyWith(color: ColorName.w1),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOption(
                  context,
                  icon: Icons.camera_alt_outlined,
                  label: '카메라',
                  onTap: () => onPick(ImageSource.camera),
                ),
                const SizedBox(width: 40),
                _buildOption(
                  context,
                  icon: Icons.photo_library_outlined,
                  label: '사진',
                  onTap: () => onPick(ImageSource.gallery),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        onTap();
      },
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48, color: ColorName.w1),
            const SizedBox(height: 8),
            Text(label, style: AppTexts.b2.copyWith(color: ColorName.w1)),
          ],
        ),
      ),
    );
  }
}
