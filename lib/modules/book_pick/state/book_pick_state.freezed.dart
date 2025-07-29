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
// @Default([]) List<SearchBookResponse> books,
  bool get hasNext;
  int get nextCursor;
  LikeBookState get likeBook;
  List<YoutubeRecommendResponse> get youtubeRecommends;
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
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.likeBook, likeBook) ||
                other.likeBook == likeBook) &&
            const DeepCollectionEquality()
                .equals(other.youtubeRecommends, youtubeRecommends) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasNext, nextCursor, likeBook,
      const DeepCollectionEquality().hash(youtubeRecommends), query);

  @override
  String toString() {
    return 'BookPickState(hasNext: $hasNext, nextCursor: $nextCursor, likeBook: $likeBook, youtubeRecommends: $youtubeRecommends, query: $query)';
  }
}

/// @nodoc
abstract mixin class $BookPickStateCopyWith<$Res> {
  factory $BookPickStateCopyWith(
          BookPickState value, $Res Function(BookPickState) _then) =
      _$BookPickStateCopyWithImpl;
  @useResult
  $Res call(
      {bool hasNext,
      int nextCursor,
      LikeBookState likeBook,
      List<YoutubeRecommendResponse> youtubeRecommends,
      String? query});

  $LikeBookStateCopyWith<$Res> get likeBook;
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
    Object? hasNext = null,
    Object? nextCursor = null,
    Object? likeBook = null,
    Object? youtubeRecommends = null,
    Object? query = freezed,
  }) {
    return _then(_self.copyWith(
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      likeBook: null == likeBook
          ? _self.likeBook
          : likeBook // ignore: cast_nullable_to_non_nullable
              as LikeBookState,
      youtubeRecommends: null == youtubeRecommends
          ? _self.youtubeRecommends
          : youtubeRecommends // ignore: cast_nullable_to_non_nullable
              as List<YoutubeRecommendResponse>,
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BookPickState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikeBookStateCopyWith<$Res> get likeBook {
    return $LikeBookStateCopyWith<$Res>(_self.likeBook, (value) {
      return _then(_self.copyWith(likeBook: value));
    });
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
    TResult Function(bool hasNext, int nextCursor, LikeBookState likeBook,
            List<YoutubeRecommendResponse> youtubeRecommends, String? query)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPickState() when $default != null:
        return $default(_that.hasNext, _that.nextCursor, _that.likeBook,
            _that.youtubeRecommends, _that.query);
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
    TResult Function(bool hasNext, int nextCursor, LikeBookState likeBook,
            List<YoutubeRecommendResponse> youtubeRecommends, String? query)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickState():
        return $default(_that.hasNext, _that.nextCursor, _that.likeBook,
            _that.youtubeRecommends, _that.query);
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
    TResult? Function(bool hasNext, int nextCursor, LikeBookState likeBook,
            List<YoutubeRecommendResponse> youtubeRecommends, String? query)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPickState() when $default != null:
        return $default(_that.hasNext, _that.nextCursor, _that.likeBook,
            _that.youtubeRecommends, _that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BookPickState implements BookPickState {
  const _BookPickState(
      {this.hasNext = false,
      this.nextCursor = -1,
      this.likeBook = const LikeBookState(),
      final List<YoutubeRecommendResponse> youtubeRecommends = const [],
      this.query})
      : _youtubeRecommends = youtubeRecommends;

// @Default([]) List<SearchBookResponse> books,
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final int nextCursor;
  @override
  @JsonKey()
  final LikeBookState likeBook;
  final List<YoutubeRecommendResponse> _youtubeRecommends;
  @override
  @JsonKey()
  List<YoutubeRecommendResponse> get youtubeRecommends {
    if (_youtubeRecommends is EqualUnmodifiableListView)
      return _youtubeRecommends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_youtubeRecommends);
  }

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
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.likeBook, likeBook) ||
                other.likeBook == likeBook) &&
            const DeepCollectionEquality()
                .equals(other._youtubeRecommends, _youtubeRecommends) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasNext, nextCursor, likeBook,
      const DeepCollectionEquality().hash(_youtubeRecommends), query);

  @override
  String toString() {
    return 'BookPickState(hasNext: $hasNext, nextCursor: $nextCursor, likeBook: $likeBook, youtubeRecommends: $youtubeRecommends, query: $query)';
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
      {bool hasNext,
      int nextCursor,
      LikeBookState likeBook,
      List<YoutubeRecommendResponse> youtubeRecommends,
      String? query});

  @override
  $LikeBookStateCopyWith<$Res> get likeBook;
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
    Object? hasNext = null,
    Object? nextCursor = null,
    Object? likeBook = null,
    Object? youtubeRecommends = null,
    Object? query = freezed,
  }) {
    return _then(_BookPickState(
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      likeBook: null == likeBook
          ? _self.likeBook
          : likeBook // ignore: cast_nullable_to_non_nullable
              as LikeBookState,
      youtubeRecommends: null == youtubeRecommends
          ? _self._youtubeRecommends
          : youtubeRecommends // ignore: cast_nullable_to_non_nullable
              as List<YoutubeRecommendResponse>,
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BookPickState
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
