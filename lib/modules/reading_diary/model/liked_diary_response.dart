import 'package:freezed_annotation/freezed_annotation.dart';

part 'liked_diary_response.freezed.dart';
part 'liked_diary_response.g.dart';

@freezed
abstract class LikedDiaryResponse with _$LikedDiaryResponse {
  const factory LikedDiaryResponse({
    @Default(0) int diaryId,
    @Default(0) int likeId,
    @Default(0) int bookId,
    @Default(0) int readingDiaryId,
    @Default('') String thumbnailImageUrl,
  }) = _LikedDiaryResponse;

  factory LikedDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryResponseFromJson(json);
}
