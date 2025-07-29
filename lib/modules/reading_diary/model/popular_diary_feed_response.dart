import 'package:freezed_annotation/freezed_annotation.dart';
import 'diary_feed_response.dart';

part 'popular_diary_feed_response.freezed.dart';
part 'popular_diary_feed_response.g.dart';

@freezed
abstract class PopularDiaryFeedResponse with _$PopularDiaryFeedResponse {
  const factory PopularDiaryFeedResponse({
    required List<DiaryFeedResponse> content,
    required int page,
    required int size,
    required bool hasNext,
  }) = _PopularDiaryFeedResponse;

  factory PopularDiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularDiaryFeedResponseFromJson(json);
}
