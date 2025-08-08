// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  String get providerType;
  String get email;
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
            (identical(other.providerType, providerType) ||
                other.providerType == providerType) &&
            (identical(other.email, email) || other.email == email) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      nickName,
      profileImage,
      providerType,
      email,
      accessToken,
      refreshToken,
      accessTokenExpiration,
      refreshTokenExpiration);

  @override
  String toString() {
    return 'AuthResponse(memberId: $memberId, nickName: $nickName, profileImage: $profileImage, providerType: $providerType, email: $email, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiration: $accessTokenExpiration, refreshTokenExpiration: $refreshTokenExpiration)';
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
      String providerType,
      String email,
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
    Object? providerType = null,
    Object? email = null,
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
      providerType: null == providerType
          ? _self.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int memberId,
            String nickName,
            String profileImage,
            String providerType,
            String email,
            String accessToken,
            String refreshToken,
            DateTime accessTokenExpiration,
            DateTime refreshTokenExpiration)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(
            _that.memberId,
            _that.nickName,
            _that.profileImage,
            _that.providerType,
            _that.email,
            _that.accessToken,
            _that.refreshToken,
            _that.accessTokenExpiration,
            _that.refreshTokenExpiration);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int memberId,
            String nickName,
            String profileImage,
            String providerType,
            String email,
            String accessToken,
            String refreshToken,
            DateTime accessTokenExpiration,
            DateTime refreshTokenExpiration)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse():
        return $default(
            _that.memberId,
            _that.nickName,
            _that.profileImage,
            _that.providerType,
            _that.email,
            _that.accessToken,
            _that.refreshToken,
            _that.accessTokenExpiration,
            _that.refreshTokenExpiration);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int memberId,
            String nickName,
            String profileImage,
            String providerType,
            String email,
            String accessToken,
            String refreshToken,
            DateTime accessTokenExpiration,
            DateTime refreshTokenExpiration)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(
            _that.memberId,
            _that.nickName,
            _that.profileImage,
            _that.providerType,
            _that.email,
            _that.accessToken,
            _that.refreshToken,
            _that.accessTokenExpiration,
            _that.refreshTokenExpiration);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthResponse implements AuthResponse {
  const _AuthResponse(
      {required this.memberId,
      this.nickName = '',
      this.profileImage = '',
      this.providerType = '',
      this.email = '',
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
  @JsonKey()
  final String providerType;
  @override
  @JsonKey()
  final String email;
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
            (identical(other.providerType, providerType) ||
                other.providerType == providerType) &&
            (identical(other.email, email) || other.email == email) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      nickName,
      profileImage,
      providerType,
      email,
      accessToken,
      refreshToken,
      accessTokenExpiration,
      refreshTokenExpiration);

  @override
  String toString() {
    return 'AuthResponse(memberId: $memberId, nickName: $nickName, profileImage: $profileImage, providerType: $providerType, email: $email, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiration: $accessTokenExpiration, refreshTokenExpiration: $refreshTokenExpiration)';
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
      String providerType,
      String email,
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
    Object? providerType = null,
    Object? email = null,
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
      providerType: null == providerType
          ? _self.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
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
