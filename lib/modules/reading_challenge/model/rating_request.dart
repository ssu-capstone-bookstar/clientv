import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_request.freezed.dart';
part 'rating_request.g.dart';

@freezed
abstract class RatingRequest with _$RatingRequest {
  const factory RatingRequest({
    @Default(0) int bookId,
    @Default(0) int rating,
    @Default(0) int recommendationScore,
  }) = _RatingRequest;

  factory RatingRequest.fromJson(Map<String, dynamic> json) => _$RatingRequestFromJson(json);
}
