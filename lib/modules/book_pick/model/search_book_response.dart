import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_book_response.freezed.dart';
part 'search_book_response.g.dart';

@freezed
abstract class SearchBookResponse with _$SearchBookResponse {
  const factory SearchBookResponse({
    @Default(0) int bookId,
    @Default('') String title,
    @Default('') String bookCover,
    @Default('') String pubDate,
    @Default('') String author,
    @Default('') String publisher,
  }) = _SearchBookResponse;

  factory SearchBookResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchBookResponseFromJson(json);
}
