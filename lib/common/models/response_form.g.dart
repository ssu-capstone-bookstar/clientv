// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseForm<T> _$ResponseFormFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _ResponseForm<T>(
      status: json['status'] as String? ?? '',
      statusResponse: StatusResponse.fromJson(
          json['statusResponse'] as Map<String, dynamic>),
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$ResponseFormToJson<T>(
  _ResponseForm<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'statusResponse': instance.statusResponse,
      'data': toJsonT(instance.data),
    };
