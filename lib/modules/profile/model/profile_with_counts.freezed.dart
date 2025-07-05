// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_with_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileWithCounts {
  int get id;
  int get memberId;
  String get nickName;
  String get profileImageUrl;
  String get introduction;
  int get followingCount;
  int get followerCount;
  int get diaryCount;

  /// Create a copy of ProfileWithCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileWithCountsCopyWith<ProfileWithCounts> get copyWith =>
      _$ProfileWithCountsCopyWithImpl<ProfileWithCounts>(
          this as ProfileWithCounts, _$identity);

  /// Serializes this ProfileWithCounts to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileWithCounts &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.diaryCount, diaryCount) ||
                other.diaryCount == diaryCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberId, nickName,
      profileImageUrl, introduction, followingCount, followerCount, diaryCount);

  @override
  String toString() {
    return 'ProfileWithCounts(id: $id, memberId: $memberId, nickName: $nickName, profileImageUrl: $profileImageUrl, introduction: $introduction, followingCount: $followingCount, followerCount: $followerCount, diaryCount: $diaryCount)';
  }
}

/// @nodoc
abstract mixin class $ProfileWithCountsCopyWith<$Res> {
  factory $ProfileWithCountsCopyWith(
          ProfileWithCounts value, $Res Function(ProfileWithCounts) _then) =
      _$ProfileWithCountsCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int memberId,
      String nickName,
      String profileImageUrl,
      String introduction,
      int followingCount,
      int followerCount,
      int diaryCount});
}

/// @nodoc
class _$ProfileWithCountsCopyWithImpl<$Res>
    implements $ProfileWithCountsCopyWith<$Res> {
  _$ProfileWithCountsCopyWithImpl(this._self, this._then);

  final ProfileWithCounts _self;
  final $Res Function(ProfileWithCounts) _then;

  /// Create a copy of ProfileWithCounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImageUrl = null,
    Object? introduction = null,
    Object? followingCount = null,
    Object? followerCount = null,
    Object? diaryCount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      followingCount: null == followingCount
          ? _self.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      followerCount: null == followerCount
          ? _self.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      diaryCount: null == diaryCount
          ? _self.diaryCount
          : diaryCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileWithCounts implements ProfileWithCounts {
  const _ProfileWithCounts(
      {this.id = 0,
      required this.memberId,
      required this.nickName,
      required this.profileImageUrl,
      this.introduction = '',
      required this.followingCount,
      required this.followerCount,
      required this.diaryCount});
  factory _ProfileWithCounts.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithCountsFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final int memberId;
  @override
  final String nickName;
  @override
  final String profileImageUrl;
  @override
  @JsonKey()
  final String introduction;
  @override
  final int followingCount;
  @override
  final int followerCount;
  @override
  final int diaryCount;

  /// Create a copy of ProfileWithCounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileWithCountsCopyWith<_ProfileWithCounts> get copyWith =>
      __$ProfileWithCountsCopyWithImpl<_ProfileWithCounts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileWithCountsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileWithCounts &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.diaryCount, diaryCount) ||
                other.diaryCount == diaryCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberId, nickName,
      profileImageUrl, introduction, followingCount, followerCount, diaryCount);

  @override
  String toString() {
    return 'ProfileWithCounts(id: $id, memberId: $memberId, nickName: $nickName, profileImageUrl: $profileImageUrl, introduction: $introduction, followingCount: $followingCount, followerCount: $followerCount, diaryCount: $diaryCount)';
  }
}

/// @nodoc
abstract mixin class _$ProfileWithCountsCopyWith<$Res>
    implements $ProfileWithCountsCopyWith<$Res> {
  factory _$ProfileWithCountsCopyWith(
          _ProfileWithCounts value, $Res Function(_ProfileWithCounts) _then) =
      __$ProfileWithCountsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int memberId,
      String nickName,
      String profileImageUrl,
      String introduction,
      int followingCount,
      int followerCount,
      int diaryCount});
}

/// @nodoc
class __$ProfileWithCountsCopyWithImpl<$Res>
    implements _$ProfileWithCountsCopyWith<$Res> {
  __$ProfileWithCountsCopyWithImpl(this._self, this._then);

  final _ProfileWithCounts _self;
  final $Res Function(_ProfileWithCounts) _then;

  /// Create a copy of ProfileWithCounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImageUrl = null,
    Object? introduction = null,
    Object? followingCount = null,
    Object? followerCount = null,
    Object? diaryCount = null,
  }) {
    return _then(_ProfileWithCounts(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      followingCount: null == followingCount
          ? _self.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      followerCount: null == followerCount
          ? _self.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      diaryCount: null == diaryCount
          ? _self.diaryCount
          : diaryCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
