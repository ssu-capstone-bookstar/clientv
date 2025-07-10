// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_progress_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChallengeProgressResponse {
  int get progressId;

  /// Create a copy of ChallengeProgressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeProgressResponseCopyWith<ChallengeProgressResponse> get copyWith =>
      _$ChallengeProgressResponseCopyWithImpl<ChallengeProgressResponse>(
          this as ChallengeProgressResponse, _$identity);

  /// Serializes this ChallengeProgressResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChallengeProgressResponse &&
            (identical(other.progressId, progressId) ||
                other.progressId == progressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, progressId);

  @override
  String toString() {
    return 'ChallengeProgressResponse(progressId: $progressId)';
  }
}

/// @nodoc
abstract mixin class $ChallengeProgressResponseCopyWith<$Res> {
  factory $ChallengeProgressResponseCopyWith(ChallengeProgressResponse value,
          $Res Function(ChallengeProgressResponse) _then) =
      _$ChallengeProgressResponseCopyWithImpl;
  @useResult
  $Res call({int progressId});
}

/// @nodoc
class _$ChallengeProgressResponseCopyWithImpl<$Res>
    implements $ChallengeProgressResponseCopyWith<$Res> {
  _$ChallengeProgressResponseCopyWithImpl(this._self, this._then);

  final ChallengeProgressResponse _self;
  final $Res Function(ChallengeProgressResponse) _then;

  /// Create a copy of ChallengeProgressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressId = null,
  }) {
    return _then(_self.copyWith(
      progressId: null == progressId
          ? _self.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChallengeProgressResponse].
extension ChallengeProgressResponsePatterns on ChallengeProgressResponse {
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
    TResult Function(_ChallengeProgressResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressResponse() when $default != null:
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
    TResult Function(_ChallengeProgressResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressResponse():
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
    TResult? Function(_ChallengeProgressResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressResponse() when $default != null:
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
    TResult Function(int progressId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressResponse() when $default != null:
        return $default(_that.progressId);
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
    TResult Function(int progressId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressResponse():
        return $default(_that.progressId);
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
    TResult? Function(int progressId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressResponse() when $default != null:
        return $default(_that.progressId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChallengeProgressResponse implements ChallengeProgressResponse {
  const _ChallengeProgressResponse({required this.progressId});
  factory _ChallengeProgressResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeProgressResponseFromJson(json);

  @override
  final int progressId;

  /// Create a copy of ChallengeProgressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeProgressResponseCopyWith<_ChallengeProgressResponse>
      get copyWith =>
          __$ChallengeProgressResponseCopyWithImpl<_ChallengeProgressResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChallengeProgressResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChallengeProgressResponse &&
            (identical(other.progressId, progressId) ||
                other.progressId == progressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, progressId);

  @override
  String toString() {
    return 'ChallengeProgressResponse(progressId: $progressId)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeProgressResponseCopyWith<$Res>
    implements $ChallengeProgressResponseCopyWith<$Res> {
  factory _$ChallengeProgressResponseCopyWith(_ChallengeProgressResponse value,
          $Res Function(_ChallengeProgressResponse) _then) =
      __$ChallengeProgressResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int progressId});
}

/// @nodoc
class __$ChallengeProgressResponseCopyWithImpl<$Res>
    implements _$ChallengeProgressResponseCopyWith<$Res> {
  __$ChallengeProgressResponseCopyWithImpl(this._self, this._then);

  final _ChallengeProgressResponse _self;
  final $Res Function(_ChallengeProgressResponse) _then;

  /// Create a copy of ChallengeProgressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? progressId = null,
  }) {
    return _then(_ChallengeProgressResponse(
      progressId: null == progressId
          ? _self.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
