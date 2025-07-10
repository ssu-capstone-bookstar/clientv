// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_challenge_rating_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingChallengeRatingState {
  double get rating;

  /// Create a copy of ReadingChallengeRatingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadingChallengeRatingStateCopyWith<ReadingChallengeRatingState>
      get copyWith => _$ReadingChallengeRatingStateCopyWithImpl<
              ReadingChallengeRatingState>(
          this as ReadingChallengeRatingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadingChallengeRatingState &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @override
  String toString() {
    return 'ReadingChallengeRatingState(rating: $rating)';
  }
}

/// @nodoc
abstract mixin class $ReadingChallengeRatingStateCopyWith<$Res> {
  factory $ReadingChallengeRatingStateCopyWith(
          ReadingChallengeRatingState value,
          $Res Function(ReadingChallengeRatingState) _then) =
      _$ReadingChallengeRatingStateCopyWithImpl;
  @useResult
  $Res call({double rating});
}

/// @nodoc
class _$ReadingChallengeRatingStateCopyWithImpl<$Res>
    implements $ReadingChallengeRatingStateCopyWith<$Res> {
  _$ReadingChallengeRatingStateCopyWithImpl(this._self, this._then);

  final ReadingChallengeRatingState _self;
  final $Res Function(ReadingChallengeRatingState) _then;

  /// Create a copy of ReadingChallengeRatingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_self.copyWith(
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReadingChallengeRatingState].
extension ReadingChallengeRatingStatePatterns on ReadingChallengeRatingState {
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
    TResult Function(_ReadingChallengeRatingState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRatingState() when $default != null:
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
    TResult Function(_ReadingChallengeRatingState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRatingState():
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
    TResult? Function(_ReadingChallengeRatingState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRatingState() when $default != null:
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
    TResult Function(double rating)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRatingState() when $default != null:
        return $default(_that.rating);
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
    TResult Function(double rating) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRatingState():
        return $default(_that.rating);
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
    TResult? Function(double rating)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRatingState() when $default != null:
        return $default(_that.rating);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ReadingChallengeRatingState implements ReadingChallengeRatingState {
  const _ReadingChallengeRatingState({this.rating = 0.0});

  @override
  @JsonKey()
  final double rating;

  /// Create a copy of ReadingChallengeRatingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadingChallengeRatingStateCopyWith<_ReadingChallengeRatingState>
      get copyWith => __$ReadingChallengeRatingStateCopyWithImpl<
          _ReadingChallengeRatingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadingChallengeRatingState &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @override
  String toString() {
    return 'ReadingChallengeRatingState(rating: $rating)';
  }
}

/// @nodoc
abstract mixin class _$ReadingChallengeRatingStateCopyWith<$Res>
    implements $ReadingChallengeRatingStateCopyWith<$Res> {
  factory _$ReadingChallengeRatingStateCopyWith(
          _ReadingChallengeRatingState value,
          $Res Function(_ReadingChallengeRatingState) _then) =
      __$ReadingChallengeRatingStateCopyWithImpl;
  @override
  @useResult
  $Res call({double rating});
}

/// @nodoc
class __$ReadingChallengeRatingStateCopyWithImpl<$Res>
    implements _$ReadingChallengeRatingStateCopyWith<$Res> {
  __$ReadingChallengeRatingStateCopyWithImpl(this._self, this._then);

  final _ReadingChallengeRatingState _self;
  final $Res Function(_ReadingChallengeRatingState) _then;

  /// Create a copy of ReadingChallengeRatingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rating = null,
  }) {
    return _then(_ReadingChallengeRatingState(
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
