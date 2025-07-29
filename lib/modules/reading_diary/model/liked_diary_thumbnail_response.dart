import 'package:freezed_annotation/freezed_annotation.dart';

part 'liked_diary_thumbnail_response.freezed.dart';
part 'liked_diary_thumbnail_response.g.dart';

@freezed
abstract class LikedDiaryThumbnailResponse with _$LikedDiaryThumbnailResponse {
  const factory LikedDiaryThumbnailResponse({
    required StatusResponse statusResponse,
    required LikedDiaryThumbnailData data,
  }) = _LikedDiaryThumbnailResponse;

  factory LikedDiaryThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryThumbnailResponseFromJson(json);
}

@freezed
abstract class StatusResponse with _$StatusResponse {
  const factory StatusResponse({
    required String resultCode,
    required String resultMessage,
  }) = _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);
}

@freezed
abstract class LikedDiaryThumbnailData with _$LikedDiaryThumbnailData {
  const factory LikedDiaryThumbnailData({
    required List<LikedDiaryThumbnail> data,
    required int nextCursor,
    required bool hasNext,
  }) = _LikedDiaryThumbnailData;

  factory LikedDiaryThumbnailData.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryThumbnailDataFromJson(json);
}

@freezed
abstract class LikedDiaryThumbnail with _$LikedDiaryThumbnail {
  const factory LikedDiaryThumbnail({
    required int diaryLikeId,
    required int diaryId,
    required DiaryImage firstImage,
  }) = _LikedDiaryThumbnail;

  factory LikedDiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryThumbnailFromJson(json);
}

@freezed
abstract class DiaryImage with _$DiaryImage {
  const factory DiaryImage({
    required String imageUrl,
  }) = _DiaryImage;

  factory DiaryImage.fromJson(Map<String, dynamic> json) =>
      _$DiaryImageFromJson(json);
}
