import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'book_status_badge.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class BookLogMidSection extends StatelessWidget {
  final List<ChallengeResponse> books;
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
            children: List.generate(
              books.length,
              (i) => Row(
                children: [
                  _BookShelfItem(
                      key: ValueKey(books[i].book.title), challenge: books[i]),
                  if (i != books.length - 1) const SizedBox(width: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BookShelfItem extends StatelessWidget {
  final ChallengeResponse challenge;
  const _BookShelfItem({super.key, required this.challenge});

  @override
  Widget build(BuildContext context) {
    final book = challenge.book;
    String status;
    if (challenge.completed) {
      status = '완독';
    } else if (challenge.currentPage == 0) {
      status = '픽';
    } else if (challenge.currentPage > 0) {
      status = '독서중';
    } else {
      status = '';
    }
    return GestureDetector(
      onTap: () {
        context.push(
            '/reading-challenge/detail/${book.id}?challengeId=${challenge.challengeId}&totalPages=${challenge.totalPages}');
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 92,
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
                    book.thumbnailUrl.isNotEmpty
                        ? ClipOval(
                            child: book.thumbnailUrl.startsWith('http')
                                ? CachedNetworkImage(
                                    imageUrl: book.thumbnailUrl,
                                    width: 45,
                                    height: 45,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.broken_image,
                                            color: ColorName.g7, size: 28),
                                  )
                                : Image.asset(
                                    book.thumbnailUrl,
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
                    BookStatusBadge(status: status),
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
      ),
    );
  }
}
