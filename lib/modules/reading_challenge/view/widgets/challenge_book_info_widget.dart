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
            width: 161.02,
            child: Container(
              height: 265,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.36),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(book.bookCover),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF51515C).withValues(alpha: 0.7),
                    blurRadius: 46.0,
                    spreadRadius: 0.0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 161.02,
          child: Column(
            children: [
              Text(
                book.title,
                style: AppTexts.b9.copyWith(color: ColorName.w1),
                textAlign: TextAlign.center,
              ),
              Text(
                book.author,
                style: AppTexts.b11.copyWith(color: ColorName.g3),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
