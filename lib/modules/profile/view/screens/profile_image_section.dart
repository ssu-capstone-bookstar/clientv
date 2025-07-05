import 'package:flutter/material.dart';

class ProfileImageSection extends StatelessWidget {
  final String imageUrl;
  final VoidCallback? onTap;
  const ProfileImageSection({Key? key, required this.imageUrl, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 48,
          backgroundImage: imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
          child: imageUrl.isEmpty
              ? const Icon(Icons.person, size: 48, color: Colors.grey)
              : null,
          backgroundColor: Colors.grey[800],
        ),
      ),
    );
  }
}
