// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_challenge_progress_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingChallengeProgressState {
  String get startPage;
  String get endPage;

  /// Create a copy of ReadingChallengeProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadingChallengeProgressStateCopyWith<ReadingChallengeProgressState>
      get copyWith => _$ReadingChallengeProgressStateCopyWithImpl<
              ReadingChallengeProgressState>(
          this as ReadingChallengeProgressState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadingChallengeProgressState &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startPage, endPage);

  @override
  String toString() {
    return 'ReadingChallengeProgressState(startPage: $startPage, endPage: $endPage)';
  }
}

/// @nodoc
abstract mixin class $ReadingChallengeProgressStateCopyWith<$Res> {
  factory $ReadingChallengeProgressStateCopyWith(
          ReadingChallengeProgressState value,
          $Res Function(ReadingChallengeProgressState) _then) =
      _$ReadingChallengeProgressStateCopyWithImpl;
  @useResult
  $Res call({String startPage, String endPage});
}

/// @nodoc
class _$ReadingChallengeProgressStateCopyWithImpl<$Res>
    implements $ReadingChallengeProgressStateCopyWith<$Res> {
  _$ReadingChallengeProgressStateCopyWithImpl(this._self, this._then);

  final ReadingChallengeProgressState _self;
  final $Res Function(ReadingChallengeProgressState) _then;

  /// Create a copy of ReadingChallengeProgressState
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
              as String,
      endPage: null == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReadingChallengeProgressState].
extension ReadingChallengeProgressStatePatterns
    on ReadingChallengeProgressState {
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
    TResult Function(_ReadingChallengeProgressState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeProgressState() when $default != null:
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
    TResult Function(_ReadingChallengeProgressState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeProgressState():
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
    TResult? Function(_ReadingChallengeProgressState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeProgressState() when $default != null:
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
    TResult Function(String startPage, String endPage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeProgressState() when $default != null:
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
    TResult Function(String startPage, String endPage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeProgressState():
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
    TResult? Function(String startPage, String endPage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeProgressState() when $default != null:
        return $default(_that.startPage, _that.endPage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ReadingChallengeProgressState extends ReadingChallengeProgressState {
  const _ReadingChallengeProgressState({this.startPage = '', this.endPage = ''})
      : super._();

  @override
  @JsonKey()
  final String startPage;
  @override
  @JsonKey()
  final String endPage;

  /// Create a copy of ReadingChallengeProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadingChallengeProgressStateCopyWith<_ReadingChallengeProgressState>
      get copyWith => __$ReadingChallengeProgressStateCopyWithImpl<
          _ReadingChallengeProgressState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadingChallengeProgressState &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startPage, endPage);

  @override
  String toString() {
    return 'ReadingChallengeProgressState(startPage: $startPage, endPage: $endPage)';
  }
}

/// @nodoc
abstract mixin class _$ReadingChallengeProgressStateCopyWith<$Res>
    implements $ReadingChallengeProgressStateCopyWith<$Res> {
  factory _$ReadingChallengeProgressStateCopyWith(
          _ReadingChallengeProgressState value,
          $Res Function(_ReadingChallengeProgressState) _then) =
      __$ReadingChallengeProgressStateCopyWithImpl;
  @override
  @useResult
  $Res call({String startPage, String endPage});
}

/// @nodoc
class __$ReadingChallengeProgressStateCopyWithImpl<$Res>
    implements _$ReadingChallengeProgressStateCopyWith<$Res> {
  __$ReadingChallengeProgressStateCopyWithImpl(this._self, this._then);

  final _ReadingChallengeProgressState _self;
  final $Res Function(_ReadingChallengeProgressState) _then;

  /// Create a copy of ReadingChallengeProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startPage = null,
    Object? endPage = null,
  }) {
    return _then(_ReadingChallengeProgressState(
      startPage: null == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as String,
      endPage: null == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
