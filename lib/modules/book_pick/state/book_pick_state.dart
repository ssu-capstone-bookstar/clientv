import 'package:bookstar/modules/book_pick/model/like_book_state.dart';
import 'package:bookstar/modules/book_pick/model/youtube_recommend_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_pick_state.freezed.dart';

@freezed
abstract class BookPickState with _$BookPickState {
  const factory BookPickState({
    // @Default([]) List<SearchBookResponse> books,
    @Default(false) bool hasNext,
    @Default(-1) int nextCursor,
    @Default(LikeBookState()) LikeBookState likeBook,
    @Default([]) List<YoutubeRecommendResponse> youtubeRecommends,
    String? query,
  }) = _BookPickState;
}