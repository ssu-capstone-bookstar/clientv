import 'dart:async';

import 'package:book/book/models/book_overview_response.dart';
import 'package:book/book/services/book_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_overview_viewmodel.g.dart';

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