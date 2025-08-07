import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/grid/image_grid.dart';
import '../../../../gen/colors.gen.dart';
import '../../view_model/scrapped_diary_view_model.dart';

class ScrappedDiaryThumbnailGrid extends ConsumerStatefulWidget {
  const ScrappedDiaryThumbnailGrid({
    super.key,
    required this.onScrollBottom,
    required this.onRefresh,
    required this.onClickThumbnail,
  });

  final VoidCallback onScrollBottom;
  final Future<void> Function() onRefresh;
  final Function(int) onClickThumbnail;

  @override
  ConsumerState<ScrappedDiaryThumbnailGrid> createState() =>
      _ScrappedDiaryThumbnailGridState();
}

class _ScrappedDiaryThumbnailGridState
    extends ConsumerState<ScrappedDiaryThumbnailGrid> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      widget.onScrollBottom();
    }
  }

  @override
  Widget build(BuildContext context) {
    final scrappedDiaryState = ref.watch(scrappedDiaryViewModelProvider);

    // 스크랩한 다이어리 썸네일에서 이미지 URL 목록 추출
    final List<String> imageUrls = scrappedDiaryState.thumbnails
        .map((thumbnail) => thumbnail.firstImage?.imageUrl ?? '')
        .toList();

    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: ImageGrid(
        imageUrls: imageUrls,
        crossAxisCount: 3,
        spacing: 0,
        scrollController: _scrollController,
        onTap: widget.onClickThumbnail,
        emptyWidget: const Center(
          child: Text(
            '스크랩한 다이어리가 없습니다.',
            style: TextStyle(
              color: ColorName.g7,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
