// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResponse {
  int get memberId;
  String get nickName;
  String get profileImage;
  String get accessToken;
  String get refreshToken;
  DateTime get accessTokenExpiration;
  DateTime get refreshTokenExpiration;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      _$AuthResponseCopyWithImpl<AuthResponse>(
          this as AuthResponse, _$identity);

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiration, accessTokenExpiration) ||
                other.accessTokenExpiration == accessTokenExpiration) &&
            (identical(other.refreshTokenExpiration, refreshTokenExpiration) ||
                other.refreshTokenExpiration == refreshTokenExpiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, nickName, profileImage,
      accessToken, refreshToken, accessTokenExpiration, refreshTokenExpiration);

  @override
  String toString() {
    return 'AuthResponse(memberId: $memberId, nickName: $nickName, profileImage: $profileImage, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiration: $accessTokenExpiration, refreshTokenExpiration: $refreshTokenExpiration)';
  }
}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) _then) =
      _$AuthResponseCopyWithImpl;
  @useResult
  $Res call(
      {int memberId,
      String nickName,
      String profileImage,
      String accessToken,
      String refreshToken,
      DateTime accessTokenExpiration,
      DateTime refreshTokenExpiration});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImage = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpiration = null,
    Object? refreshTokenExpiration = null,
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
      profileImage: null == profileImage
          ? _self.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpiration: null == accessTokenExpiration
          ? _self.accessTokenExpiration
          : accessTokenExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshTokenExpiration: null == refreshTokenExpiration
          ? _self.refreshTokenExpiration
          : refreshTokenExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AuthResponse implements AuthResponse {
  const _AuthResponse(
      {required this.memberId,
      this.nickName = '',
      this.profileImage = '',
      required this.accessToken,
      required this.refreshToken,
      required this.accessTokenExpiration,
      required this.refreshTokenExpiration});
  factory _AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  @override
  final int memberId;
  @override
  @JsonKey()
  final String nickName;
  @override
  @JsonKey()
  final String profileImage;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final DateTime accessTokenExpiration;
  @override
  final DateTime refreshTokenExpiration;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiration, accessTokenExpiration) ||
                other.accessTokenExpiration == accessTokenExpiration) &&
            (identical(other.refreshTokenExpiration, refreshTokenExpiration) ||
                other.refreshTokenExpiration == refreshTokenExpiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, nickName, profileImage,
      accessToken, refreshToken, accessTokenExpiration, refreshTokenExpiration);

  @override
  String toString() {
    return 'AuthResponse(memberId: $memberId, nickName: $nickName, profileImage: $profileImage, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiration: $accessTokenExpiration, refreshTokenExpiration: $refreshTokenExpiration)';
  }
}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(
          _AuthResponse value, $Res Function(_AuthResponse) _then) =
      __$AuthResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int memberId,
      String nickName,
      String profileImage,
      String accessToken,
      String refreshToken,
      DateTime accessTokenExpiration,
      DateTime refreshTokenExpiration});
}

/// @nodoc
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImage = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpiration = null,
    Object? refreshTokenExpiration = null,
  }) {
    return _then(_AuthResponse(
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _self.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpiration: null == accessTokenExpiration
          ? _self.accessTokenExpiration
          : accessTokenExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshTokenExpiration: null == refreshTokenExpiration
          ? _self.refreshTokenExpiration
          : refreshTokenExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
