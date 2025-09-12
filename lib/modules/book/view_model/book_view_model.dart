import 'dart:async';

import 'package:bookstar/modules/book/model/book_rating_request.dart';
import 'package:bookstar/modules/book/state/book_overview_state.dart';
import 'package:bookstar/modules/book_pick/view_model/book_pick_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/book_overview_response.dart';
import '../repository/book_repository.dart';

part 'book_view_model.g.dart';

@riverpod
class BookViewModel extends _$BookViewModel {
  late final BookRepository _bookRepository;
  static final Map<int, BookOverviewState> _cache = {};

  @override
  FutureOr<BookOverviewState> build(int bookId) async {
    _bookRepository = ref.watch(bookRepositoryProvider);
    return await initState(bookId);
  }

  Future<BookOverviewState> initState(int bookId) async {
    if (_cache.containsKey(bookId)) {
      return _cache[bookId]!;
    } else {
      final overview = await _fetchBookOverview(bookId);
      final result = BookOverviewState(overview: overview);
      _cache[bookId] = result;
      return result;
    }
  }

  Future<BookOverviewResponse> _fetchBookOverview(int bookId) async {
    final response = await _bookRepository.getBookOverview(bookId);
    return response.data;
  }


  Future<void> handleOverviewLike() async {
    final prev = state.value ?? BookOverviewState();
    if (!prev.overview.liked) {
      await _bookRepository.createBookLike(prev.overview.id);

      state = AsyncValue.data(
        prev.copyWith(
          overview: prev.overview.copyWith(
            liked: true,
          ),
        ),
      );
    } else {
      await _bookRepository.deleteBookLike(prev.overview.id);
      state = AsyncValue.data(
        prev.copyWith(
          overview: prev.overview.copyWith(
            liked: false,
          ),
        ),
      );
    }
    await ref.read(bookPickViewModelProvider.notifier).initLikeBooks();
    _cache[bookId] = state.value!;
  }

  Future<void> handleOverviewStar(double rating) async {
    final prev = state.value ?? BookOverviewState();
    await _bookRepository.rateBook(
        prev.overview.id, BookRatingRequest(rating: rating));
    state = AsyncValue.data(
      prev.copyWith(
        overview: prev.overview.copyWith(
          star: rating,
        ),
      ),
    );
    _cache[bookId] = state.value!;
  }
}
