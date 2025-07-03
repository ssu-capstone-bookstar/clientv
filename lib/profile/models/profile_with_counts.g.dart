// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_with_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileWithCounts _$ProfileWithCountsFromJson(Map<String, dynamic> json) =>
    _ProfileWithCounts(
      id: (json['id'] as num?)?.toInt() ?? 0,
      memberId: (json['memberId'] as num).toInt(),
      nickName: json['nickName'] as String,
      profileImageUrl: json['profileImageUrl'] as String? ?? '',
      introduction: json['introduction'] as String? ?? '',
      followingCount: (json['followingCount'] as num).toInt(),
      followerCount: (json['followerCount'] as num).toInt(),
      diaryCount: (json['diaryCount'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileWithCountsToJson(_ProfileWithCounts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'nickName': instance.nickName,
      'profileImageUrl': instance.profileImageUrl,
      'introduction': instance.introduction,
      'followingCount': instance.followingCount,
      'followerCount': instance.followerCount,
      'diaryCount': instance.diaryCount,
    };
