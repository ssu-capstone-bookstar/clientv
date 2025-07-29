import 'package:book/common/components/form/book_with_checkbok.dart';
import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:book/modules/book_log/model/book_log_models.dart';

//TODO: abandoned_challenges_view_model.dart 참고해서 코드 수정 필요
class ChallengeQuitBooksScreen extends StatefulWidget {
  const ChallengeQuitBooksScreen({super.key});

  @override
  State<ChallengeQuitBooksScreen> createState() =>
      _ChallengeQuitBooksScreenState();
}

class _ChallengeQuitBooksScreenState extends State<ChallengeQuitBooksScreen> {
  List<DummyBook> get books => dummyBooks;

  // 각 도서별 체크 상태
  late List<bool> checkedList;

  @override
  void initState() {
    super.initState();
    checkedList = List.generate(books.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    // books 길이와 checkedList 길이 동기화
    if (checkedList.length != books.length) {
      checkedList = List.generate(books.length, (_) => false);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('챌린지 중단 도서'),
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
      body: Stack(
        children: [
          Padding(
            padding:
                AppPaddings.SCREEN_BODY_PADDING.copyWith(left: 0, right: 0),
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return BookWithCheckbox(
                  thumbnailUrl: book.imageUrl,
                  title: book.title,
                  author: book.author,
                  lastReadAt: book.lastReadAt,
                  checked: checkedList[index],
                  onChanged: (v) {
                    setState(() {
                      checkedList[index] = v;
                    });
                  },
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 54),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CtaButtonL1(
                    text: '다시 시작하기',
                    enabled: checkedList.contains(true),
                    onPressed: checkedList.contains(true)
                        ? () {
                            // TODO: 다시 시작하기 처리 로직 추가
                            print('다시 시작하기 버튼 클릭됨');
                          }
                        : null,
                  ),
                  const SizedBox(height: 8),
                  CtaButtonL1(
                    text: '삭제하기',
                    enabled: checkedList.contains(true),
                    onPressed: checkedList.contains(true)
                        ? () {
                            // TODO: 삭제 처리 로직 추가
                            print('삭제하기 버튼 클릭됨');
                          }
                        : null,
                    backgroundColor: ColorName.g7,
                    borderColor: ColorName.g6,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
