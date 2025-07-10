// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_progress_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChallengeProgressRequest {
  int get startPage;
  int get endPage;

  /// Create a copy of ChallengeProgressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeProgressRequestCopyWith<ChallengeProgressRequest> get copyWith =>
      _$ChallengeProgressRequestCopyWithImpl<ChallengeProgressRequest>(
          this as ChallengeProgressRequest, _$identity);

  /// Serializes this ChallengeProgressRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChallengeProgressRequest &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startPage, endPage);

  @override
  String toString() {
    return 'ChallengeProgressRequest(startPage: $startPage, endPage: $endPage)';
  }
}

/// @nodoc
abstract mixin class $ChallengeProgressRequestCopyWith<$Res> {
  factory $ChallengeProgressRequestCopyWith(ChallengeProgressRequest value,
          $Res Function(ChallengeProgressRequest) _then) =
      _$ChallengeProgressRequestCopyWithImpl;
  @useResult
  $Res call({int startPage, int endPage});
}

/// @nodoc
class _$ChallengeProgressRequestCopyWithImpl<$Res>
    implements $ChallengeProgressRequestCopyWith<$Res> {
  _$ChallengeProgressRequestCopyWithImpl(this._self, this._then);

  final ChallengeProgressRequest _self;
  final $Res Function(ChallengeProgressRequest) _then;

  /// Create a copy of ChallengeProgressRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPage = null,
    Object? endPage = null,
  }) {
    return _then(_self.copyWith(
      startPage: null == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      endPage: null == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChallengeProgressRequest].
extension ChallengeProgressRequestPatterns on ChallengeProgressRequest {
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
    TResult Function(_ChallengeProgressRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressRequest() when $default != null:
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
    TResult Function(_ChallengeProgressRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressRequest():
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
    TResult? Function(_ChallengeProgressRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressRequest() when $default != null:
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
    TResult Function(int startPage, int endPage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressRequest() when $default != null:
        return $default(_that.startPage, _that.endPage);
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
    TResult Function(int startPage, int endPage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressRequest():
        return $default(_that.startPage, _that.endPage);
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
    TResult? Function(int startPage, int endPage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeProgressRequest() when $default != null:
        return $default(_that.startPage, _that.endPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChallengeProgressRequest implements ChallengeProgressRequest {
  const _ChallengeProgressRequest(
      {required this.startPage, required this.endPage});
  factory _ChallengeProgressRequest.fromJson(Map<String, dynamic> json) =>
      _$ChallengeProgressRequestFromJson(json);

  @override
  final int startPage;
  @override
  final int endPage;

  /// Create a copy of ChallengeProgressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeProgressRequestCopyWith<_ChallengeProgressRequest> get copyWith =>
      __$ChallengeProgressRequestCopyWithImpl<_ChallengeProgressRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChallengeProgressRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChallengeProgressRequest &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startPage, endPage);

  @override
  String toString() {
    return 'ChallengeProgressRequest(startPage: $startPage, endPage: $endPage)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeProgressRequestCopyWith<$Res>
    implements $ChallengeProgressRequestCopyWith<$Res> {
  factory _$ChallengeProgressRequestCopyWith(_ChallengeProgressRequest value,
          $Res Function(_ChallengeProgressRequest) _then) =
      __$ChallengeProgressRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int startPage, int endPage});
}

/// @nodoc
class __$ChallengeProgressRequestCopyWithImpl<$Res>
    implements _$ChallengeProgressRequestCopyWith<$Res> {
  __$ChallengeProgressRequestCopyWithImpl(this._self, this._then);

  final _ChallengeProgressRequest _self;
  final $Res Function(_ChallengeProgressRequest) _then;

  /// Create a copy of ChallengeProgressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startPage = null,
    Object? endPage = null,
  }) {
    return _then(_ChallengeProgressRequest(
      startPage: null == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      endPage: null == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
