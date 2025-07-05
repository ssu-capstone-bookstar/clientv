import 'package:freezed_annotation/freezed_annotation.dart';

import 'diary_image_response.dart';

part 'diary_response.freezed.dart';
part 'diary_response.g.dart';

@freezed
abstract class DiaryResponse with _$DiaryResponse {
  const factory DiaryResponse({
    required int diaryId,
    @Default(0) int startPage,
    @Default(0) int endPage,
    @Default('') String content,
    @Default([]) List<DiaryImageResponse> images,
    @Default('') String decoration,
    required DateTime createdAt,
  }) = _DiaryResponse;

  factory DiaryResponse.fromJson(Map<String, dynamic> json) => _$DiaryResponseFromJson(json);
}
