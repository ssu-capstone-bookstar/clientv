// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowResponse {
  int get id;
  int get memberId;
  String get nickname;
  String get profileImageUrl;

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowResponseCopyWith<FollowResponse> get copyWith =>
      _$FollowResponseCopyWithImpl<FollowResponse>(
          this as FollowResponse, _$identity);

  /// Serializes this FollowResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, memberId, nickname, profileImageUrl);

  @override
  String toString() {
    return 'FollowResponse(id: $id, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
  }
}

/// @nodoc
abstract mixin class $FollowResponseCopyWith<$Res> {
  factory $FollowResponseCopyWith(
          FollowResponse value, $Res Function(FollowResponse) _then) =
      _$FollowResponseCopyWithImpl;
  @useResult
  $Res call({int id, int memberId, String nickname, String profileImageUrl});
}

/// @nodoc
class _$FollowResponseCopyWithImpl<$Res>
    implements $FollowResponseCopyWith<$Res> {
  _$FollowResponseCopyWithImpl(this._self, this._then);

  final FollowResponse _self;
  final $Res Function(FollowResponse) _then;

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? nickname = null,
    Object? profileImageUrl = null,
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
      nickname: null == nickname
          ? _self.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FollowResponse implements FollowResponse {
  const _FollowResponse(
      {this.id = 0,
      required this.memberId,
      required this.nickname,
      required this.profileImageUrl});
  factory _FollowResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowResponseFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final int memberId;
  @override
  final String nickname;
  @override
  final String profileImageUrl;

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowResponseCopyWith<_FollowResponse> get copyWith =>
      __$FollowResponseCopyWithImpl<_FollowResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FollowResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, memberId, nickname, profileImageUrl);

  @override
  String toString() {
    return 'FollowResponse(id: $id, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$FollowResponseCopyWith<$Res>
    implements $FollowResponseCopyWith<$Res> {
  factory _$FollowResponseCopyWith(
          _FollowResponse value, $Res Function(_FollowResponse) _then) =
      __$FollowResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int id, int memberId, String nickname, String profileImageUrl});
}

/// @nodoc
class __$FollowResponseCopyWithImpl<$Res>
    implements _$FollowResponseCopyWith<$Res> {
  __$FollowResponseCopyWithImpl(this._self, this._then);

  final _FollowResponse _self;
  final $Res Function(_FollowResponse) _then;

  /// Create a copy of FollowResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? nickname = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_FollowResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _self.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
