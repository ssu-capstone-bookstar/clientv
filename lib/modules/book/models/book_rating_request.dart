import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_rating_request.freezed.dart';
part 'book_rating_request.g.dart';

@freezed
abstract class BookRatingRequest with _$BookRatingRequest {
  const factory BookRatingRequest({
    @Default(1) double rating,
  }) = _BookRatingRequest;

  factory BookRatingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookRatingRequestFromJson(json);
}
