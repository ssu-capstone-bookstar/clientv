import 'package:bookstar/modules/book_log/state/search_user_state.dart';
import 'package:bookstar/modules/book_log/view_model/search_user_history_storage.dart';
import 'package:bookstar/modules/reading_diary/repository/reading_diary_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_user_view_model.g.dart';

@riverpod
class SearchUserViewModel extends _$SearchUserViewModel {
  late final ReadingDiaryRepository _readingDiaryRepository;

  @override
  Future<SearchUserState> build() async {
    _readingDiaryRepository = ref.watch(readingDiaryRepositoryProvider);
    final history = await SearchUserHistoryStorage.loadHistories();
    state = AsyncValue.data(SearchUserState(history: history));
    return state.value ?? SearchUserState();
  }

  Future<SearchUserState> searchUsers(String nickName) async {
    final prev = state.value ?? SearchUserState();
    state = AsyncValue.loading();
    final response =
        await _readingDiaryRepository.getSearchUsersNickName(nickName);
    final users = response.data;

    state = AsyncValue.data(prev.copyWith(users: users));
    return state.value ?? SearchUserState();
  }

  Future<SearchUserState> onTapUser({required String nickName, required int memberId}) async {
    final prev = state.value ?? SearchUserState();
    await SearchUserHistoryStorage.saveHistory(memberId: memberId, nickName: nickName);
    final history = await SearchUserHistoryStorage.loadHistories();
    state = AsyncValue.data(prev.copyWith(history: history));
    return state.value ?? SearchUserState();
  }

  Future<void> removeHistory({required int memberId}) async {
    final prev = state.value ?? SearchUserState();
    await SearchUserHistoryStorage.removeHistory(memberId: memberId);
    final history = await SearchUserHistoryStorage.loadHistories();
    state = AsyncValue.data(prev.copyWith(history: history));
  }
}
