import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reading_challenge_rating_view_model.freezed.dart';
part 'reading_challenge_rating_view_model.g.dart';

@freezed
abstract class ReadingChallengeRatingState with _$ReadingChallengeRatingState {
  const factory ReadingChallengeRatingState({
    @Default(0.0) double rating,
  }) = _ReadingChallengeRatingState;
}

@riverpod
class ReadingChallengeRatingViewModel
    extends _$ReadingChallengeRatingViewModel {
  @override
  ReadingChallengeRatingState build() {
    return const ReadingChallengeRatingState();
  }

  void setRating(double newRating) {
    state = state.copyWith(rating: newRating);
  }

  bool get isButtonEnabled => state.rating > 0;
}
