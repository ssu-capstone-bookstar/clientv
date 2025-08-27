// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchBookState {
  List<SearchBookResponse> get books;
  List<String> get searchHistories;
  int get start;
  bool get hasNext;
  String get query;

  /// Create a copy of SearchBookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchBookStateCopyWith<SearchBookState> get copyWith =>
      _$SearchBookStateCopyWithImpl<SearchBookState>(
          this as SearchBookState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchBookState &&
            const DeepCollectionEquality().equals(other.books, books) &&
            const DeepCollectionEquality()
                .equals(other.searchHistories, searchHistories) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(books),
      const DeepCollectionEquality().hash(searchHistories),
      start,
      hasNext,
      query);

  @override
  String toString() {
    return 'SearchBookState(books: $books, searchHistories: $searchHistories, start: $start, hasNext: $hasNext, query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchBookStateCopyWith<$Res> {
  factory $SearchBookStateCopyWith(
          SearchBookState value, $Res Function(SearchBookState) _then) =
      _$SearchBookStateCopyWithImpl;
  @useResult
  $Res call(
      {List<SearchBookResponse> books,
      List<String> searchHistories,
      int start,
      bool hasNext,
      String query});
}

/// @nodoc
class _$SearchBookStateCopyWithImpl<$Res>
    implements $SearchBookStateCopyWith<$Res> {
  _$SearchBookStateCopyWithImpl(this._self, this._then);

  final SearchBookState _self;
  final $Res Function(SearchBookState) _then;

  /// Create a copy of SearchBookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? searchHistories = null,
    Object? start = null,
    Object? hasNext = null,
    Object? query = null,
  }) {
    return _then(_self.copyWith(
      books: null == books
          ? _self.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<SearchBookResponse>,
      searchHistories: null == searchHistories
          ? _self.searchHistories
          : searchHistories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchBookState].
extension SearchBookStatePatterns on SearchBookState {
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
    TResult Function(_SearchBookState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchBookState() when $default != null:
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
    TResult Function(_SearchBookState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchBookState():
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
    TResult? Function(_SearchBookState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchBookState() when $default != null:
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
            List<SearchBookResponse> books,
            List<String> searchHistories,
            int start,
            bool hasNext,
            String query)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchBookState() when $default != null:
        return $default(_that.books, _that.searchHistories, _that.start,
            _that.hasNext, _that.query);
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
    TResult Function(List<SearchBookResponse> books,
            List<String> searchHistories, int start, bool hasNext, String query)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchBookState():
        return $default(_that.books, _that.searchHistories, _that.start,
            _that.hasNext, _that.query);
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
            List<SearchBookResponse> books,
            List<String> searchHistories,
            int start,
            bool hasNext,
            String query)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchBookState() when $default != null:
        return $default(_that.books, _that.searchHistories, _that.start,
            _that.hasNext, _that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SearchBookState implements SearchBookState {
  const _SearchBookState(
      {final List<SearchBookResponse> books = const [],
      final List<String> searchHistories = const [],
      this.start = 1,
      this.hasNext = false,
      this.query = ''})
      : _books = books,
        _searchHistories = searchHistories;

  final List<SearchBookResponse> _books;
  @override
  @JsonKey()
  List<SearchBookResponse> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final List<String> _searchHistories;
  @override
  @JsonKey()
  List<String> get searchHistories {
    if (_searchHistories is EqualUnmodifiableListView) return _searchHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistories);
  }

  @override
  @JsonKey()
  final int start;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final String query;

  /// Create a copy of SearchBookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchBookStateCopyWith<_SearchBookState> get copyWith =>
      __$SearchBookStateCopyWithImpl<_SearchBookState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchBookState &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality()
                .equals(other._searchHistories, _searchHistories) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_searchHistories),
      start,
      hasNext,
      query);

  @override
  String toString() {
    return 'SearchBookState(books: $books, searchHistories: $searchHistories, start: $start, hasNext: $hasNext, query: $query)';
  }
}

/// @nodoc
abstract mixin class _$SearchBookStateCopyWith<$Res>
    implements $SearchBookStateCopyWith<$Res> {
  factory _$SearchBookStateCopyWith(
          _SearchBookState value, $Res Function(_SearchBookState) _then) =
      __$SearchBookStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SearchBookResponse> books,
      List<String> searchHistories,
      int start,
      bool hasNext,
      String query});
}

/// @nodoc
class __$SearchBookStateCopyWithImpl<$Res>
    implements _$SearchBookStateCopyWith<$Res> {
  __$SearchBookStateCopyWithImpl(this._self, this._then);

  final _SearchBookState _self;
  final $Res Function(_SearchBookState) _then;

  /// Create a copy of SearchBookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? books = null,
    Object? searchHistories = null,
    Object? start = null,
    Object? hasNext = null,
    Object? query = null,
  }) {
    return _then(_SearchBookState(
      books: null == books
          ? _self._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<SearchBookResponse>,
      searchHistories: null == searchHistories
          ? _self._searchHistories
          : searchHistories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
