import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/reading_challenge_repository.dart';
import '../state/abandoned_challenges_state.dart';

part 'abandoned_challenges_view_model.g.dart';

@riverpod
class AbandonedChallengesViewModel extends _$AbandonedChallengesViewModel {
  @override
  AbandonedChallengesState build() {
    return const AbandonedChallengesState();
  }

  Future<void> initState() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final repository = ref.read(readingChallengeRepositoryProvider);
      final response = await repository.getAbandonedChallenges();

      final challenges = response.data;
      final checkedList = List.generate(challenges.length, (_) => false);

      state = state.copyWith(
        challenges: challenges,
        checkedList: checkedList,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  void toggleCheck(int index) {
    final newCheckedList = List<bool>.from(state.checkedList);
    newCheckedList[index] = !newCheckedList[index];
    state = state.copyWith(checkedList: newCheckedList);
  }

  Future<void> restartSelectedChallenges() async {
    final selectedIndices = <int>[];
    for (int i = 0; i < state.checkedList.length; i++) {
      if (state.checkedList[i]) {
        selectedIndices.add(i);
      }
    }

    if (selectedIndices.isEmpty) return;

    try {
      final repository = ref.read(readingChallengeRepositoryProvider);

      // 선택된 챌린지들을 다시 시작
      for (final index in selectedIndices) {
        final challenge = state.challenges[index];
        await repository.restartChallenge(challenge.challengeId);
      }

      // 성공 후 상태 초기화
      await initState();
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }

  Future<void> deleteSelectedChallenges() async {
    final selectedIndices = <int>[];
    for (int i = 0; i < state.checkedList.length; i++) {
      if (state.checkedList[i]) {
        selectedIndices.add(i);
      }
    }

    if (selectedIndices.isEmpty) return;

    try {
      final repository = ref.read(readingChallengeRepositoryProvider);

      // 선택된 챌린지들을 삭제
      for (final index in selectedIndices) {
        final challenge = state.challenges[index];
        await repository.deleteChallenge(challenge.challengeId);
      }

      // 성공 후 상태 초기화
      await initState();
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }

  bool get hasSelectedItems => state.checkedList.contains(true);
}
