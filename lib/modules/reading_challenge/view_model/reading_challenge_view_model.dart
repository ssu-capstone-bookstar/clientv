import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reading_challenge_view_model.g.dart';

enum ReadingChallengeType {
  reading,
  newBook,
  allPoints,
}

@riverpod
class ReadingChallengeViewModel extends _$ReadingChallengeViewModel {
  @override
  ReadingChallengeType? build() {
    return null;
  }

  void selectOption(ReadingChallengeType option) {
    state = option;
  }
} 