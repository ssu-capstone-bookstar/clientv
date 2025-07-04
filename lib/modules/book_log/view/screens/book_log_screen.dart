import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookLogScreen extends StatelessWidget {
  const BookLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('책로그'),
        actions: [
          TextButton(
            onPressed: () => context.go('/book-log/profile'),
            child: const Text(
              '프로필 편집',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          '피드(책로그) 화면',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
