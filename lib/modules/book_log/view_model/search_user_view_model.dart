import 'package:book/modules/book_log/state/search_user_state.dart';
import 'package:book/modules/reading_diary/repository/reading_diary_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_user_view_model.g.dart';

@riverpod
class SearchUserViewModel extends _$SearchUserViewModel {
  late final ReadingDiaryRepository _readingDiaryRepository;

  @override
  Future<SearchUserState> build() async {
    _readingDiaryRepository = ref.watch(readingDiaryRepositoryProvider);
    return const SearchUserState();
  }

  Future<SearchUserState> searchUsers(String nickName) async {
    state = AsyncValue.loading();
    final response = await _readingDiaryRepository.getSearchUsersNickName(nickName);
    final users = response.data;

    state = AsyncValue.data(
      SearchUserState(users: [...users]),
    );
    return state.value ?? SearchUserState();
  }

}
