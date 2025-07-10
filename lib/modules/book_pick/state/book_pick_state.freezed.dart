// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_pick_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookPickState {
  List<SearchBookResponse> get books;
  int get start;
  bool get hasNext;
  String? get query;

  /// Create a copy of BookPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookPickStateCopyWith<BookPickState> get copyWith =>
      _$BookPickStateCopyWithImpl<BookPickState>(
          this as BookPickState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookPickState &&
            const DeepCollectionEquality().equals(other.books, books) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(books), start, hasNext, query);

  @override
  String toString() {
    return 'BookPickState(books: $books, start: $start, hasNext: $hasNext, query: $query)';
  }
}

/// @nodoc
abstract mixin class $BookPickStateCopyWith<$Res> {
  factory $BookPickStateCopyWith(
          BookPickState value, $Res Function(BookPickState) _then) =
      _$BookPickStateCopyWithImpl;
  @useResult
  $Res call(
      {List<SearchBookResponse> books, int start, bool hasNext, String? query});
}

/// @nodoc
class _$BookPickStateCopyWithImpl<$Res>
    implements $BookPickStateCopyWith<$Res> {
  _$BookPickStateCopyWithImpl(this._self, this._then);

  final BookPickState _self;
  final $Res Function(BookPickState) _then;

  /// Create a copy of BookPickState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? start = null,
    Object? hasNext = null,
    Object? query = freezed,
  }) {
    return _then(_self.copyWith(
      books: null == books
          ? _self.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<SearchBookResponse>,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookPickState].
extension BookPickStatePatterns on BookPickState {
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
    TResult Function(_BookPickState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPickState() when $default != null:
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
    TResult Function(_BookPickState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickState():
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
    TResult? Function(_BookPickState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickState() when $default != null:
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
    TResult Function(List<SearchBookResponse> books, int start, bool hasNext,
            String? query)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPickState() when $default != null:
        return $default(_that.books, _that.start, _that.hasNext, _that.query);
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
    TResult Function(List<SearchBookResponse> books, int start, bool hasNext,
            String? query)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickState():
        return $default(_that.books, _that.start, _that.hasNext, _that.query);
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
    TResult? Function(List<SearchBookResponse> books, int start, bool hasNext,
            String? query)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickState() when $default != null:
        return $default(_that.books, _that.start, _that.hasNext, _that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BookPickState implements BookPickState {
  const _BookPickState(
      {final List<SearchBookResponse> books = const [],
      this.start = 1,
      this.hasNext = true,
      this.query})
      : _books = books;

  final List<SearchBookResponse> _books;
  @override
  @JsonKey()
  List<SearchBookResponse> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  @JsonKey()
  final int start;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  final String? query;

  /// Create a copy of BookPickState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookPickStateCopyWith<_BookPickState> get copyWith =>
      __$BookPickStateCopyWithImpl<_BookPickState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookPickState &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_books), start, hasNext, query);

  @override
  String toString() {
    return 'BookPickState(books: $books, start: $start, hasNext: $hasNext, query: $query)';
  }
}

/// @nodoc
abstract mixin class _$BookPickStateCopyWith<$Res>
    implements $BookPickStateCopyWith<$Res> {
  factory _$BookPickStateCopyWith(
          _BookPickState value, $Res Function(_BookPickState) _then) =
      __$BookPickStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SearchBookResponse> books, int start, bool hasNext, String? query});
}

/// @nodoc
class __$BookPickStateCopyWithImpl<$Res>
    implements _$BookPickStateCopyWith<$Res> {
  __$BookPickStateCopyWithImpl(this._self, this._then);

  final _BookPickState _self;
  final $Res Function(_BookPickState) _then;

  /// Create a copy of BookPickState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? books = null,
    Object? start = null,
    Object? hasNext = null,
    Object? query = freezed,
  }) {
    return _then(_BookPickState(
      books: null == books
          ? _self._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<SearchBookResponse>,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
