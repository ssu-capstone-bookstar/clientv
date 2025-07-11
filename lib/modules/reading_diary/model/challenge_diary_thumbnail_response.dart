import 'package:freezed_annotation/freezed_annotation.dart';

import 'diary_thumbnail_response.dart';

part 'challenge_diary_thumbnail_response.freezed.dart';
part 'challenge_diary_thumbnail_response.g.dart';

@freezed
abstract class ChallengeDiaryThumbnailResponse
    with _$ChallengeDiaryThumbnailResponse {
  const factory ChallengeDiaryThumbnailResponse({
    required int diaryId,
    Thumbnail? firstImage,
    @Default(0.0) double score,
  }) = _ChallengeDiaryThumbnailResponse;

  factory ChallengeDiaryThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeDiaryThumbnailResponseFromJson(json);
}
