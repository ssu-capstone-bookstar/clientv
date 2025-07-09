import 'package:flutter/material.dart';

class OverlayUtils {
  static Widget linearGradientOverlay({
    AlignmentGeometry alignment = Alignment.bottomCenter,
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<Color> colors = const [Colors.transparent, Colors.black],
    double height = 80,
  }) {
    return Align(
      alignment: alignment,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin,
            end: end,
            colors: colors,
          ),
        ),
      ),
    );
  }

  static Widget fullBlackOverlay({int alpha = 230}) {
    return Container(
      color: Colors.black.withAlpha(alpha),
    );
  }
}
