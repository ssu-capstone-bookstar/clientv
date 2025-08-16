// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Policy _$PolicyFromJson(Map<String, dynamic> json) => Policy(
      serviceUsingAgree: json['serviceUsingAgree'] as String,
      personalInformationAgree: json['personalInformationAgree'] as String,
      marketingAgree: json['marketingAgree'] as String,
    );

Map<String, dynamic> _$PolicyToJson(Policy instance) => <String, dynamic>{
      'serviceUsingAgree': instance.serviceUsingAgree,
      'personalInformationAgree': instance.personalInformationAgree,
      'marketingAgree': instance.marketingAgree,
    };
