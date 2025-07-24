import 'package:freezed_annotation/freezed_annotation.dart';

import 'diary_image_response.dart';

part 'diary_response.freezed.dart';
part 'diary_response.g.dart';

@freezed
abstract class DiaryResponse with _$DiaryResponse {
  const factory DiaryResponse({
    @Default(-1) int diaryId,
    @Default('') String content,
    @Default('') String createdDate,
    @Default(-1) int memberId,
    @Default('') String nickname,
    @Default('') String profileImageUrl,
    @Default(-1) int bookId,
    @Default('') String bookTitle,
    @Default('') String bookAuthor,
    @Default([]) List<DiaryImageResponse> images,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int viewCount,
    @Default(false) bool liked,
  }) = _DiaryResponse;

  factory DiaryResponse.fromJson(Map<String, dynamic> json) => _$DiaryResponseFromJson(json);
}
