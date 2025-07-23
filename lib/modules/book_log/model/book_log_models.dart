export 'package:book/modules/reading_diary/model/diary_response.dart';

// TODO: 더미 데이터 삭제 필요
class DummyBook {
  final String imageUrl;
  final String title;
  final String status;
  final String lastReadAt;
  final String author;
  DummyBook(
      {required this.imageUrl,
      required this.title,
      required this.status,
      required this.lastReadAt,
      required this.author});
}

final dummyBooks = [
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '소년이 온다',
    status: '완독',
    lastReadAt: '~2025.05.06',
    author: '김영하',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '작별하지 않는다',
    status: '독서중',
    lastReadAt: '~2025.05.06',
    author: '박완서',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '회색 인간',
    status: '픽',
    lastReadAt: '~2025.05.06',
    author: '김영하, 박완서',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '소년이 온다',
    status: '완독',
    lastReadAt: '~2025.05.06',
    author: '안도현',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '작별하지 않는다',
    status: '독서중',
    lastReadAt: '~2025.05.06',
    author: 'Edgar Allan Poe',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '회색 인간',
    status: '완독',
    lastReadAt: '~2025.05.06',
    author: 'Anon, B.C., 김영하',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '회색 인간2',
    status: '완독',
    lastReadAt: '~2025.05.06',
    author: '김영하',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '제목이 매우 긴 책인 경우의 실험을 위한 제목',
    status: '완독',
    lastReadAt: '~2025.05.06',
    author: '김영하',
  ),
];
