import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:book/modules/reading_diary/model/search_user_response.dart';

part 'search_user_state.freezed.dart';

@freezed
abstract class SearchUserState with _$SearchUserState {
  const factory SearchUserState({
    @Default([]) List<SearchUserResponse> users,
  }) = _SearchUserState;
}