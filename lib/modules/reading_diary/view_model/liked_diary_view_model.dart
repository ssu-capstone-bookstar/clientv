import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../model/liked_diary_feed_response.dart';
import '../repository/liked_diary_repository.dart';
import '../state/liked_diary_state.dart';

part 'liked_diary_view_model.g.dart';

@riverpod
LikedDiaryRepository likedDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return LikedDiaryRepository(dio);
}

@riverpod
Future<List<LikedDiaryFeed>> getLikedDiaryFeedsAsync(Ref ref) async {
  final repository = ref.read(likedDiaryRepositoryProvider);
  final response = await repository.getLikedDiaryFeeds(size: 20);
  return response.data.data;
}

@riverpod
class LikedDiaryViewModel extends _$LikedDiaryViewModel {
  @override
  LikedDiaryState build() {
    return const LikedDiaryState();
  }

  Future<void> initState() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final repository = ref.read(likedDiaryRepositoryProvider);
      final response = await repository.getLikedDiaryThumbnails(size: 20);

      state = state.copyWith(
        thumbnails: response.data.data,
        nextCursor: response.data.nextCursor,
        hasNext: response.data.hasNext,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refreshState() async {
    if (state.isLoadingMore || !state.hasNext) return;

    state = state.copyWith(isLoadingMore: true);
    try {
      final repository = ref.read(likedDiaryRepositoryProvider);
      final response = await repository.getLikedDiaryThumbnails(
        cursorId: state.nextCursor,
        size: 20,
      );

      state = state.copyWith(
        thumbnails: [...state.thumbnails, ...response.data.data],
        nextCursor: response.data.nextCursor,
        hasNext: response.data.hasNext,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingMore: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<List<LikedDiaryFeed>> getLikedDiaryFeeds() async {
    try {
      final repository = ref.read(likedDiaryRepositoryProvider);
      final response = await repository.getLikedDiaryFeeds(size: 20);
      return response.data.data;
    } catch (e) {
      throw Exception('좋아요 누른 다이어리 피드를 불러올 수 없습니다: $e');
    }
  }
}
