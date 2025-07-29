import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_detail_response.freezed.dart';
part 'book_detail_response.g.dart';

@freezed
abstract class BookDetailResponse with _$BookDetailResponse {
  const factory BookDetailResponse({
    @Default(-1) int id,
    @Default(-1) int aladingBookId,
    @Default('') String title,
    @Default('') String author,
    @Default('') String isbn,
    @Default('') String isbn13,
    @Default('') String categoryName,
    @Default('') String description,
    @Default('') String publisher,
    @Default('') String publishedDate,
    @Default(-1) int page,
    @Default(-1) int toc,
    @Default('') String imageUrl,
    @Default(0) double star,
  }) = _BookDetailResponse;

  factory BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);
}
