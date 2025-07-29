import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_overview_response.freezed.dart';
part 'book_overview_response.g.dart';

@freezed
abstract class BookOverviewResponse with _$BookOverviewResponse {
  const factory BookOverviewResponse({
    @Default(-1) int id,
    @Default('') String title,
    @Default('') String author,
    @Default('') String cover,
    @Default(0) int readingDiaryCount,
    @Default('') String isbn,
    @Default('') String publisher,
    @Default(0.0) double star,
    @Default('') String publishedDate,
    @Default(false) bool liked,
  }) = _BookOverviewResponse;

  factory BookOverviewResponse.fromJson(Map<String, dynamic> json) =>
      _$BookOverviewResponseFromJson(json);
}
