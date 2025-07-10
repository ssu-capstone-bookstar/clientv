import 'package:book/modules/reading_challenge/model/reading_challenge_request.dart';
import 'package:book/modules/reading_challenge/repository/reading_challenge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'challenge_creation_view_model.g.dart';

@riverpod
class ChallengeCreationViewModel extends _$ChallengeCreationViewModel {
  @override
  AsyncValue<void> build() {
    return const AsyncData(null);
  }

  Future<void> createChallenge({
    required int bookId,
    required int totalPages,
  }) async {
    state = const AsyncLoading();
    final repo = ref.read(readingChallengeRepositoryProvider);

    state = await AsyncValue.guard(() async {
      final request = ReadingChallengeRequest(
        bookId: bookId,
        totalPages: totalPages,
      );
      await repo.createChallenge(request);
    });
  }
} 