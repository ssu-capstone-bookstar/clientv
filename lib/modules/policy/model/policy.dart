import 'package:json_annotation/json_annotation.dart';

part 'policy.g.dart';

@JsonSerializable()
class Policy {
  final String serviceUsingAgree;
  final String personalInformationAgree;
  final String marketingAgree;

  Policy({
    required this.serviceUsingAgree,
    required this.personalInformationAgree,
    required this.marketingAgree,
  });

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);

  Map<String, dynamic> toJson() => _$PolicyToJson(this);
}
