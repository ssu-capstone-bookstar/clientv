import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:book/modules/reading_challenge/repository/reading_challenge_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'abandoned_challenges_view_model.freezed.dart';
part 'abandoned_challenges_view_model.g.dart';

@freezed
abstract class AbandonedChallengesScreenState
    with _$AbandonedChallengesScreenState {
  const factory AbandonedChallengesScreenState({
    @Default(AsyncData([])) AsyncValue<List<ChallengeResponse>> challenges,
    @Default(false) bool isSelectionMode,
    @Default({}) Set<int> selectedChallengeIds,
  }) = _AbandonedChallengesScreenState;
}

@riverpod
class AbandonedChallengesViewModel extends _$AbandonedChallengesViewModel {
  @override
  AbandonedChallengesScreenState build() {
    Future.microtask(_fetchChallenges);
    return const AbandonedChallengesScreenState();
  }

  Future<void> _fetchChallenges() async {
    state = state.copyWith(challenges: const AsyncLoading());
    final repo = ref.read(readingChallengeRepositoryProvider);

    final challenges = await AsyncValue.guard(() async {
      final res = await repo.getAbandonedChallenges();
      return res.data;
    });

    state = state.copyWith(challenges: challenges);
  }

  void toggleSelectionMode() {
    final newMode = !state.isSelectionMode;
    state = state.copyWith(
      isSelectionMode: newMode,
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

    await Future.wait(
      idsToDelete.map(
        (id) => repo.deleteChallenge(id),
      ),
    );

    state = state.copyWith(
      selectedChallengeIds: {},
      isSelectionMode: false,
    );
    ref.invalidateSelf();
  }
}
