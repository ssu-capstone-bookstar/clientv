import 'package:bookstar/modules/reading_diary/model/user_search_history_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bookstar/modules/reading_diary/model/search_user_response.dart';

part 'search_user_state.freezed.dart';

@freezed
abstract class SearchUserState with _$SearchUserState {
  const factory SearchUserState({
    @Default([]) List<SearchUserResponse> users,
    @Default([]) List<UserSearchHistoryResponse> history,
    @Default(false) bool historyHasNext,
    @Default(null) int? nextCursor,
  }) = _SearchUserState;
}