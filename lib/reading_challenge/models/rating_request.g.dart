// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RatingRequest _$RatingRequestFromJson(Map<String, dynamic> json) =>
    _RatingRequest(
      bookId: (json['bookId'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      recommendationScore: (json['recommendationScore'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RatingRequestToJson(_RatingRequest instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'rating': instance.rating,
      'recommendationScore': instance.recommendationScore,
    };
