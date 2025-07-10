// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_progress_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChallengeProgressRequest _$ChallengeProgressRequestFromJson(
        Map<String, dynamic> json) =>
    _ChallengeProgressRequest(
      startPage: (json['startPage'] as num).toInt(),
      endPage: (json['endPage'] as num).toInt(),
    );

Map<String, dynamic> _$ChallengeProgressRequestToJson(
        _ChallengeProgressRequest instance) =>
    <String, dynamic>{
      'startPage': instance.startPage,
      'endPage': instance.endPage,
    };
