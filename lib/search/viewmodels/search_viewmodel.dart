import 'dart:async';

import 'package:book/search/models/search_state.dart';
import 'package:book/search/services/search_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_viewmodel.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  late final SearchRepository _repository;
  bool _isFetchingPage = false;
  bool _isBusy = false;

  @override
  FutureOr<SearchState> build() async {
    _repository = ref.watch(searchRepositoryProvider);
    return const SearchState();
  }

  Future<void> searchBooks(String query) async {
    if (_isBusy) return;
    _isBusy = true;

    try {
      if (query.isEmpty) {
        state = const AsyncValue.data(SearchState());
        return;
      }

      state = const AsyncValue.loading();
      await Future.delayed(
          const Duration(milliseconds: 10)); // 상태 전파를 위한 아주 짧은 지연

      final response = await _repository.searchBooks(query);
      state = AsyncValue.data(
        SearchState(
          books: response.data.data,
          start: 2,
          hasNext: response.data.hasNext,
          query: query,
        ),
      );
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    } finally {
      _isBusy = false;
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
