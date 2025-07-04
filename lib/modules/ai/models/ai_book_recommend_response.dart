import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_book_recommend_response.freezed.dart';
part 'ai_book_recommend_response.g.dart';

@Freezed()
abstract class AiBookRecommendResponse with _$AiBookRecommendResponse {
  const factory AiBookRecommendResponse({
    @Default(0) int id,
    @Default(0) int aladinBookId,
    @Default('') String title,
    @Default('') String author,
    @Default('') String isbn,
    @Default('') String isbn13,
    @Default('') String categoryName,
    @Default('') String description,
    @Default('') String publisher,
    @Default('') String publishedDate,
    @Default('') String imageUrl,
    @Default(false) bool isLiked,
    DateTime? createdDate,
    DateTime? updatedDate,
  }) = _AiBookRecommendResponse;

  factory AiBookRecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$AiBookRecommendResponseFromJson(json);
}
