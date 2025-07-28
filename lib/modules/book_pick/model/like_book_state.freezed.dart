// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikeBookState {
  List<LikeBookResponse> get likeBooks;
  bool get hasNext;
  int get nextCursor;

  /// Create a copy of LikeBookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikeBookStateCopyWith<LikeBookState> get copyWith =>
      _$LikeBookStateCopyWithImpl<LikeBookState>(
          this as LikeBookState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeBookState &&
            const DeepCollectionEquality().equals(other.likeBooks, likeBooks) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(likeBooks), hasNext, nextCursor);

  @override
  String toString() {
    return 'LikeBookState(likeBooks: $likeBooks, hasNext: $hasNext, nextCursor: $nextCursor)';
  }
}

/// @nodoc
abstract mixin class $LikeBookStateCopyWith<$Res> {
  factory $LikeBookStateCopyWith(
          LikeBookState value, $Res Function(LikeBookState) _then) =
      _$LikeBookStateCopyWithImpl;
  @useResult
  $Res call({List<LikeBookResponse> likeBooks, bool hasNext, int nextCursor});
}

/// @nodoc
class _$LikeBookStateCopyWithImpl<$Res>
    implements $LikeBookStateCopyWith<$Res> {
  _$LikeBookStateCopyWithImpl(this._self, this._then);

  final LikeBookState _self;
  final $Res Function(LikeBookState) _then;

  /// Create a copy of LikeBookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeBooks = null,
    Object? hasNext = null,
    Object? nextCursor = null,
  }) {
    return _then(_self.copyWith(
      likeBooks: null == likeBooks
          ? _self.likeBooks
          : likeBooks // ignore: cast_nullable_to_non_nullable
              as List<LikeBookResponse>,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikeBookState].
extension LikeBookStatePatterns on LikeBookState {
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
    TResult Function(_LikeBookState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeBookState() when $default != null:
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
    TResult Function(_LikeBookState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeBookState():
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
    TResult? Function(_LikeBookState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeBookState() when $default != null:
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
            List<LikeBookResponse> likeBooks, bool hasNext, int nextCursor)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeBookState() when $default != null:
        return $default(_that.likeBooks, _that.hasNext, _that.nextCursor);
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
            List<LikeBookResponse> likeBooks, bool hasNext, int nextCursor)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeBookState():
        return $default(_that.likeBooks, _that.hasNext, _that.nextCursor);
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
            List<LikeBookResponse> likeBooks, bool hasNext, int nextCursor)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeBookState() when $default != null:
        return $default(_that.likeBooks, _that.hasNext, _that.nextCursor);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LikeBookState implements LikeBookState {
  const _LikeBookState(
      {final List<LikeBookResponse> likeBooks = const [],
      this.hasNext = false,
      this.nextCursor = -1})
      : _likeBooks = likeBooks;

  final List<LikeBookResponse> _likeBooks;
  @override
  @JsonKey()
  List<LikeBookResponse> get likeBooks {
    if (_likeBooks is EqualUnmodifiableListView) return _likeBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeBooks);
  }

  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final int nextCursor;

  /// Create a copy of LikeBookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikeBookStateCopyWith<_LikeBookState> get copyWith =>
      __$LikeBookStateCopyWithImpl<_LikeBookState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeBookState &&
            const DeepCollectionEquality()
                .equals(other._likeBooks, _likeBooks) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_likeBooks), hasNext, nextCursor);

  @override
  String toString() {
    return 'LikeBookState(likeBooks: $likeBooks, hasNext: $hasNext, nextCursor: $nextCursor)';
  }
}

/// @nodoc
abstract mixin class _$LikeBookStateCopyWith<$Res>
    implements $LikeBookStateCopyWith<$Res> {
  factory _$LikeBookStateCopyWith(
          _LikeBookState value, $Res Function(_LikeBookState) _then) =
      __$LikeBookStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<LikeBookResponse> likeBooks, bool hasNext, int nextCursor});
}

/// @nodoc
class __$LikeBookStateCopyWithImpl<$Res>
    implements _$LikeBookStateCopyWith<$Res> {
  __$LikeBookStateCopyWithImpl(this._self, this._then);

  final _LikeBookState _self;
  final $Res Function(_LikeBookState) _then;

  /// Create a copy of LikeBookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? likeBooks = null,
    Object? hasNext = null,
    Object? nextCursor = null,
  }) {
    return _then(_LikeBookState(
      likeBooks: null == likeBooks
          ? _self._likeBooks
          : likeBooks // ignore: cast_nullable_to_non_nullable
              as List<LikeBookResponse>,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
