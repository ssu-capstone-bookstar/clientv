import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bookstar/modules/book_log/state/search_user_state.dart';
import 'package:bookstar/modules/reading_diary/repository/reading_diary_repository.dart';

part 'search_user_view_model.g.dart';

@riverpod
class SearchUserViewModel extends _$SearchUserViewModel {
  late final ReadingDiaryRepository _readingDiaryRepository;

  @override
  Future<SearchUserState> build() async {
    _readingDiaryRepository = ref.watch(readingDiaryRepositoryProvider);
    return await _initState();
  }

  Future<SearchUserState> _initState() async {
    await _refreshHistory();
    return state.value ?? SearchUserState();
  }

  Future<void> _refreshHistory() async {
final response = await _readingDiaryRepository.getSearchUsersHistories();
    final history = response.data.data;
    final hasNext = response.data.hasNext;
    final nextCursor = response.data.nextCursor;
    state = AsyncValue.data(SearchUserState(
        history: history, historyHasNext: hasNext, nextCursor: nextCursor));
  }

  Future<SearchUserState> searchUsers(String nickName) async {
    final prev = state.value ?? SearchUserState();
    state = AsyncValue.loading();
    final response =
        await _readingDiaryRepository.getSearchUsers(nickName: nickName);
    final users = response.data;

    state = AsyncValue.data(prev.copyWith(users: users));
    return state.value ?? SearchUserState();
  }

  Future<SearchUserState> onTapUser(
      {required int memberId}) async {
    await _readingDiaryRepository.postSearchUsersHistories(
        searchedMemberId: memberId);
    await _refreshHistory();
    return state.value ?? SearchUserState();
  }

  Future<void> removeHistory({required int memberId}) async {
    await _readingDiaryRepository.deleteSearchUsersHistories(
        searchedMemberId: memberId);
    await _refreshHistory();
  }
}
