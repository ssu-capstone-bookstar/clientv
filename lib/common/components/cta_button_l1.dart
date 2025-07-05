import 'package:flutter/material.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/common/theme/style/app_texts.dart';

class CtaButtonL1 extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool enabled;

  const CtaButtonL1({
    Key? key,
    required this.text,
    this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<CtaButtonL1> createState() => _CtaButtonL1State();
}

class _CtaButtonL1State extends State<CtaButtonL1> {
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    // 상태별 스타일 정의
    final bool isDisabled = !widget.enabled || widget.onPressed == null;
    Color backgroundColor;
    Color borderColor;

    if (isDisabled) {
      backgroundColor = ColorName.g7;
      borderColor = ColorName.g6;
    } else if (_isPressed) {
      backgroundColor = const Color(0xFF654AEF);
      borderColor = const Color(0xFF7C63F5);
    } else if (_isHovered) {
      backgroundColor = const Color(0xFF8972FF);
      borderColor = const Color(0xFFA393FF);
    } else {
      backgroundColor = ColorName.p1;
      borderColor = ColorName.p3;
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
            style: isDisabled
                ? AppTexts.b7.copyWith(color: ColorName.g3)
                : AppTexts.b7,
          ),
        ),
      ),
    );
  }
}
