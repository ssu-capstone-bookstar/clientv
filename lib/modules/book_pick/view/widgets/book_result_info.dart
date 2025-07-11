import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../common/theme/app_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../model/search_book_response.dart';

class BookResultInfo extends StatelessWidget {
  const BookResultInfo({
    super.key,
    required this.book,
  });

  final SearchBookResponse book;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: book.bookCover,
                width: 120,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(book.title, style: AppTexts.b3),
                  const SizedBox(height: 12),
                  _buildLabeledText(label: '작가', value: book.author),
                  _buildLabeledText(label: '출판사', value: book.publisher),
                  _buildLabeledText(label: '출판연도', value: book.pubDate),
                  const SizedBox(height: 16),
                  // Row(
                  //   spacing: 8,
                  //   children: [
                  //     _buildInfoPill(
                  //       icon: Icons.star,
                  //       text: (2.9).toString(),
                  //       // text: book.star.toString(),
                  //     ),
                  //     _buildInfoPill(
                  //       icon: Icons.article_outlined,
                  //       text: (11).toString(),
                  //       // text: book.readingDiaryCount.toString(),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabeledText({
    required String label,
    required String value,
    double gap = 6.0,
  }) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: label, style: AppTexts.b11.copyWith(color: ColorName.g3)),
          WidgetSpan(child: SizedBox(width: gap)),
          TextSpan(text: value, style: AppTexts.b11.copyWith(color: ColorName.g2)),
        ],
      ),
    );
  }

  Widget _buildInfoPill({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: ColorName.p1, size: 16),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
