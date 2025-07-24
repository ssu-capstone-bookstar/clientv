import 'package:book/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/components/grid/image_grid.dart';
import '../../../../gen/colors.gen.dart';
import '../../view_model/book_log_view_model.dart';

class BookLogLowSection extends ConsumerStatefulWidget {
  final List<DiaryThumbnail> thumbnails;
  final int memberId;
  const BookLogLowSection(
      {super.key, required this.thumbnails, required this.memberId});

  @override
  ConsumerState<BookLogLowSection> createState() => _BookLogLowSectionState();
}

class _BookLogLowSectionState extends ConsumerState<BookLogLowSection> {
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

  void _onBottomReached() {
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
    _loadMoreThumbnails();
  }

  void _loadMoreThumbnails() async {
    await ref
        .read(bookLogViewModelProvider(widget.memberId).notifier)
        .refreshState();
    _isLoadingMore = false;
  }

  Future<void> _onRefresh() async {
    await ref
        .read(bookLogViewModelProvider(widget.memberId).notifier)
        .initState(widget.memberId);
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
        onRefresh: _onRefresh,
        child: ImageGrid(
          scrollController: _scrollController,
          imageUrls: imageUrls,
          crossAxisCount: 3,
          spacing: 0,
          onTap: (index) {
            context.push('/book-log/feeds', extra: {
              'memberId': widget.memberId,
              'index': index,
            });
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
