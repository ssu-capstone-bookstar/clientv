import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/theme/style/app_texts.dart';
import '../../../../common/components/button/cta_button_l1.dart';
import '../../../../gen/colors.gen.dart';

class ReadingDiaryEntryScreen extends StatefulWidget {
  const ReadingDiaryEntryScreen({
    super.key,
    required this.images,
  });

  final List<XFile> images;

  static String get routeName => 'reading-diary-entry';

  @override
  State<ReadingDiaryEntryScreen> createState() =>
      _ReadingDiaryEntryScreenState();
}

class _ReadingDiaryEntryScreenState extends State<ReadingDiaryEntryScreen> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    // 텍스트 컨트롤러 리스너: 텍스트 변경 시마다 UI를 갱신하여 버튼 상태를 업데이트
    _textController.addListener(() {
      setState(() {});
    });

    // 포커스 노드 리스너: 포커스를 잃었을 때 (키보드가 내려갔을 때)의 로직 처리
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _textController.text.trim().isEmpty) {
        // 포커스를 잃었고, 텍스트가 비어있으면 초기 상태로 복귀
        setState(() {
          _isEditing = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 키보드의 가시성 여부 확인
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return GestureDetector(
      onTap: () {
        // 화면의 다른 곳을 탭하면 키보드를 내림
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true, // 키보드가 올라올 때 화면이 밀려 올라가도록 설정
        appBar: _buildAppBar(),
        body: _buildBody(isKeyboardVisible),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('독서 다이어리'),
      leading: const BackButton(),
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // TODO: Add confirmation dialog before popping
            context.go('/reading-challenge');
          },
        ),
      ],
    );
  }

  Widget _buildBody(bool isKeyboardVisible) {
    // 저장 버튼의 표시 여부 결정
    final isSaveButtonVisible =
        !isKeyboardVisible && _isEditing && _textController.text.isNotEmpty;

    return SafeArea(
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
          // 조건에 따라 저장 버튼 표시
          if (isSaveButtonVisible) _buildSubmitButton(),
        ],
      ),
    );
  }

  Widget _buildImageSection() {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Image.file(
                  File(widget.images[index].path),
                  fit: BoxFit.contain,
                ),
              );
            },
          ),
          Container(
            color: Colors.black.withValues(alpha: 0.4),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildToolButton(Icons.edit_outlined, '그리기'),
                _buildToolButton(Icons.crop_rotate_outlined, '사진 편집'),
                _buildToolButton(Icons.emoji_emotions_outlined, '스티커'),
              ],
            ),
          )
        ],
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
          // 편집 상태로 전환 시 자동으로 포커스를 줌
          // 약간의 지연 후 포커스를 줘야 위젯이 빌드된 후 정확히 동작
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _focusNode.requestFocus();
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
                style: AppTexts.b1.copyWith(color: ColorName.g4),
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
          color: Colors.grey[850], // 좀 더 부드러운 배경색
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          controller: _textController,
          focusNode: _focusNode, // 포커스 노드 연결
          style: AppTexts.b1.copyWith(color: ColorName.w1),
          decoration: const InputDecoration(
            hintText: '내용을 입력하세요...',
            hintStyle: AppTexts.b7, // 힌트 텍스트 스타일을 b7으로 변경
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: CtaButtonL1(
        text: '저장하기',
        enabled: _textController.text.trim().isNotEmpty,
        onPressed: () {
          // TODO: Implement diary submission
          print('Diary saved: ${_textController.text}');
        },
      ),
    );
  }

  Widget _buildToolButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 28),
        const SizedBox(height: 4),
        Text(
          label,
          style: AppTexts.b3.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
