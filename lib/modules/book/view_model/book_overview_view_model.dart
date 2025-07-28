import 'dart:async';

import 'package:book/modules/book/state/book_overview_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/book_overview_response.dart';
import '../repository/book_repository.dart';

part 'book_overview_view_model.g.dart';

@riverpod
class BookOverviewViewModel extends _$BookOverviewViewModel {
  late final BookRepository _bookRepository;
  static final Map<int, BookOverviewResponse> _cache = {};

  @override
  FutureOr<BookOverviewState> build(int bookId) async {
    _bookRepository = ref.watch(bookRepositoryProvider);
    return await initState(bookId);
  }

  Future<BookOverviewState> initState(int bookId) async {
    if (_cache.containsKey(bookId)) {
      return BookOverviewState(overview: _cache[bookId]!);
    } else {
      final book = await _fetchBookOverview(bookId);
      _cache[bookId] = book;
      return BookOverviewState(overview: book);
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
  }
}
