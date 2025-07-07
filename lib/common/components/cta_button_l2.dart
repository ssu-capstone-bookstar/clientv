import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CtaButtonL2 extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool enabled;

  const CtaButtonL2({
    Key? key,
    required this.text,
    this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<CtaButtonL2> createState() => _CtaButtonL2State();
}

class _CtaButtonL2State extends State<CtaButtonL2> {
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    // 상태별 스타일 정의
    final bool isDisabled = !widget.enabled || widget.onPressed == null;
    Color backgroundColor;
    Color borderColor;
    Color textColor;

    if (isDisabled) {
      backgroundColor = ColorName.g7;
      borderColor = ColorName.g6;
      textColor = ColorName.g5;
    } else if (_isPressed) {
      backgroundColor = const Color(0xFF33353B);
      borderColor = const Color(0xFF43454B);
      textColor = ColorName.g4;
    } else if (_isHovered) {
      backgroundColor = ColorName.g7;
      borderColor = ColorName.g6;
      textColor = ColorName.g3;
    } else {
      backgroundColor = ColorName.g6;
      borderColor = const Color(0xFF4D4F55);
      textColor = ColorName.g2;
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() {
        _isHovered = false;
        _isPressed = false;
      }),
      child: GestureDetector(
        onTapDown: (_) {
          if (!isDisabled) setState(() => _isPressed = true);
        },
        onTapUp: (_) {
          if (!isDisabled) setState(() => _isPressed = false);
        },
        onTapCancel: () {
          if (!isDisabled) setState(() => _isPressed = false);
        },
        onTap: isDisabled ? null : widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: 341,
          height: 56,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 1),
          ),
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: AppTexts.b7.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
