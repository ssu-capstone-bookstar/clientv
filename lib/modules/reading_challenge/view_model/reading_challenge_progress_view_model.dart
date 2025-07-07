import 'package:book/modules/reading_challenge/view_model/reading_challenge_progress_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reading_challenge_progress_view_model.g.dart';

@riverpod
class ReadingChallengeProgressViewModel
    extends _$ReadingChallengeProgressViewModel {
  @override
  ReadingChallengeProgressState build() {
    return const ReadingChallengeProgressState();
  }

  void setStartPage(String value) {
    state = state.copyWith(startPage: value);
  }

  void setEndPage(String value) {
    state = state.copyWith(endPage: value);
  }
} 