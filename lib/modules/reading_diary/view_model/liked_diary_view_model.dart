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
  late final LikedDiaryRepository _likedDiaryRepository;

  @override
  FutureOr<LikedDiaryState> build() async {
    _likedDiaryRepository = ref.read(likedDiaryRepositoryProvider);
    return await initState();
  }

  Future<LikedDiaryState> initState() async {
    final prev = state.value ?? LikedDiaryState();
    final response =
        await _likedDiaryRepository.getLikedDiaryThumbnails(size: 20);

    state = AsyncValue.data(prev.copyWith(
      thumbnails: response.data.data,
      nextCursor: response.data.nextCursor,
      hasNext: response.data.hasNext,
      isLoading: false,
    ));
    return state.value ?? LikedDiaryState();
  }

  Future<void> refreshState() async {
    final prev = state.value ?? LikedDiaryState();
    if (!prev.hasNext) return;

    final response = await _likedDiaryRepository.getLikedDiaryThumbnails(
      cursorId: prev.nextCursor,
      size: 20,
    );

    state = AsyncValue.data(prev.copyWith(
      thumbnails: [...prev.thumbnails, ...response.data.data],
      nextCursor: response.data.nextCursor,
      hasNext: response.data.hasNext,
    ));
  }

  Future<List<LikedDiaryFeed>> getLikedDiaryFeeds() async {
    final response = await _likedDiaryRepository.getLikedDiaryFeeds(size: 20);
    return response.data.data;
  }
}
