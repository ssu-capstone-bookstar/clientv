import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../common/theme/app_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../book_pick/model/search_book_response.dart';

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
            width: 180,
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(book.bookCover),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                    ),
                  ],
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
