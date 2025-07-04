// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_rating_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookRatingRequest _$BookRatingRequestFromJson(Map<String, dynamic> json) =>
    _BookRatingRequest(
      rating: (json['rating'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$BookRatingRequestToJson(_BookRatingRequest instance) =>
    <String, dynamic>{
      'rating': instance.rating,
    };
