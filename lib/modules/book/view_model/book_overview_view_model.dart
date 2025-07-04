import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/book_overview_response.dart';
import '../repository/book_repository.dart';

part 'book_overview_view_model.g.dart';

@riverpod
class BookOverviewViewModel extends _$BookOverviewViewModel {
  late final BookRepository _repository;

  @override
  FutureOr<BookOverviewResponse> build(int bookId) {
    _repository = ref.watch(bookRepositoryProvider);
    return _fetchBookOverview(bookId);
  }

  Future<BookOverviewResponse> _fetchBookOverview(int bookId) async {
    final response = await _repository.getBookOverview(bookId);
    return response.data;
  }
} 