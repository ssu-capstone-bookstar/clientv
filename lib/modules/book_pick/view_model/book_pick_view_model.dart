import 'dart:async';

import 'package:book/modules/book_pick/model/like_book_state.dart';
import 'package:book/modules/book_pick/repository/book_pick_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../state/book_pick_state.dart';

part 'book_pick_view_model.g.dart';

@riverpod
class BookPickViewModel extends _$BookPickViewModel {
  late final BookPickRepository _bookPickRepository;

  @override
  FutureOr<BookPickState> build() async {
    _bookPickRepository = ref.watch(bookPickRepositoryProvider);
    return await initState();
  }

  Future<BookPickState> initState() async {
    final responseYoutube = await _bookPickRepository.getYoutubeRecommend();
    final responseLike = await _bookPickRepository.getMyLikes();
    state = AsyncValue.data(BookPickState(
      likeBook: LikeBookState(
        likeBooks: responseLike.data.data,
        hasNext: responseLike.data.hasNext,
        nextCursor: responseLike.data.nextCursor ?? -1,
      ),
      youtubeRecommends: responseYoutube.data,
    ));
    return state.value ?? BookPickState();
  }

  Future<BookPickState> getOtherRecommend() async {
    final prev = state.value ?? BookPickState();
    final responseYoutube = await _bookPickRepository.getYoutubeRecommend();
    state = AsyncValue.data(prev.copyWith(
      youtubeRecommends: responseYoutube.data,
    ));
    return state.value ?? BookPickState();
  }

  Future<void> watchYoutubeVideo(String videoId) async {
    await _bookPickRepository.watchYoutubeVideo(videoId: videoId);
  }

  Future<BookPickState> initLikeBooks({String keyword = ""}) async {
    final prev = state.value ?? BookPickState();
    final responseLike = await _bookPickRepository.getMyLikes(keyword: keyword);
    state = AsyncValue.data(prev.copyWith(
      likeBook: LikeBookState(
        likeBooks: responseLike.data.data,
        hasNext: responseLike.data.hasNext,
        nextCursor: responseLike.data.nextCursor ?? -1,
        keyword: keyword,
      ),
    ));
    return state.value ?? BookPickState();
  }

  Future<BookPickState> refreshLikeBooks() async {
    final prev = state.value ?? BookPickState();
    if (prev.nextCursor != -1) {
      final responseLike =
          await _bookPickRepository.getMyLikes(cursorId: prev.nextCursor, keyword: prev.likeBook.keyword);
      state = AsyncValue.data(prev.copyWith(
        likeBook: LikeBookState(
          likeBooks: [...prev.likeBook.likeBooks, ...responseLike.data.data],
          hasNext: responseLike.data.hasNext,
          nextCursor: responseLike.data.nextCursor ?? -1,
          keyword: prev.likeBook.keyword,
        ),
      ));
      return state.value ?? BookPickState();
    }
    return prev;
  }
}
