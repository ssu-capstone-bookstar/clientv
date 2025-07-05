import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_book_response.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<SearchBookResponse> books,
    @Default(1) int start,
    @Default(true) bool hasNext,
    String? query,
  }) = _SearchState;
}
