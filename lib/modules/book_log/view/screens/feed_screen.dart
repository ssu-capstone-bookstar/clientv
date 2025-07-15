import 'package:flutter/material.dart';
import 'package:book/modules/book_log/view/widgets/feed_card.dart'; // 분리된 위젯 사용

// TODO: 실제 asset 경로로 교체하세요
const String dummyProfileImage = 'assets/images/sample_book.jpg';
const String dummyBookCover = 'assets/images/sample_book.jpg';

// 피드 메인 스크린
class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('책로그'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert,
                color: Color(0xFF222222)), // TODO: 실제 피그마 아이콘, 컬러 적용
            onPressed: () {
              // TODO: 실제 기능 연결
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('더보기 클릭됨')),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          itemCount: 5, // TODO: 실제 데이터로 교체
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            return FeedCard(); // 분리된 위젯 사용
          },
        ),
      ),
    );
  }
}

// FeedCard 위젯은 widgets/feed_card.dart로 분리됨
