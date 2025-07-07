import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_challenge_progress_state.freezed.dart';

@freezed
abstract class ReadingChallengeProgressState
    with _$ReadingChallengeProgressState {
  const factory ReadingChallengeProgressState({
    @Default('') String startPage,
    @Default('') String endPage,
  }) = _ReadingChallengeProgressState;

  const ReadingChallengeProgressState._();

  bool get isButtonEnabled => startPage.isNotEmpty && endPage.isNotEmpty;
}
