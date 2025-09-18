import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../model/scrapped_diary_feed_response.dart';
import '../repository/scrapped_diary_repository.dart';
import '../state/scrapped_diary_state.dart';

part 'scrapped_diary_view_model.g.dart';

@riverpod
ScrappedDiaryRepository scrappedDiaryRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ScrappedDiaryRepository(dio);
}

@riverpod
Future<List<ScrappedDiaryFeed>> getScrappedDiaryFeedsAsync(Ref ref) async {
  final repository = ref.read(scrappedDiaryRepositoryProvider);
  final response = await repository.getScrappedDiaryFeeds(size: 20);
  return response.data.data;
}

@riverpod
class ScrappedDiaryViewModel extends _$ScrappedDiaryViewModel {
  late final ScrappedDiaryRepository _scrappedDiaryRepository;

  @override
  FutureOr<ScrappedDiaryState> build() async  {
      _scrappedDiaryRepository = ref.read(scrappedDiaryRepositoryProvider);
    return await initState();
  }

  Future<ScrappedDiaryState> initState() async {
    final prev = state.value ?? ScrappedDiaryState();
      final response = await _scrappedDiaryRepository.getScrappedDiaryThumbnails(size: 20);

      state = AsyncValue.data(prev.copyWith(
        thumbnails: response.data.data,
        nextCursor: response.data.nextCursor,
        hasNext: response.data.hasNext,
        isLoading: false,
      ));
    return state.value ?? ScrappedDiaryState();
  }

  Future<void> refreshState() async {
    final prev = state.value ?? ScrappedDiaryState();
    if (!prev.hasNext) return;
    try {
      final repository = ref.read(scrappedDiaryRepositoryProvider);
      final response = await repository.getScrappedDiaryThumbnails(
        cursorId: prev.nextCursor,
        size: 20,
      );

      state = AsyncValue.data(prev.copyWith(
        thumbnails: [...prev.thumbnails, ...response.data.data],
        nextCursor: response.data.nextCursor,
        hasNext: response.data.hasNext,
      ));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> deleteScrappedDiary(int diaryId) async {
    final prev = state.value ?? ScrappedDiaryState();
    try {
      await _scrappedDiaryRepository.deleteScrappedDiary(diaryId);
      // 삭제된 다이어리를 상태에서 제거
      state = AsyncValue.data(prev.copyWith(
        thumbnails: prev.thumbnails
            .where((thumbnail) => thumbnail.diaryId != diaryId)
            .toList(),
      ));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
