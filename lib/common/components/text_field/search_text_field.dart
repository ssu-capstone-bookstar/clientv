import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';
import '../../theme/style/app_texts.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color backgroundColor;
  final Color focusColor;
  final Color color;
  final double borderRadius;
  final double height;
  final bool readOnly;
  final void Function(String)? onSubmitted;
  final VoidCallback? onTap;

  const SearchTextField({
    super.key,
    this.controller,
    this.suffixIcon,
    this.hintText,
    this.hintStyle = AppTexts.b6,
    this.backgroundColor = ColorName.g7,
    this.focusColor = ColorName.p1,
    this.color = ColorName.g3,
    this.borderRadius = 8,
    this.height = 48,
    this.readOnly = false,
    this.onSubmitted,
    this.onTap,
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
        controller: controller,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor,
          border: outlineInputBorder,
          disabledBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
        ),
        onSubmitted: onSubmitted,
        readOnly: readOnly,
      ),
    );
  }
}
