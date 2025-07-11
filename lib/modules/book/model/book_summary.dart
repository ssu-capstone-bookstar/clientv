import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_summary.freezed.dart';
part 'book_summary.g.dart';

@freezed
abstract class BookSummary with _$BookSummary {
  const factory BookSummary({
    @JsonKey(name: 'bookId') @Default(0) int id,
    @Default('') String title,
    @Default('') String author,
    @Default('') String thumbnailUrl,
  }) = _BookSummary;

  factory BookSummary.fromJson(Map<String, dynamic> json) =>
      _$BookSummaryFromJson(json);
}
