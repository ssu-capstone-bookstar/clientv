import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ProfileImageSection extends StatelessWidget {
  final String imageUrl;
  final VoidCallback? onTap;
  const ProfileImageSection({required this.imageUrl, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    ImageProvider? provider;
    if (imageUrl.isNotEmpty) {
      if (imageUrl.startsWith('http')) {
        provider = NetworkImage(imageUrl);
      } else {
        provider = FileImage(File(imageUrl));
      }
    }
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 48,
          backgroundImage: provider,
          backgroundColor: ColorName.g7,
          child: imageUrl.isEmpty
              ? const Icon(Icons.person, size: 48, color: ColorName.g5)
              : null,
        ),
      ),
    );
  }
}
