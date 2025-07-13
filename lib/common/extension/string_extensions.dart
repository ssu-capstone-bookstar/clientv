import 'package:flutter/cupertino.dart';

extension StringExtensions on String {
  String truncate({required int maxLength}) {
    if (length <= maxLength) return this;

    return '${substring(0, maxLength)}...';
  }
}

extension ColoredTextSpan on String {
  TextSpan colored({
    required TextStyle baseStyle,
    Color? color,
  }) {
    return TextSpan(
      text: this,
      style: baseStyle.copyWith(color: color),
    );
  }
}