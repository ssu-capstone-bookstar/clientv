import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../gen/colors.gen.dart';
import '../../../reading_diary/state/liked_diary_state.dart';
import '../../../reading_diary/view/widgets/liked_diary_thumbnail_grid.dart';
import '../../../reading_diary/view_model/liked_diary_view_model.dart';

class LikedDiariesScreen extends ConsumerStatefulWidget {
  const LikedDiariesScreen({super.key});

  @override
  ConsumerState<LikedDiariesScreen> createState() => _LikedDiariesScreenState();
}

class _LikedDiariesScreenState extends ConsumerState<LikedDiariesScreen> {
  @override
  void initState() {
    super.initState();
    // 화면이 로드될 때 데이터 초기화
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(likedDiaryViewModelProvider.notifier).initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    final likedDiaryState = ref.watch(likedDiaryViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('좋아요 누른 다이어리'),
        leading: IconButton(
          icon: const BackButton(),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              GoRouter.of(context).go('/book-log');
            },
          ),
        ],
      ),
      body: _buildBody(likedDiaryState),
    );
  }

  Widget _buildBody(LikedDiaryState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '오류가 발생했습니다',
              style: TextStyle(color: ColorName.g3),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                ref.read(likedDiaryViewModelProvider.notifier).initState();
              },
              child: const Text('다시 시도'),
            ),
          ],
        ),
      );
    }

    if (state.thumbnails.isEmpty) {
      return const Center(
        child: Text(
          '아직 좋아요 누른 다이어리가 없습니다.',
          style: TextStyle(
            color: ColorName.g7,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    return LikedDiaryThumbnailGrid(
      onScrollBottom: () async {
        await ref.read(likedDiaryViewModelProvider.notifier).refreshState();
      },
      onRefresh: () async {
        await ref.read(likedDiaryViewModelProvider.notifier).initState();
      },
      onClickThumbnail: (index) {
        context.push('/book-log/my-page/liked-diaries/feed',
            extra: {'index': index});
      },
    );
  }
}
