// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_participant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatParticipantResponse _$ChatParticipantResponseFromJson(
        Map<String, dynamic> json) =>
    _ChatParticipantResponse(
      totalParticipantCount:
          (json['totalParticipantCount'] as num?)?.toInt() ?? 0,
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => ChatParticipantItemResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChatParticipantResponseToJson(
        _ChatParticipantResponse instance) =>
    <String, dynamic>{
      'totalParticipantCount': instance.totalParticipantCount,
      'participants': instance.participants,
    };
