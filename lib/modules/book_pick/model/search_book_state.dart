import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_book_response.dart';

part 'search_book_state.freezed.dart';

@freezed
abstract class SearchBookState with _$SearchBookState {
  const factory SearchBookState({
    @Default([]) List<SearchBookResponse> books,
    @Default([]) List<String> searchHistories,
    @Default(1) int start,
    @Default(false) bool hasNext,
    @Default('') String query,
  }) = _SearchBookState;
}
