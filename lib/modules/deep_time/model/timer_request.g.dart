// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimerRequest _$TimerRequestFromJson(Map<String, dynamic> json) =>
    _TimerRequest(
      seconds: (json['seconds'] as num).toInt(),
    );

Map<String, dynamic> _$TimerRequestToJson(_TimerRequest instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
    };
