import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/grid/image_grid.dart';
import '../../../../gen/colors.gen.dart';
import '../../view_model/liked_diary_view_model.dart';

class LikedDiaryThumbnailGrid extends ConsumerStatefulWidget {
  const LikedDiaryThumbnailGrid({
    super.key,
    required this.onScrollBottom,
    required this.onRefresh,
    required this.onClickThumbnail,
  });

  final Future<void> Function() onScrollBottom;
  final Future<void> Function() onRefresh;
  final Function(int) onClickThumbnail;

  @override
  ConsumerState<LikedDiaryThumbnailGrid> createState() =>
      _LikedDiaryThumbnailGridState();
}

class _LikedDiaryThumbnailGridState
    extends ConsumerState<LikedDiaryThumbnailGrid> {
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
    final likedDiaryState = ref.watch(likedDiaryViewModelProvider);

    final imageUrls = likedDiaryState.thumbnails
        .map((d) => d.firstImage.imageUrl)
        .where((url) => url.isNotEmpty)
        .toList();

    return SizedBox(
      height: MediaQuery.of(context).size.height - 200,
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
              '아직 좋아요 누른 다이어리가 없습니다.',
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
