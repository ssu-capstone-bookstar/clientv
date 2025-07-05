import 'package:book/modules/reading_diary/model/diary_image_response.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 책장(책 아이콘)용 더미 데이터
class DummyBook {
  final String imageUrl;
  final String title;
  final String status; // '완독', '독서중' 등
  DummyBook(
      {required this.imageUrl, required this.title, required this.status});
}

final dummyBooks = [
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '소년이 온다',
    status: '완독',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '작별하지 않는다',
    status: '독서중',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '회색 인간',
    status: '픽',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '소년이 온다',
    status: '완독',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '작별하지 않는다',
    status: '독서중',
  ),
  DummyBook(
    imageUrl: 'assets/images/sample_book.jpg',
    title: '회색 인간',
    status: '완독',
  ),
];

final dummyDiaries = [
  DiaryResponse(
    diaryId: 1,
    startPage: 1,
    endPage: 10,
    content: '더미 다이어리 1',
    images: [
      DiaryImageResponse(
        id: 1,
        imageUrl: 'https://picsum.photos/200/300',
        sequence: 1,
      ),
    ],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 2,
    startPage: 11,
    endPage: 20,
    content: '더미 다이어리 2',
    images: [
      DiaryImageResponse(
        id: 2,
        imageUrl: 'https://picsum.photos/200/300',
        sequence: 1,
      ),
    ],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 3,
    startPage: 21,
    endPage: 30,
    content: '더미 다이어리 3',
    images: [
      DiaryImageResponse(
        id: 3,
        imageUrl: 'https://picsum.photos/200/300',
        sequence: 1,
      ),
    ],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  // 복사된 더미 데이터들
  DiaryResponse(
    diaryId: 4,
    startPage: 31,
    endPage: 40,
    content: '더미 다이어리 4',
    images: [
      DiaryImageResponse(
        id: 4,
        imageUrl: 'https://picsum.photos/200/300',
        sequence: 1,
      ),
    ],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 5,
    startPage: 41,
    endPage: 50,
    content: '더미 다이어리 5',
    images: [
      DiaryImageResponse(
        id: 5,
        imageUrl: 'https://picsum.photos/200/300',
        sequence: 1,
      ),
    ],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 6,
    startPage: 51,
    endPage: 60,
    content: '더미 다이어리 6',
    images: [
      DiaryImageResponse(
        id: 6,
        imageUrl: 'https://picsum.photos/200/300',
        sequence: 1,
      ),
    ],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 7,
    startPage: 61,
    endPage: 70,
    content: '더미 다이어리 7',
    images: [],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 8,
    startPage: 71,
    endPage: 80,
    content: '더미 다이어리 8',
    images: [],
    decoration: '',
    createdAt: DateTime.now(),
  ),
  DiaryResponse(
    diaryId: 9,
    startPage: 81,
    endPage: 90,
    content: '더미 다이어리 9',
    images: [],
    decoration: '',
    createdAt: DateTime.now(),
  ),
];
