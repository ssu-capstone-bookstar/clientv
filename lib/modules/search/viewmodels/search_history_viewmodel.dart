import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/models/response_form.dart';
import '../models/search_history_response.dart';
import '../services/search_repository.dart';

part 'search_history_viewmodel.g.dart';

@riverpod
class SearchHistoryViewModel extends _$SearchHistoryViewModel {
  late final SearchRepository _repository;

  @override
  Future<ResponseForm<List<SearchHistoryResponse>>> build() async {
    _repository = ref.watch(searchRepositoryProvider);
    return _repository.getSearchHistories();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() {
      return _repository.getSearchHistories();
    });
  }

  Future<void> removeHistory(String query) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _repository.deleteSearchHistory(query);
      return _repository.getSearchHistories();
    });
  }
} 