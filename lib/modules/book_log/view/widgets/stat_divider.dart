import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class StatDivider extends StatelessWidget {
  const StatDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: -1.5708,
        child: Container(
          width: 18,
          height: 0,
          decoration: BoxDecoration(
            color: ColorName.g3,
            border: Border.all(color: ColorName.g7, width: 1),
          ),
        ),
      ),
    );
  }
}
