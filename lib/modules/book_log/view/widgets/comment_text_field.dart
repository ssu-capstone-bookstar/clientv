import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CommentTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? suffixIcon;

  final String? hintText;
  final TextStyle? hintStyle;
  final Color? textColor;
  final Color backgroundColor;
  final Color focusColor;
  final Color color;
  final double borderRadius;
  final double height;
  final bool readOnly;
  final void Function(String)? onSubmitted;
  final VoidCallback? onTapSuffixIcon;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final FocusNode? focusNode;
  final Widget? prefix;
  final VoidCallback? onTapPrefix;

  const CommentTextField({
    super.key,
    this.controller,
    this.suffixIcon,
    this.hintText,
    this.hintStyle = AppTexts.b6,
    this.textColor,
    this.backgroundColor = ColorName.g7,
    this.focusColor = ColorName.p1,
    this.color = ColorName.g3,
    this.borderRadius = 8,
    this.height = 42,
    this.readOnly = false,
    this.onSubmitted,
    this.onTapSuffixIcon,
    this.onTap,
    this.keyboardType,
    this.minLines = 1,
    this.maxLines = 1,
    this.focusNode,
    this.prefix,
    this.onTapPrefix,
  });

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: (controller?.text.isNotEmpty ?? false) ? focusColor : color,
      ),
    );

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 0,
        maxHeight: 100,
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        onTap: onTap,
        style: TextStyle(
          color: textColor,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: GestureDetector(
            onTap:
                controller?.text.isNotEmpty ?? false ? onTapSuffixIcon : null,
            child: suffixIcon,
          ),
          prefix: prefix != null
              ? GestureDetector(onTap: onTapPrefix, child: prefix)
              : null,
          fillColor: backgroundColor,
          border: outlineInputBorder,
          disabledBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
        ),
        onSubmitted: onSubmitted,
        readOnly: readOnly,
        keyboardType: keyboardType,
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }
}
