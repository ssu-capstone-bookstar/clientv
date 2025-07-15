import 'package:flutter/material.dart';

class BookIconValueLabel extends StatelessWidget {
  final Widget icon;
  final String value;
  final TextStyle? valueStyle;
  final Decoration? decoration;
  final EdgeInsetsGeometry padding;
  final double spacing;

  const BookIconValueLabel({
    super.key,
    required this.icon,
    required this.value,
    this.valueStyle,
    this.decoration,
    this.padding = EdgeInsets.zero,
    this.spacing = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: decoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: [
          icon,
          Text(value, style: valueStyle),
        ],
      ),
    );
  }
}
