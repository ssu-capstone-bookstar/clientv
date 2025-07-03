import 'dart:async';

import 'package:book/search/models/search_book_response.dart';
import 'package:book/search/services/search_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_viewmodel.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  late final SearchRepository _repository;

  @override
  FutureOr<List<SearchBookResponse>> build() {
    _repository = ref.watch(searchRepositoryProvider);
    return [];
  }

  Future<void> searchBooks(String query) async {
    if (query.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final response = await _repository.searchBooks(query);
      return response.data.data;
    });
  }
} 