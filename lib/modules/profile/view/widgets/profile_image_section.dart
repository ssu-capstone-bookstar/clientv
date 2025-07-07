import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ProfileImageSection extends StatelessWidget {
  final String imageUrl;
  final VoidCallback? onTap;
  const ProfileImageSection({required this.imageUrl, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 48,
          backgroundImage: imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
          backgroundColor: ColorName.g7,
          child: imageUrl.isEmpty
              ? const Icon(Icons.person, size: 48, color: ColorName.g5)
              : null,
        ),
      ),
    );
  }
}
