import 'package:freezed_annotation/freezed_annotation.dart';

part 'minimum_member_profile.freezed.dart';
part 'minimum_member_profile.g.dart';

@freezed
abstract class MinimumMemberProfile with _$MinimumMemberProfile {
  const factory MinimumMemberProfile({
    @Default(0) int memberId,
    @Default('') String nickName,
    @Default('') String profileImage,
  }) = _MinimumMemberProfile;

  factory MinimumMemberProfile.fromJson(Map<String, dynamic> json) =>
      _$MinimumMemberProfileFromJson(json);
}
