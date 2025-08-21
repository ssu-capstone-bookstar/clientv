import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ExpandableText({
    super.key,
    required this.text,
    this.trimLines = 5,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final span = TextSpan(
            text: widget.text,
            style: AppTexts.b10.copyWith(color: ColorName.w1));
        final tp = TextPainter(
          text: span,
          maxLines: widget.trimLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        final isOverflow = tp.didExceedMaxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              style: AppTexts.b10.copyWith(color: ColorName.w1),
              maxLines: isExpanded ? null : widget.trimLines,
              overflow:
                  isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
            if (isOverflow) ...[
              const SizedBox(height: 6),
              GestureDetector(
                onTap: () => setState(() => isExpanded = !isExpanded),
                child: Text(
                  isExpanded ? "닫기" : "더보기",
                  style: AppTexts.b11.copyWith(color: ColorName.g3, decoration: TextDecoration.underline, decorationColor: ColorName.g3),
                ),
              ),
            ]
          ],
        );
      },
    );
  }
}
