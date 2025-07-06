import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_with_counts.freezed.dart';
part 'profile_with_counts.g.dart';

@freezed
abstract class ProfileWithCounts with _$ProfileWithCounts {
  const factory ProfileWithCounts({
    @Default(0) int id,
    @Default(0) int memberId,
    @Default('') String nickName,
    @Default('') String profileImageUrl,
    @Default('') String introduction,
    @Default(0) int followingCount,
    @Default(0) int followerCount,
    @Default(0) int diaryCount,
  }) = _ProfileWithCounts;

  factory ProfileWithCounts.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithCountsFromJson(json);
}
