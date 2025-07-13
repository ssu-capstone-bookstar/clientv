import 'package:flutter/material.dart';

class DecimalRatingBar extends StatelessWidget {
  const DecimalRatingBar({
    super.key,
    required this.rating,
    required this.onRatingChanged,
    required this.fullIconBuilder,
    required this.emptyIconBuilder,
    this.starSize = 24.0,
    this.itemSpacing = 4.0,
    this.division = 10,
  });

  final double rating;
  final ValueChanged<double> onRatingChanged;
  final Widget Function(double fill) fullIconBuilder;
  final Widget Function() emptyIconBuilder;

  final double starSize;
  final double itemSpacing;
  final int division;

  void _handlePointer(PointerEvent event, BoxConstraints constraints) {
    final totalWidth = starSize * 5 + itemSpacing * 4;
    final dx = event.localPosition.dx.clamp(0.0, totalWidth);
    final percent = dx / totalWidth;
    final stepped = (percent * 5 * division).floor() / division;
    final newRating = stepped.clamp(0.0, 5.0);
    onRatingChanged(double.parse(newRating.toStringAsFixed(1)));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Listener(
          onPointerDown: (event) => _handlePointer(event, constraints),
          onPointerMove: (event) => _handlePointer(event, constraints),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5, (index) {
              final starRating = rating - index;
              final fill = starRating.clamp(0.0, 1.0);

              return Padding(
                padding: EdgeInsets.only(right: index < 4 ? itemSpacing : 0),
                child: SizedBox(
                  width: starSize,
                  height: starSize,
                  child: fill <= 0.0
                      ? emptyIconBuilder()
                      : fullIconBuilder(fill),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
