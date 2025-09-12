import 'package:bookstar/modules/book_pick/model/like_book_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_pick_search_state.freezed.dart';

@freezed
abstract class BookPickSearchState with _$BookPickSearchState {
  const factory BookPickSearchState({
    @Default(LikeBookState()) LikeBookState likeBook,
  }) = _BookPickSearchState;
}