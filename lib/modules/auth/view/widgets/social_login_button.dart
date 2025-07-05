import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetName;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final bool isGoogle;

  const SocialLoginButton({
    super.key,
    required this.onPressed,
    required this.assetName,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    this.isGoogle = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: isGoogle ? BorderSide(color: Colors.grey.shade300) : BorderSide.none,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(assetName, width: 24, height: 24),
          const SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
