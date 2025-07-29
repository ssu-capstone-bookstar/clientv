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
  @override
  ScrappedDiaryState build() {
    return const ScrappedDiaryState();
  }

  Future<void> initState() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final repository = ref.read(scrappedDiaryRepositoryProvider);
      final response = await repository.getScrappedDiaryThumbnails(size: 20);

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
    if (!state.hasNext) return;

    try {
      final repository = ref.read(scrappedDiaryRepositoryProvider);
      final response = await repository.getScrappedDiaryThumbnails(
        cursorId: state.nextCursor,
        size: 20,
      );

      state = state.copyWith(
        thumbnails: [...state.thumbnails, ...response.data.data],
        nextCursor: response.data.nextCursor,
        hasNext: response.data.hasNext,
      );
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }

  Future<void> deleteScrappedDiary(int diaryId) async {
    try {
      final repository = ref.read(scrappedDiaryRepositoryProvider);
      await repository.deleteScrappedDiary(diaryId);

      // 삭제된 다이어리를 상태에서 제거
      state = state.copyWith(
        thumbnails: state.thumbnails
            .where((thumbnail) => thumbnail.diaryId != diaryId)
            .toList(),
      );
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }
}
