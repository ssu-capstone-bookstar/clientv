import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_detail_response.freezed.dart';
part 'book_detail_response.g.dart';

@freezed
abstract class BookDetailResponse with _$BookDetailResponse {
  const factory BookDetailResponse({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'aladingBookId') required int aladinBookId,
    required String title,
    required String author,
    required String isbn,
    required String isbn13,
    required String categoryName,
    required String description,
    required String publisher,
    required DateTime publishedDate,
    required int page,
    int? toc,
    required String imageUrl,
    required double star,
  }) = _BookDetailResponse;

  factory BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);
}
