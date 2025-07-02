import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_overview_response.freezed.dart';
part 'book_overview_response.g.dart';

@freezed
abstract class BookOverviewResponse with _$BookOverviewResponse {
  const factory BookOverviewResponse({
    @Default(0) int bookId,
    required String title,
    required String author,
    required String cover,
    required int readingDiaryCount,
    required String isbn,
    required String publisher,
    required double star,
  }) = _BookOverviewResponse;

  factory BookOverviewResponse.fromJson(Map<String, dynamic> json) =>
      _$BookOverviewResponseFromJson(json);
} 