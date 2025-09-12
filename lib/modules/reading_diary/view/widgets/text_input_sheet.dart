
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextInputSheet extends ConsumerStatefulWidget {
  const TextInputSheet({
    super.key,
    required this.initialText,
    required this.focusNode,
    required this.onTextChanged,
    required this.onFocus,
  });

  final String initialText;
  final FocusNode focusNode;
  final Function(String) onTextChanged;
  final Function(bool) onFocus;

  @override
  ConsumerState<TextInputSheet> createState() => _TextInputSheetState();
}

class _TextInputSheetState extends ConsumerState<TextInputSheet> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialText);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onFocus(true);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 100,
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          left: 16,
          right: 16,
          top: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: ColorName.g7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: ColorName.g4,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
            // Expandable TextField
            Expanded(
              child: TextField(
                controller: _controller,
                focusNode: widget.focusNode,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                style: AppTexts.b8.copyWith(color: ColorName.w1),
                cursorColor: ColorName.w1,
                cursorWidth: 2.0,
                cursorHeight: 24.0,
                decoration: InputDecoration(
                  hintText: '느낀 생각을 마음껏 표현해 보세요',
                  hintStyle: AppTexts.b8.copyWith(color: ColorName.g4),
                  fillColor: ColorName.g7,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: widget.onTextChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
