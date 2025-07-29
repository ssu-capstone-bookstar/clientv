import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';
import '../../theme/style/app_texts.dart';

class SearchTextField extends StatelessWidget {
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
  final int? maxLines; 
  final FocusNode? focusNode;

  const SearchTextField({
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
    this.height = 48,
    this.readOnly = false,
    this.onSubmitted,
    this.onTapSuffixIcon,
    this.onTap,
    this.keyboardType,
    this.maxLines = 1,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: (controller?.text.isNotEmpty ?? false) ? focusColor : color,
      ),
    );

    return SizedBox(
      height: height,
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
            onTap: onTapSuffixIcon,
            child: suffixIcon,
          ),
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
        maxLines: maxLines,
      ),
    );
  }
}
