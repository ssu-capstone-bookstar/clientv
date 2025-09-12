import 'package:bookstar/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ProfileSectionContainer extends StatelessWidget {
  final Widget child;
  const ProfileSectionContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorName.g7, width: 1),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: child,
    );
  }
}
