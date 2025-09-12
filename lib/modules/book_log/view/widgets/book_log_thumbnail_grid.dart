import 'package:bookstar/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/grid/image_grid.dart';
import '../../../../gen/colors.gen.dart';

class BookLogThumbnailGrid extends ConsumerStatefulWidget {
  const BookLogThumbnailGrid({
    super.key,
    required this.thumbnails,
    required this.onScrollBottom,
    required this.onRefresh,
    required this.onClickThumbnail,
  });
  final List<DiaryThumbnail> thumbnails;
  final Future<void> Function() onScrollBottom;
  final Future<void> Function() onRefresh;
  final Function(int) onClickThumbnail;

  @override
  ConsumerState<BookLogThumbnailGrid> createState() =>
      _BookLogThumbnailGridState();
}

class _BookLogThumbnailGridState extends ConsumerState<BookLogThumbnailGrid> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  DateTime? _lastBottomReachedTime;

  @override
  void initState() {
    super.initState();
    _setupScrollListener();
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent * 0.8 &&
          !_isLoadingMore) {
        _onBottomReached();
      }
    });
  }

  Future<void> _onBottomReached() async {
    final now = DateTime.now();
    // 디바운싱: 마지막 호출로부터 2초가 지나지 않았으면 무시
    if (_lastBottomReachedTime != null &&
        now.difference(_lastBottomReachedTime!).inSeconds < 2) {
      return;
    }
    // 이미 로딩 중이면 무시
    if (_isLoadingMore) {
      return;
    }
    _lastBottomReachedTime = now;
    _isLoadingMore = true;
    // 실제 로딩 로직 실행
    await widget.onScrollBottom();
    _isLoadingMore = false;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrls = widget.thumbnails
        .map((d) => d.firstImage.imageUrl)
        .where((url) => url.isNotEmpty)
        .toList();

    return Expanded(
      child: RefreshIndicator(
        onRefresh: widget.onRefresh,
        child: ImageGrid(
          scrollController: _scrollController,
          imageUrls: imageUrls,
          crossAxisCount: 3,
          spacing: 0,
          onTap: (index) {
            widget.onClickThumbnail(index);
          },
          emptyWidget: const Center(
            child: Text(
              '아직 책로그가 없습니다.',
              style: TextStyle(
                color: ColorName.g7,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
