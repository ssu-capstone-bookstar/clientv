// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_timer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodayTimerResponse _$TodayTimerResponseFromJson(Map<String, dynamic> json) =>
    _TodayTimerResponse(
      totalSeconds: (json['totalSeconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TodayTimerResponseToJson(_TodayTimerResponse instance) =>
    <String, dynamic>{
      'totalSeconds': instance.totalSeconds,
    };
