// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_challenge_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReadingChallengeRequest _$ReadingChallengeRequestFromJson(
        Map<String, dynamic> json) =>
    _ReadingChallengeRequest(
      bookId: (json['bookId'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$ReadingChallengeRequestToJson(
        _ReadingChallengeRequest instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'totalPages': instance.totalPages,
    };
