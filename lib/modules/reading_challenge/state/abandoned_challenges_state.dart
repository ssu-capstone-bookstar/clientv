import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/challenge_response.dart';

part 'abandoned_challenges_state.freezed.dart';

@freezed
abstract class AbandonedChallengesState with _$AbandonedChallengesState {
  const factory AbandonedChallengesState({
    @Default([]) List<ChallengeResponse> challenges,
    @Default([]) List<bool> checkedList,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _AbandonedChallengesState;
}
