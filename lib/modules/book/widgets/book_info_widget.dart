import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';
import '../models/book_overview_response.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({
    super.key,
    required this.book,
  });

  final BookOverviewResponse book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: book.cover,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.title, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text('작가: ${book.author}',
                    style: Theme.of(context).textTheme.bodyMedium),
                Text('출판사: ${book.publisher}',
                    style: Theme.of(context).textTheme.bodyMedium),
                Text('출판연도: ${book.publishedDate}',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _buildInfoPill(
                      icon: Icons.star,
                      text: book.star.toString(),
                    ),
                    const SizedBox(width: 8),
                    _buildInfoPill(
                      icon: Icons.article_outlined,
                      text: book.readingDiaryCount.toString(),
                    ),
                  ],
                )
              ],
            ),
          ),
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
          Icon(icon, color: AppColors.primaryPurple, size: 16),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
