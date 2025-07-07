import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:book/modules/reading_challenge/model/reading_challenge_request.dart';
import 'package:book/modules/reading_challenge/repository/reading_challenge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'challenge_creation_view_model.g.dart';

@riverpod
class ChallengeCreationViewModel extends _$ChallengeCreationViewModel {
  late final ReadingChallengeRepository _repository;

  @override
  AsyncValue<ChallengeResponse?> build() {
    _repository = ref.watch(readingChallengeRepositoryProvider);
    return const AsyncData(null);
  }

  Future<void> createChallenge({
    required int bookId,
    required int totalPages,
  }) async {
    state = const AsyncLoading();

    final request = ReadingChallengeRequest(
      bookId: bookId,
      totalPages: totalPages,
    );

    state = await AsyncValue.guard(
      () async {
        final result = await _repository.createChallenge(request);
        return result.data;
      },
    );
  }
} 