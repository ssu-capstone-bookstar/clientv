import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_recommend_response.freezed.dart';
part 'youtube_recommend_response.g.dart';

@freezed
abstract class YoutubeRecommendResponse with _$YoutubeRecommendResponse {
  const factory YoutubeRecommendResponse({
    @Default('') String videoId,
    @Default('') String title,
    @Default('') String channelName,
    @Default('') String thumbnailUrl,
  }) = _YoutubeRecommendResponse;

  factory YoutubeRecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$YoutubeRecommendResponseFromJson(json);
}
