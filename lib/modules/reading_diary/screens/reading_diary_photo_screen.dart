import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/theme/app_style.dart';
import '../../../common/components/modal/photo_source_modal.dart';
import '../../../modules/reading_challenge/view/widgets/challenge_option_card.dart';
import '../../../gen/colors.gen.dart';

enum PhotoSelection {
  addPhoto,
  noPhoto,
}

class ReadingDiaryPhotoScreen extends ConsumerStatefulWidget {
  const ReadingDiaryPhotoScreen({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  ConsumerState<ReadingDiaryPhotoScreen> createState() =>
      _ReadingDiaryPhotoScreenState();
}

class _ReadingDiaryPhotoScreenState
    extends ConsumerState<ReadingDiaryPhotoScreen> {
  PhotoSelection? _selection;
  final ImagePicker _picker = ImagePicker();

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
        '/reading-diary/${widget.bookId}/entry',
        extra: {
          'images': imagePaths,
          'bookId': widget.bookId,
        },
      );
    }
  }

  void _handleOptionSelection(PhotoSelection value) {
    if (mounted) {
      setState(() {
        _selection = value;
      });
    }

    if (value == PhotoSelection.addPhoto) {
      PhotoSourceModal.show(context, onPick: _pickImages);
    } else if (mounted) {
      context.push(
        '/reading-diary/${widget.bookId}/entry',
        extra: {
          'images': <String>[],
          'bookId': widget.bookId,
        },
      );
    }
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
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '도서에 대한 나의 감상을\n자유롭게 표현해 보세요',
              style: AppTexts.b1.copyWith(color: ColorName.w1),
            ),
            const SizedBox(height: 22),
            _buildOptionsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ChallengeOptionCard(
          title: '사진 추가하기',
          subtitle: '갤러리에서 사진을 직접 골라보세요',
          selected: _selection == PhotoSelection.addPhoto,
          onTap: () => _handleOptionSelection(PhotoSelection.addPhoto),
        ),
        const SizedBox(height: 12),
        ChallengeOptionCard(
          title: '사진 추가 없음',
          subtitle: '사진 없이 표지 사진으로 피드에 등록돼요',
          selected: _selection == PhotoSelection.noPhoto,
          onTap: () => _handleOptionSelection(PhotoSelection.noPhoto),
        ),
      ],
    );
  }
}
