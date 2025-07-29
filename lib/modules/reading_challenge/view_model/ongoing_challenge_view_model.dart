import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:book/modules/reading_challenge/repository/reading_challenge_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ongoing_challenge_view_model.freezed.dart';
part 'ongoing_challenge_view_model.g.dart';

@freezed
abstract class OngoingChallengeScreenState with _$OngoingChallengeScreenState {
  const factory OngoingChallengeScreenState({
    @Default(AsyncData([])) AsyncValue<List<ChallengeResponse>> challenges,
    @Default(false) bool isSelectionMode,
    @Default({}) Set<int> selectedChallengeIds,
  }) = _OngoingChallengeScreenState;
}

@riverpod
class OngoingChallengeViewModel extends _$OngoingChallengeViewModel {
  @override
  OngoingChallengeScreenState build() {
    // `build`가 완료된 직후에 `_fetchChallenges`를 실행하도록 변경
    Future.microtask(_fetchChallenges);
    return const OngoingChallengeScreenState();
  }

  Future<void> _fetchChallenges() async {
    state = state.copyWith(challenges: const AsyncLoading());
    final repo = ref.read(readingChallengeRepositoryProvider);

    final challenges = await AsyncValue.guard(() async {
      final res = await repo.getOngoingChallenges();
      return res.data;
    });

    state = state.copyWith(challenges: challenges);
  }

  void toggleSelectionMode() {
    final newMode = !state.isSelectionMode;
    state = state.copyWith(
      isSelectionMode: newMode,
      // 선택 모드 해제 시 선택 목록 초기화
      selectedChallengeIds: newMode ? state.selectedChallengeIds : {},
    );
  }

  void toggleChallengeSelection(int challengeId) {
    final newSelection = Set<int>.from(state.selectedChallengeIds);
    if (newSelection.contains(challengeId)) {
      newSelection.remove(challengeId);
    } else {
      newSelection.add(challengeId);
    }
    state = state.copyWith(selectedChallengeIds: newSelection);
  }

  Future<void> deleteSelectedChallenges() async {
    final repo = ref.read(readingChallengeRepositoryProvider);
    final idsToDelete = List<int>.from(state.selectedChallengeIds);

    // TODO: 로딩 상태 처리
    await Future.wait(
      idsToDelete.map(
        (id) => repo.abandonChallenge(id), // DELETE 대신 POST /abandon 사용
      ),
    );

    state = state.copyWith(
      selectedChallengeIds: {},
      isSelectionMode: false,
    );
    ref.invalidateSelf();
  }
}
