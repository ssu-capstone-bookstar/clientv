import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';

/// 말풍선을 오버레이로 띄우는 위젯
class SpeechBubbleOverlay {
  static OverlayEntry show({
    required BuildContext context,
    required Offset target,
    required String text,
    double bubbleWidth = 100,
    double bubbleHeight = 38,
    Duration? duration,
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) => Positioned(
        left: target.dx,
        top: target.dy,
        child: _SpeechBubble(
          text: text,
          width: bubbleWidth,
          height: bubbleHeight,
        ),
      ),
    );
    overlay.insert(entry);
    if (duration != null) {
      Future.delayed(duration, () => entry.remove());
    }
    return entry;
  }
}

class _SpeechBubble extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const _SpeechBubble({required this.text, this.width = 100, this.height = 38});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/speech_bubble.png',
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              text,
              style: AppTexts.b11.copyWith(color: ColorName.w1),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
