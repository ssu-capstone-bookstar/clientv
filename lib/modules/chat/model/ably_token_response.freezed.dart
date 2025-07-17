// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ably_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AblyTokenResponse {
  String get token;

  /// Create a copy of AblyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AblyTokenResponseCopyWith<AblyTokenResponse> get copyWith =>
      _$AblyTokenResponseCopyWithImpl<AblyTokenResponse>(
          this as AblyTokenResponse, _$identity);

  /// Serializes this AblyTokenResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AblyTokenResponse &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'AblyTokenResponse(token: $token)';
  }
}

/// @nodoc
abstract mixin class $AblyTokenResponseCopyWith<$Res> {
  factory $AblyTokenResponseCopyWith(
          AblyTokenResponse value, $Res Function(AblyTokenResponse) _then) =
      _$AblyTokenResponseCopyWithImpl;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AblyTokenResponseCopyWithImpl<$Res>
    implements $AblyTokenResponseCopyWith<$Res> {
  _$AblyTokenResponseCopyWithImpl(this._self, this._then);

  final AblyTokenResponse _self;
  final $Res Function(AblyTokenResponse) _then;

  /// Create a copy of AblyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AblyTokenResponse].
extension AblyTokenResponsePatterns on AblyTokenResponse {
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
    TResult Function(_AblyTokenResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AblyTokenResponse() when $default != null:
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
    TResult Function(_AblyTokenResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AblyTokenResponse():
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
    TResult? Function(_AblyTokenResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AblyTokenResponse() when $default != null:
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
    TResult Function(String token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AblyTokenResponse() when $default != null:
        return $default(_that.token);
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
    TResult Function(String token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AblyTokenResponse():
        return $default(_that.token);
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
    TResult? Function(String token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AblyTokenResponse() when $default != null:
        return $default(_that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AblyTokenResponse implements AblyTokenResponse {
  const _AblyTokenResponse({this.token = ''});
  factory _AblyTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AblyTokenResponseFromJson(json);

  @override
  @JsonKey()
  final String token;

  /// Create a copy of AblyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AblyTokenResponseCopyWith<_AblyTokenResponse> get copyWith =>
      __$AblyTokenResponseCopyWithImpl<_AblyTokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AblyTokenResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AblyTokenResponse &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'AblyTokenResponse(token: $token)';
  }
}

/// @nodoc
abstract mixin class _$AblyTokenResponseCopyWith<$Res>
    implements $AblyTokenResponseCopyWith<$Res> {
  factory _$AblyTokenResponseCopyWith(
          _AblyTokenResponse value, $Res Function(_AblyTokenResponse) _then) =
      __$AblyTokenResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$AblyTokenResponseCopyWithImpl<$Res>
    implements _$AblyTokenResponseCopyWith<$Res> {
  __$AblyTokenResponseCopyWithImpl(this._self, this._then);

  final _AblyTokenResponse _self;
  final $Res Function(_AblyTokenResponse) _then;

  /// Create a copy of AblyTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
  }) {
    return _then(_AblyTokenResponse(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
