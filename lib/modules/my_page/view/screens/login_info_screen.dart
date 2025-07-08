import 'package:flutter/material.dart';

class LoginInfoScreen extends StatelessWidget {
  const LoginInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인 정보'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(child: Text('로그인 정보 화면')),
    );
  }
}
