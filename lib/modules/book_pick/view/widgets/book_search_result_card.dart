import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/utils/overlay_utils.dart';
import '../../model/search_book_response.dart';
import 'book_cover_image.dart';
import 'book_cover_detail_info.dart';
import 'book_cover_preview_info.dart';

class BookSearchResultCard extends ConsumerStatefulWidget {
  const BookSearchResultCard({
    super.key,
    required this.book,
    this.onTap,
  });

  final SearchBookResponse book;
  final Function()? onTap;

  @override
  ConsumerState<BookSearchResultCard> createState() =>
      _BookSearchResultCardState();
}

class _BookSearchResultCardState extends ConsumerState<BookSearchResultCard> {
  bool isSelected = false;

  void _onLongPress() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onLongPress: _onLongPress,
            onTap: widget.onTap,
            onDoubleTap: widget.onTap,
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
            BookCoverDetailInfo(
              title: widget.book.title,
              author: widget.book.author,
              rating: 2.9,
            ),
          ]
        : [
            OverlayUtils.linearGradientOverlay(),
            BookCoverPreviewInfo(title: widget.book.title),
          ];
  }
}
