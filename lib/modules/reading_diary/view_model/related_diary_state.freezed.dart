// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_diary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelatedDiaryState {
  List<RelatedDiaryThumbnail> get thumbnails;
  List<DiaryResponse> get feeds;
  int get nextCursor;
  Object? get nextSubCursor;
  bool get hasNext;
  int get bookId;
  RelatedDiarySort get sort;

  /// Create a copy of RelatedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelatedDiaryStateCopyWith<RelatedDiaryState> get copyWith =>
      _$RelatedDiaryStateCopyWithImpl<RelatedDiaryState>(
          this as RelatedDiaryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelatedDiaryState &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.feeds, feeds) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            const DeepCollectionEquality()
                .equals(other.nextSubCursor, nextSubCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(feeds),
      nextCursor,
      const DeepCollectionEquality().hash(nextSubCursor),
      hasNext,
      bookId,
      sort);

  @override
  String toString() {
    return 'RelatedDiaryState(thumbnails: $thumbnails, feeds: $feeds, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext, bookId: $bookId, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class $RelatedDiaryStateCopyWith<$Res> {
  factory $RelatedDiaryStateCopyWith(
          RelatedDiaryState value, $Res Function(RelatedDiaryState) _then) =
      _$RelatedDiaryStateCopyWithImpl;
  @useResult
  $Res call(
      {List<RelatedDiaryThumbnail> thumbnails,
      List<DiaryResponse> feeds,
      int nextCursor,
      Object? nextSubCursor,
      bool hasNext,
      int bookId,
      RelatedDiarySort sort});
}

/// @nodoc
class _$RelatedDiaryStateCopyWithImpl<$Res>
    implements $RelatedDiaryStateCopyWith<$Res> {
  _$RelatedDiaryStateCopyWithImpl(this._self, this._then);

  final RelatedDiaryState _self;
  final $Res Function(RelatedDiaryState) _then;

  /// Create a copy of RelatedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnails = null,
    Object? feeds = null,
    Object? nextCursor = null,
    Object? nextSubCursor = freezed,
    Object? hasNext = null,
    Object? bookId = null,
    Object? sort = null,
  }) {
    return _then(_self.copyWith(
      thumbnails: null == thumbnails
          ? _self.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<RelatedDiaryThumbnail>,
      feeds: null == feeds
          ? _self.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<DiaryResponse>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      nextSubCursor:
          freezed == nextSubCursor ? _self.nextSubCursor : nextSubCursor,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as RelatedDiarySort,
    ));
  }
}

/// Adds pattern-matching-related methods to [RelatedDiaryState].
extension RelatedDiaryStatePatterns on RelatedDiaryState {
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
    TResult Function(_RelatedDiaryState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState() when $default != null:
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
    TResult Function(_RelatedDiaryState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState():
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
    TResult? Function(_RelatedDiaryState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState() when $default != null:
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
            List<RelatedDiaryThumbnail> thumbnails,
            List<DiaryResponse> feeds,
            int nextCursor,
            Object? nextSubCursor,
            bool hasNext,
            int bookId,
            RelatedDiarySort sort)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState() when $default != null:
        return $default(_that.thumbnails, _that.feeds, _that.nextCursor,
            _that.nextSubCursor, _that.hasNext, _that.bookId, _that.sort);
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
            List<RelatedDiaryThumbnail> thumbnails,
            List<DiaryResponse> feeds,
            int nextCursor,
            Object? nextSubCursor,
            bool hasNext,
            int bookId,
            RelatedDiarySort sort)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState():
        return $default(_that.thumbnails, _that.feeds, _that.nextCursor,
            _that.nextSubCursor, _that.hasNext, _that.bookId, _that.sort);
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
            List<RelatedDiaryThumbnail> thumbnails,
            List<DiaryResponse> feeds,
            int nextCursor,
            Object? nextSubCursor,
            bool hasNext,
            int bookId,
            RelatedDiarySort sort)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState() when $default != null:
        return $default(_that.thumbnails, _that.feeds, _that.nextCursor,
            _that.nextSubCursor, _that.hasNext, _that.bookId, _that.sort);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RelatedDiaryState implements RelatedDiaryState {
  const _RelatedDiaryState(
      {final List<RelatedDiaryThumbnail> thumbnails = const [],
      final List<DiaryResponse> feeds = const [],
      this.nextCursor = -1,
      this.nextSubCursor,
      this.hasNext = false,
      this.bookId = -1,
      this.sort = RelatedDiarySort.LATEST})
      : _thumbnails = thumbnails,
        _feeds = feeds;

  final List<RelatedDiaryThumbnail> _thumbnails;
  @override
  @JsonKey()
  List<RelatedDiaryThumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  final List<DiaryResponse> _feeds;
  @override
  @JsonKey()
  List<DiaryResponse> get feeds {
    if (_feeds is EqualUnmodifiableListView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  @JsonKey()
  final int nextCursor;
  @override
  final Object? nextSubCursor;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final int bookId;
  @override
  @JsonKey()
  final RelatedDiarySort sort;

  /// Create a copy of RelatedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RelatedDiaryStateCopyWith<_RelatedDiaryState> get copyWith =>
      __$RelatedDiaryStateCopyWithImpl<_RelatedDiaryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelatedDiaryState &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            const DeepCollectionEquality().equals(other._feeds, _feeds) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            const DeepCollectionEquality()
                .equals(other.nextSubCursor, nextSubCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_thumbnails),
      const DeepCollectionEquality().hash(_feeds),
      nextCursor,
      const DeepCollectionEquality().hash(nextSubCursor),
      hasNext,
      bookId,
      sort);

  @override
  String toString() {
    return 'RelatedDiaryState(thumbnails: $thumbnails, feeds: $feeds, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext, bookId: $bookId, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class _$RelatedDiaryStateCopyWith<$Res>
    implements $RelatedDiaryStateCopyWith<$Res> {
  factory _$RelatedDiaryStateCopyWith(
          _RelatedDiaryState value, $Res Function(_RelatedDiaryState) _then) =
      __$RelatedDiaryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<RelatedDiaryThumbnail> thumbnails,
      List<DiaryResponse> feeds,
      int nextCursor,
      Object? nextSubCursor,
      bool hasNext,
      int bookId,
      RelatedDiarySort sort});
}

/// @nodoc
class __$RelatedDiaryStateCopyWithImpl<$Res>
    implements _$RelatedDiaryStateCopyWith<$Res> {
  __$RelatedDiaryStateCopyWithImpl(this._self, this._then);

  final _RelatedDiaryState _self;
  final $Res Function(_RelatedDiaryState) _then;

  /// Create a copy of RelatedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thumbnails = null,
    Object? feeds = null,
    Object? nextCursor = null,
    Object? nextSubCursor = freezed,
    Object? hasNext = null,
    Object? bookId = null,
    Object? sort = null,
  }) {
    return _then(_RelatedDiaryState(
      thumbnails: null == thumbnails
          ? _self._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<RelatedDiaryThumbnail>,
      feeds: null == feeds
          ? _self._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<DiaryResponse>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      nextSubCursor:
          freezed == nextSubCursor ? _self.nextSubCursor : nextSubCursor,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as RelatedDiarySort,
    ));
  }
}

// dart format on
