import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class OverlayUtils {
  static Widget linearGradientOverlay({
    AlignmentGeometry alignment = Alignment.bottomCenter,
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<Color> colors = const [Colors.transparent, AppColors.OVERLAY_COLOR],
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

  static Widget fullBlackOverlay({Color overlayColor = AppColors.OVERLAY_COLOR, int alpha = 230}) { // 230 ~= 90%
    return Container(
      color: overlayColor.withAlpha(alpha),
    );
  }

  static void showCustomToast(BuildContext context, String message) {
    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.5 - 50,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: ColorName.g6,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: ColorName.p1.withOpacity(0.7),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context, rootOverlay: true).insert(overlayEntry);

    Future.delayed(const Duration(seconds: 1), () {
      overlayEntry?.remove();
    });
  }
}
