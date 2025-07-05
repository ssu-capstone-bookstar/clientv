// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChallengeResponse _$ChallengeResponseFromJson(Map<String, dynamic> json) =>
    _ChallengeResponse(
      challengeId: (json['challengeId'] as num?)?.toInt() ?? 0,
      book: BookSummary.fromJson(json['book'] as Map<String, dynamic>),
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      progressPercent: (json['progressPercent'] as num?)?.toDouble() ?? 0.0,
      completed: json['completed'] as bool? ?? false,
      abandoned: json['abandoned'] as bool? ?? false,
      lastReadAt: json['lastReadAt'] == null
          ? null
          : DateTime.parse(json['lastReadAt'] as String),
    );

Map<String, dynamic> _$ChallengeResponseToJson(_ChallengeResponse instance) =>
    <String, dynamic>{
      'challengeId': instance.challengeId,
      'book': instance.book,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'progressPercent': instance.progressPercent,
      'completed': instance.completed,
      'abandoned': instance.abandoned,
      'lastReadAt': instance.lastReadAt?.toIso8601String(),
    };
