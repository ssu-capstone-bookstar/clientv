import 'dart:async';

import 'package:book/search/models/search_state.dart';
import 'package:book/search/services/search_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_viewmodel.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  late final SearchRepository _repository;
  bool _isFetchingPage = false;

  @override
  FutureOr<SearchState> build() {
    _repository = ref.watch(searchRepositoryProvider);
    return const SearchState();
  }

  Future<void> searchBooks(String query) async {
    if (query.isEmpty) {
      state = const AsyncValue.data(SearchState());
      return;
    }

    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final response = await _repository.searchBooks(query);
      return SearchState(
        books: response.data.data,
        start: 2,
        hasNext: response.data.hasNext,
        query: query,
      );
    });
  }

  Future<void> fetchNextPage() async {
    if (_isFetchingPage) return;

    final currentState = state.value;
    if (currentState == null || !currentState.hasNext || currentState.query == null) {
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