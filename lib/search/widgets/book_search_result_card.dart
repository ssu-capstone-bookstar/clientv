import 'package:book/search/models/search_book_response.dart';
import 'package:flutter/material.dart';

class BookSearchResultCard extends StatelessWidget {
  final SearchBookResponse book;

  const BookSearchResultCard({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(book.bookCover),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          book.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
} 