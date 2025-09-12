// RadioButton1 사용 예시:
//
// String? selectedValue;
// RadioButton1<String>(
//   title: '텍스트',
//   description: '내용을 보여주세요',
//   value: 'A',
//   groupValue: selectedValue,
//   onChanged: (v) => setState(() => selectedValue = v),
//   enabled: true,
//   interactive: true, // 또는 생략
// )
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class RadioButton1<T> extends StatefulWidget {
  final String title;
  final String description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final bool interactive;

  const RadioButton1({
    super.key,
    required this.title,
    required this.description,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.enabled = true,
    this.interactive = true,
  });

  @override
  State<RadioButton1<T>> createState() => _RadioButton1State<T>();
}

class _RadioButton1State<T> extends State<RadioButton1<T>> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.value == widget.groupValue;
    final bool isDisabled = !widget.enabled || widget.onChanged == null;

    Color backgroundColor;
    Color borderColor;

    // interactive: false → 항상 Default 스타일
    if (!widget.interactive) {
      backgroundColor = ColorName.g7;
      borderColor = ColorName.g6;
    } else if (isDisabled) {
      backgroundColor = ColorName.g7;
      borderColor = ColorName.g6;
    } else if (isSelected) {
      backgroundColor = ColorName.p5;
      borderColor = ColorName.p1;
    } else if (_isHovered) {
      backgroundColor = ColorName.g6;
      borderColor = ColorName.g5;
    } else {
      backgroundColor = ColorName.g7;
      borderColor = ColorName.g6;
    }

    final child = AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: AppTexts.b5.copyWith(color: ColorName.w1),
          ),
          const SizedBox(height: 5),
          Text(
            widget.description,
            style: AppTexts.b10.copyWith(color: ColorName.g3),
          ),
        ],
      ),
    );

    if (!widget.interactive) {
      return child;
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: GestureDetector(
        onTap: isDisabled ? null : () => widget.onChanged?.call(widget.value),
        child: child,
      ),
    );
  }
}
