// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Policy _$PolicyFromJson(Map<String, dynamic> json) => _Policy(
      serviceUsingAgree: $enumDecodeNullable(
              _$PolicyAgreeEnumMap, json['serviceUsingAgree']) ??
          PolicyAgree.N,
      personalInformationAgree: $enumDecodeNullable(
              _$PolicyAgreeEnumMap, json['personalInformationAgree']) ??
          PolicyAgree.N,
      marketingAgree:
          $enumDecodeNullable(_$PolicyAgreeEnumMap, json['marketingAgree']) ??
              PolicyAgree.N,
    );

Map<String, dynamic> _$PolicyToJson(_Policy instance) => <String, dynamic>{
      'serviceUsingAgree': _$PolicyAgreeEnumMap[instance.serviceUsingAgree]!,
      'personalInformationAgree':
          _$PolicyAgreeEnumMap[instance.personalInformationAgree]!,
      'marketingAgree': _$PolicyAgreeEnumMap[instance.marketingAgree]!,
    };

const _$PolicyAgreeEnumMap = {
  PolicyAgree.Y: 'Y',
  PolicyAgree.N: 'N',
};
