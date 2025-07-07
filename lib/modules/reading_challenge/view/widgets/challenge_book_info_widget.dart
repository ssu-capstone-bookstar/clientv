import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/search/model/search_book_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChallengeBookInfoWidget extends StatelessWidget {
  const ChallengeBookInfoWidget({
    super.key,
    required this.book,
  });

  final SearchBookResponse book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 150,
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(book.bookCover),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          book.title,
          style: AppTexts.b5,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          book.author,
          style: AppTexts.b8.copyWith(color: ColorName.g3),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
} 