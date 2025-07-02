import 'package:book/auth/models/login_request.dart';
import 'package:book/auth/viewmodels/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 2),
              Image.asset(
                'assets/images/bookstar_character.png',
                height: 150,
              ),
              const SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    height: 1.4,
                  ),
                  children: [
                    TextSpan(text: '책은 좋아하는데,\n'),
                    TextSpan(
                      text: '꾸준히',
                      style: TextStyle(
                        color: Color(0xFF7C4DFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '가 어려웠다면.'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '지금 북스타에서 시작해 보세요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Spacer(flex: 1),
              const Spacer(flex: 3),
              _buildSocialLoginButton(
                onPressed: () {
                  ref
                      .read(authViewModelProvider.notifier)
                      .login(ProviderType.kakao);
                },
                assetName: 'assets/icons/kakao.svg',
                label: '카카오 로그인',
                backgroundColor: const Color(0xFFFEE500),
                textColor: Colors.black87,
              ),
              const SizedBox(height: 12),
              _buildSocialLoginButton(
                onPressed: () {
                  ref
                      .read(authViewModelProvider.notifier)
                      .login(ProviderType.apple);
                },
                assetName: 'assets/icons/apple.svg',
                label: 'Apple로 로그인',
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
              const SizedBox(height: 12),
              _buildSocialLoginButton(
                onPressed: () {
                  ref
                      .read(authViewModelProvider.notifier)
                      .login(ProviderType.google);
                },
                assetName: 'assets/icons/google.svg',
                label: 'Google로 로그인',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                isGoogle: true,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLoginButton({
    required VoidCallback onPressed,
    required String assetName,
    required String label,
    required Color backgroundColor,
    required Color textColor,
    bool isGoogle = false,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: isGoogle
              ? BorderSide(color: Colors.grey.shade300)
              : BorderSide.none,
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
