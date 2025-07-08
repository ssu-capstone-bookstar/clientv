import 'package:book/common/theme/style/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FollowerManagementScreen extends StatelessWidget {
  const FollowerManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('팔로워 관리'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              GoRouter.of(context).go('/book-log');
            },
          ),
        ],
      ),
      body: Padding(
        padding: AppPaddings.SCREEN_BODY_PADDING,
        child: const Text('팔로워 관리 화면'),
      ),
    );
  }
}
