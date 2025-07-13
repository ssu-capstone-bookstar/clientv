import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/search_book_response.dart';

part 'book_pick_state.freezed.dart';

@freezed
abstract class BookPickState with _$BookPickState {
  const factory BookPickState({
    @Default([]) List<SearchBookResponse> books,
    @Default(1) int start,
    @Default(true) bool hasNext,
    String? query,
  }) = _BookPickState;
}