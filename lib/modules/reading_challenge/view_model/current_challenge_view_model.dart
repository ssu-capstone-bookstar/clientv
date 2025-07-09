import 'package:book/modules/reading_challenge/model/reading_challenge_request.dart';
import 'package:book/modules/reading_challenge/repository/reading_challenge_repository.dart';
import 'package:book/modules/search/model/search_book_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_challenge_view_model.freezed.dart';
part 'current_challenge_view_model.g.dart';

@freezed
abstract class CurrentChallengeState with _$CurrentChallengeState {
  const factory CurrentChallengeState({
    SearchBookResponse? book,
    int? totalPages,
    String? challengeId,
    int? lastReadPage,
  }) = _CurrentChallengeState;
}

@riverpod
class CurrentChallengeViewModel extends _$CurrentChallengeViewModel {
  @override
  CurrentChallengeState build() {
    return const CurrentChallengeState();
  }

  void setBook(SearchBookResponse book) {
    state = state.copyWith(book: book);
  }

  void setChallenge(SearchBookResponse book, int totalPages) {
    state = state.copyWith(
      book: book,
      totalPages: totalPages,
    );
  }

  void setTotalPages(int totalPages) {
    state = state.copyWith(totalPages: totalPages);
  }

  void setLastReadPage(int lastReadPage) {
    state = state.copyWith(lastReadPage: lastReadPage);
  }

  Future<void> fetchAndSetChallenge(String bookId) async {
    final repo = ref.read(readingChallengeRepositoryProvider);
    try {
      final res = await repo.getChallengeByBookId(bookId);
      final challengeDetail = res.data;
      state = state.copyWith(
        totalPages: challengeDetail.totalPages,
        challengeId: challengeDetail.challengeId,
        lastReadPage: challengeDetail.lastReadPage,
      );
    } catch (e) {
      // TODO: Handle error
      print('Failed to fetch challenge detail: $e');
    }
  }

  void clear() {
    state = const CurrentChallengeState();
  }
}
