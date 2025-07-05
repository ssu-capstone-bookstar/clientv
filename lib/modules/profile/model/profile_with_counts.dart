import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_with_counts.freezed.dart';
part 'profile_with_counts.g.dart';

@freezed
abstract class ProfileWithCounts with _$ProfileWithCounts {
  const factory ProfileWithCounts({
    @Default(0) int id,
    required int memberId,
    required String nickName,
    required String profileImageUrl,
    required String introduction,
    required int followingCount,
    required int followerCount,
    required int diaryCount,
  }) = _ProfileWithCounts;

  factory ProfileWithCounts.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithCountsFromJson(json);
}
