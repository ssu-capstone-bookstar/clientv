import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/search_repository.dart';
import '../state/book_pick_state.dart';

part 'book_pick_view_model.g.dart';

@riverpod
class BookPickViewModel extends _$BookPickViewModel {
  late final SearchRepository _repository;
  bool _isFetchingPage = false;
  bool _isBusy = false;

  @override
  FutureOr<BookPickState> build() async {
    _repository = ref.watch(searchRepositoryProvider);

    final response = await _repository.searchBooks('베르');

    return BookPickState(
      books: response.data.data,
      start: 2,
      hasNext: response.data.hasNext,
    );
  }

  Future<void> searchBooks(String query) async {
    if (state is AsyncLoading) {
      return;
    }

    if (query.isEmpty) {
      state = const AsyncValue.data(BookPickState());
      return;
    }

    state = const AsyncValue.loading();

    try {
      final response = await _repository.searchBooks(query);
      state = AsyncValue.data(
        BookPickState(
          books: response.data.data,
          hasNext: response.data.hasNext,
          query: query,
          start: 2,
        ),
      );
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> fetchNextPage() async {
    if (_isFetchingPage) return;

    final currentState = state.value;
    if (currentState == null ||
        !currentState.hasNext ||
        currentState.query == null) {
      return;
    }

    _isFetchingPage = true;

    try {
      final response = await _repository.searchBooks(
        currentState.query!,
        start: currentState.start,
      );
      final newState = currentState.copyWith(
        books: [...currentState.books, ...response.data.data],
        start: currentState.start + 1,
        hasNext: response.data.hasNext,
      );
      state = AsyncValue.data(newState);
    } catch (e) {
      state = AsyncValue.data(currentState.copyWith(hasNext: false));
    } finally {
      _isFetchingPage = false;
    }
  }
}
