import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: provider,
              backgroundColor: ColorName.g7,
              child: imageUrl.isEmpty
                  ? const Icon(Icons.person, size: 48, color: ColorName.g5)
                  : null,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: ColorName.g3,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/ic_camera.svg',
                    width: 12,
                    height: 12,
                    colorFilter: const ColorFilter.mode(
                      ColorName.w1,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
