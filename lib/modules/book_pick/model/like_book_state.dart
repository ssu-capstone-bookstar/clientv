import 'package:book/modules/book_pick/model/like_book_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_book_state.freezed.dart';

@freezed
abstract class LikeBookState with _$LikeBookState {
  const factory LikeBookState({
    @Default([]) List<LikeBookResponse> likeBooks,
    @Default(false) bool hasNext,
    @Default(-1) int nextCursor,
    @Default("") String title,
  }) = _LikeBookState;
}
