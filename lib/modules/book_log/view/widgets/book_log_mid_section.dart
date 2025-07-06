import 'package:flutter/material.dart';
import '../../model/book_log_models.dart';
import 'book_status_badge.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/common/theme/style/app_texts.dart';

class BookLogMidSection extends StatelessWidget {
  final List<DummyBook> books;
  const BookLogMidSection({required this.books, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 69,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < books.length; i++) ...[
                _BookShelfItem(book: books[i]),
                if (i != books.length - 1) const SizedBox(width: 12),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _BookShelfItem extends StatelessWidget {
  final DummyBook book;
  const _BookShelfItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 92,
        minWidth: 0,
        minHeight: 69,
        maxHeight: 69,
      ),
      child: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: ColorName.g7,
                      shape: BoxShape.circle,
                    ),
                  ),
                  book.imageUrl.isNotEmpty
                      ? ClipOval(
                          child: Image.asset(
                            book.imageUrl,
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(Icons.book, color: ColorName.g7, size: 28),
                ],
              ),
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 18,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BookStatusBadge(status: book.status),
                  const SizedBox(width: 3),
                  Flexible(
                    child: Text(
                      book.title,
                      style: AppTexts.b11.copyWith(color: ColorName.g2),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
