// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_diary_thumbnail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikedDiaryThumbnailResponse _$LikedDiaryThumbnailResponseFromJson(
        Map<String, dynamic> json) =>
    _LikedDiaryThumbnailResponse(
      statusResponse: StatusResponse.fromJson(
          json['statusResponse'] as Map<String, dynamic>),
      data: LikedDiaryThumbnailData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikedDiaryThumbnailResponseToJson(
        _LikedDiaryThumbnailResponse instance) =>
    <String, dynamic>{
      'statusResponse': instance.statusResponse,
      'data': instance.data,
    };

_StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) =>
    _StatusResponse(
      resultCode: json['resultCode'] as String,
      resultMessage: json['resultMessage'] as String,
    );

Map<String, dynamic> _$StatusResponseToJson(_StatusResponse instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
    };

_LikedDiaryThumbnailData _$LikedDiaryThumbnailDataFromJson(
        Map<String, dynamic> json) =>
    _LikedDiaryThumbnailData(
      data: (json['data'] as List<dynamic>)
          .map((e) => LikedDiaryThumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: (json['nextCursor'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$LikedDiaryThumbnailDataToJson(
        _LikedDiaryThumbnailData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'nextCursor': instance.nextCursor,
      'hasNext': instance.hasNext,
    };

_LikedDiaryThumbnail _$LikedDiaryThumbnailFromJson(Map<String, dynamic> json) =>
    _LikedDiaryThumbnail(
      diaryLikeId: (json['diaryLikeId'] as num).toInt(),
      diaryId: (json['diaryId'] as num).toInt(),
      firstImage:
          DiaryImage.fromJson(json['firstImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikedDiaryThumbnailToJson(
        _LikedDiaryThumbnail instance) =>
    <String, dynamic>{
      'diaryLikeId': instance.diaryLikeId,
      'diaryId': instance.diaryId,
      'firstImage': instance.firstImage,
    };

_DiaryImage _$DiaryImageFromJson(Map<String, dynamic> json) => _DiaryImage(
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$DiaryImageToJson(_DiaryImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };
