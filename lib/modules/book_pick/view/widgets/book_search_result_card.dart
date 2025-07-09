import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/utils/overlay_utils.dart';
import '../../model/search_book_response.dart';
import 'book_cover_image.dart';
import 'book_preview_info.dart';
import 'book_detail_info.dart';

class BookSearchResultCard extends StatefulWidget {
  final SearchBookResponse book;
  final String? from;

  const BookSearchResultCard({
    super.key,
    required this.book,
    this.from,
  });

  @override
  State<BookSearchResultCard> createState() => _BookSearchResultCardState();
}

class _BookSearchResultCardState extends State<BookSearchResultCard> {
  bool isSelected = false;

  void _handleSingleTap() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  void _handleTap() {
    if (widget.from == 'challenge') {
      context.push('/reading-challenge/start', extra: widget.book);
    } else {
      context.push('/book-pick/search/book-overview/${widget.book.bookId}');
    }  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onLongPress: _handleSingleTap,
            onTap: _handleTap,
            onDoubleTap: _handleTap,
            child: Stack(
              fit: StackFit.expand,
              children: [
                BookCoverImage(
                  imageUrl: widget.book.bookCover,
                  tag: '${widget.book.bookId}',
                ),
                ..._buildBookInfo(isSelected: isSelected),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildBookInfo({required bool isSelected}) {
    return isSelected
        ? [
            OverlayUtils.fullBlackOverlay(),
            BookDetailInfo(
              title: widget.book.title,
              author: widget.book.author,
              rating: 2.9,
            ),
          ]
        : [
            OverlayUtils.linearGradientOverlay(),
            BookPreviewInfo(title: widget.book.title),
          ];
  }
}
