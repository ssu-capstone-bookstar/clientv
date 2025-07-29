import 'package:book/modules/reading_challenge/view_model/current_challenge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/utils/overlay_utils.dart';
import '../../model/search_book_response.dart';
import 'book_cover_image.dart';
import 'book_cover_detail_info.dart';
import 'book_cover_preview_info.dart';

class BookSearchResultCard extends ConsumerStatefulWidget {
  final SearchBookResponse book;
  final String? from;

  const BookSearchResultCard({
    super.key,
    required this.book,
    this.from,
  });

  @override
  ConsumerState<BookSearchResultCard> createState() =>
      _BookSearchResultCardState();
}

class _BookSearchResultCardState extends ConsumerState<BookSearchResultCard> {
  bool isSelected = false;

  void _handleSingleTap() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  Future<void> _handleTap() async {
    if (widget.from == 'challenge') {
      final viewModel = ref.read(currentChallengeViewModelProvider.notifier);
      final challengeExists =
          await viewModel.checkChallengeExists(widget.book.bookId.toString());

      if (challengeExists) {
        // 챌린지가 존재하면 커스텀 토스트 표시
        if (mounted) {
          OverlayUtils.showCustomToast(context, '이미 진행중인 챌린지입니다.');
        }
      } else {
        // 챌린지가 존재하지 않으면 다음 화면으로 이동
        if (mounted) {
          context.push('/reading-challenge/total-page', extra: widget.book);
        }
      }
    } else {
      context.push('/book-pick/detail/${widget.book.bookId}');
    }
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
