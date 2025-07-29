// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_pick_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookPickSearchState {
  LikeBookState get likeBook;

  /// Create a copy of BookPickSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookPickSearchStateCopyWith<BookPickSearchState> get copyWith =>
      _$BookPickSearchStateCopyWithImpl<BookPickSearchState>(
          this as BookPickSearchState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookPickSearchState &&
            (identical(other.likeBook, likeBook) ||
                other.likeBook == likeBook));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likeBook);

  @override
  String toString() {
    return 'BookPickSearchState(likeBook: $likeBook)';
  }
}

/// @nodoc
abstract mixin class $BookPickSearchStateCopyWith<$Res> {
  factory $BookPickSearchStateCopyWith(
          BookPickSearchState value, $Res Function(BookPickSearchState) _then) =
      _$BookPickSearchStateCopyWithImpl;
  @useResult
  $Res call({LikeBookState likeBook});

  $LikeBookStateCopyWith<$Res> get likeBook;
}

/// @nodoc
class _$BookPickSearchStateCopyWithImpl<$Res>
    implements $BookPickSearchStateCopyWith<$Res> {
  _$BookPickSearchStateCopyWithImpl(this._self, this._then);

  final BookPickSearchState _self;
  final $Res Function(BookPickSearchState) _then;

  /// Create a copy of BookPickSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeBook = null,
  }) {
    return _then(_self.copyWith(
      likeBook: null == likeBook
          ? _self.likeBook
          : likeBook // ignore: cast_nullable_to_non_nullable
              as LikeBookState,
    ));
  }

  /// Create a copy of BookPickSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikeBookStateCopyWith<$Res> get likeBook {
    return $LikeBookStateCopyWith<$Res>(_self.likeBook, (value) {
      return _then(_self.copyWith(likeBook: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookPickSearchState].
extension BookPickSearchStatePatterns on BookPickSearchState {
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
    TResult Function(_BookPickSearchState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPickSearchState() when $default != null:
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
    TResult Function(_BookPickSearchState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickSearchState():
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
    TResult? Function(_BookPickSearchState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickSearchState() when $default != null:
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
    TResult Function(LikeBookState likeBook)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPickSearchState() when $default != null:
        return $default(_that.likeBook);
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
    TResult Function(LikeBookState likeBook) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickSearchState():
        return $default(_that.likeBook);
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
    TResult? Function(LikeBookState likeBook)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickSearchState() when $default != null:
        return $default(_that.likeBook);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BookPickSearchState implements BookPickSearchState {
  const _BookPickSearchState({this.likeBook = const LikeBookState()});

  @override
  @JsonKey()
  final LikeBookState likeBook;

  /// Create a copy of BookPickSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookPickSearchStateCopyWith<_BookPickSearchState> get copyWith =>
      __$BookPickSearchStateCopyWithImpl<_BookPickSearchState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookPickSearchState &&
            (identical(other.likeBook, likeBook) ||
                other.likeBook == likeBook));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likeBook);

  @override
  String toString() {
    return 'BookPickSearchState(likeBook: $likeBook)';
  }
}

/// @nodoc
abstract mixin class _$BookPickSearchStateCopyWith<$Res>
    implements $BookPickSearchStateCopyWith<$Res> {
  factory _$BookPickSearchStateCopyWith(_BookPickSearchState value,
          $Res Function(_BookPickSearchState) _then) =
      __$BookPickSearchStateCopyWithImpl;
  @override
  @useResult
  $Res call({LikeBookState likeBook});

  @override
  $LikeBookStateCopyWith<$Res> get likeBook;
}

/// @nodoc
class __$BookPickSearchStateCopyWithImpl<$Res>
    implements _$BookPickSearchStateCopyWith<$Res> {
  __$BookPickSearchStateCopyWithImpl(this._self, this._then);

  final _BookPickSearchState _self;
  final $Res Function(_BookPickSearchState) _then;

  /// Create a copy of BookPickSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? likeBook = null,
  }) {
    return _then(_BookPickSearchState(
      likeBook: null == likeBook
          ? _self.likeBook
          : likeBook // ignore: cast_nullable_to_non_nullable
              as LikeBookState,
    ));
  }

  /// Create a copy of BookPickSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikeBookStateCopyWith<$Res> get likeBook {
    return $LikeBookStateCopyWith<$Res>(_self.likeBook, (value) {
      return _then(_self.copyWith(likeBook: value));
    });
  }
}

// dart format on
