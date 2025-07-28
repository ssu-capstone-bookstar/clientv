// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_recommend_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YoutubeRecommendResponse _$YoutubeRecommendResponseFromJson(
        Map<String, dynamic> json) =>
    _YoutubeRecommendResponse(
      videoId: json['videoId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      channelName: json['channelName'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
    );

Map<String, dynamic> _$YoutubeRecommendResponseToJson(
        _YoutubeRecommendResponse instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'channelName': instance.channelName,
      'thumbnailUrl': instance.thumbnailUrl,
    };
