// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChallengeDetailResponse _$ChallengeDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _ChallengeDetailResponse(
      totalPages: (json['totalPages'] as num).toInt(),
      challengeId: json['challengeId'] as String,
      lastReadPage: (json['lastReadPage'] as num).toInt(),
    );

Map<String, dynamic> _$ChallengeDetailResponseToJson(
        _ChallengeDetailResponse instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'challengeId': instance.challengeId,
      'lastReadPage': instance.lastReadPage,
    };
