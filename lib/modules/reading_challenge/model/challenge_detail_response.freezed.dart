// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChallengeDetailResponse {
  int get totalPages;
  String get challengeId;
  int get lastReadPage;

  /// Create a copy of ChallengeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeDetailResponseCopyWith<ChallengeDetailResponse> get copyWith =>
      _$ChallengeDetailResponseCopyWithImpl<ChallengeDetailResponse>(
          this as ChallengeDetailResponse, _$identity);

  /// Serializes this ChallengeDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChallengeDetailResponse &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.lastReadPage, lastReadPage) ||
                other.lastReadPage == lastReadPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalPages, challengeId, lastReadPage);

  @override
  String toString() {
    return 'ChallengeDetailResponse(totalPages: $totalPages, challengeId: $challengeId, lastReadPage: $lastReadPage)';
  }
}

/// @nodoc
abstract mixin class $ChallengeDetailResponseCopyWith<$Res> {
  factory $ChallengeDetailResponseCopyWith(ChallengeDetailResponse value,
          $Res Function(ChallengeDetailResponse) _then) =
      _$ChallengeDetailResponseCopyWithImpl;
  @useResult
  $Res call({int totalPages, String challengeId, int lastReadPage});
}

/// @nodoc
class _$ChallengeDetailResponseCopyWithImpl<$Res>
    implements $ChallengeDetailResponseCopyWith<$Res> {
  _$ChallengeDetailResponseCopyWithImpl(this._self, this._then);

  final ChallengeDetailResponse _self;
  final $Res Function(ChallengeDetailResponse) _then;

  /// Create a copy of ChallengeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? challengeId = null,
    Object? lastReadPage = null,
  }) {
    return _then(_self.copyWith(
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      challengeId: null == challengeId
          ? _self.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      lastReadPage: null == lastReadPage
          ? _self.lastReadPage
          : lastReadPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChallengeDetailResponse].
extension ChallengeDetailResponsePatterns on ChallengeDetailResponse {
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
    TResult Function(_ChallengeDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeDetailResponse() when $default != null:
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
    TResult Function(_ChallengeDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeDetailResponse():
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
    TResult? Function(_ChallengeDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeDetailResponse() when $default != null:
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
    TResult Function(int totalPages, String challengeId, int lastReadPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeDetailResponse() when $default != null:
        return $default(
            _that.totalPages, _that.challengeId, _that.lastReadPage);
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
    TResult Function(int totalPages, String challengeId, int lastReadPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeDetailResponse():
        return $default(
            _that.totalPages, _that.challengeId, _that.lastReadPage);
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
    TResult? Function(int totalPages, String challengeId, int lastReadPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeDetailResponse() when $default != null:
        return $default(
            _that.totalPages, _that.challengeId, _that.lastReadPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChallengeDetailResponse implements ChallengeDetailResponse {
  const _ChallengeDetailResponse(
      {required this.totalPages,
      required this.challengeId,
      required this.lastReadPage});
  factory _ChallengeDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeDetailResponseFromJson(json);

  @override
  final int totalPages;
  @override
  final String challengeId;
  @override
  final int lastReadPage;

  /// Create a copy of ChallengeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeDetailResponseCopyWith<_ChallengeDetailResponse> get copyWith =>
      __$ChallengeDetailResponseCopyWithImpl<_ChallengeDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChallengeDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChallengeDetailResponse &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.lastReadPage, lastReadPage) ||
                other.lastReadPage == lastReadPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalPages, challengeId, lastReadPage);

  @override
  String toString() {
    return 'ChallengeDetailResponse(totalPages: $totalPages, challengeId: $challengeId, lastReadPage: $lastReadPage)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeDetailResponseCopyWith<$Res>
    implements $ChallengeDetailResponseCopyWith<$Res> {
  factory _$ChallengeDetailResponseCopyWith(_ChallengeDetailResponse value,
          $Res Function(_ChallengeDetailResponse) _then) =
      __$ChallengeDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int totalPages, String challengeId, int lastReadPage});
}

/// @nodoc
class __$ChallengeDetailResponseCopyWithImpl<$Res>
    implements _$ChallengeDetailResponseCopyWith<$Res> {
  __$ChallengeDetailResponseCopyWithImpl(this._self, this._then);

  final _ChallengeDetailResponse _self;
  final $Res Function(_ChallengeDetailResponse) _then;

  /// Create a copy of ChallengeDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalPages = null,
    Object? challengeId = null,
    Object? lastReadPage = null,
  }) {
    return _then(_ChallengeDetailResponse(
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      challengeId: null == challengeId
          ? _self.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      lastReadPage: null == lastReadPage
          ? _self.lastReadPage
          : lastReadPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
