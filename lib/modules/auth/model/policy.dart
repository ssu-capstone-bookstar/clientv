import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy.freezed.dart';
part 'policy.g.dart';

enum PolicyAgree {
  Y,
  N
}

enum PolicyType {
  serviceUsing,
  personalInformation,
  marketing,
}

@freezed
abstract class Policy with _$Policy {
  const factory Policy({
    @Default(PolicyAgree.N) PolicyAgree serviceUsingAgree,
    @Default(PolicyAgree.N) PolicyAgree personalInformationAgree,
    @Default(PolicyAgree.N) PolicyAgree marketingAgree,
  }) = _Policy;

  factory Policy.fromJson(Map<String, dynamic> json) =>
      _$PolicyFromJson(json);
}
