import 'package:freezed_annotation/freezed_annotation.dart';

part 'bestseller_book_response.freezed.dart';
part 'bestseller_book_response.g.dart';

@freezed
abstract class BestsellerBookResponse with _$BestsellerBookResponse {
  const factory BestsellerBookResponse({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String author,
    @Default('') String bookCover,
    @Default('') String pubDate,
  }) = _BestsellerBookResponse;

  factory BestsellerBookResponse.fromJson(Map<String, dynamic> json) =>
      _$BestsellerBookResponseFromJson(json);
} 