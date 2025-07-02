// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileResponse {
  int get memberId;
  String get nickName;
  String get profileImageUrl;
  String get introduction;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      _$ProfileResponseCopyWithImpl<ProfileResponse>(
          this as ProfileResponse, _$identity);

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, memberId, nickName, profileImageUrl, introduction);

  @override
  String toString() {
    return 'ProfileResponse(memberId: $memberId, nickName: $nickName, profileImageUrl: $profileImageUrl, introduction: $introduction)';
  }
}

/// @nodoc
abstract mixin class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) _then) =
      _$ProfileResponseCopyWithImpl;
  @useResult
  $Res call(
      {int memberId,
      String nickName,
      String profileImageUrl,
      String introduction});
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._self, this._then);

  final ProfileResponse _self;
  final $Res Function(ProfileResponse) _then;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImageUrl = null,
    Object? introduction = null,
  }) {
    return _then(_self.copyWith(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileResponse implements ProfileResponse {
  const _ProfileResponse(
      {required this.memberId,
      required this.nickName,
      required this.profileImageUrl,
      required this.introduction});
  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  @override
  final int memberId;
  @override
  final String nickName;
  @override
  final String profileImageUrl;
  @override
  final String introduction;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileResponseCopyWith<_ProfileResponse> get copyWith =>
      __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, memberId, nickName, profileImageUrl, introduction);

  @override
  String toString() {
    return 'ProfileResponse(memberId: $memberId, nickName: $nickName, profileImageUrl: $profileImageUrl, introduction: $introduction)';
  }
}

/// @nodoc
abstract mixin class _$ProfileResponseCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(
          _ProfileResponse value, $Res Function(_ProfileResponse) _then) =
      __$ProfileResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int memberId,
      String nickName,
      String profileImageUrl,
      String introduction});
}

/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(this._self, this._then);

  final _ProfileResponse _self;
  final $Res Function(_ProfileResponse) _then;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImageUrl = null,
    Object? introduction = null,
  }) {
    return _then(_ProfileResponse(
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
    ));
  }
}

// dart format on
