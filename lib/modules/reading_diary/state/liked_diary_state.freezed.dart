// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_diary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikedDiaryState {
  List<LikedDiaryThumbnail> get thumbnails;
  List<LikedDiaryFeed> get feeds;
  int get nextCursor;
  bool get hasNext;
  bool get isLoading;
  bool get isLoadingMore;
  String? get errorMessage;

  /// Create a copy of LikedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryStateCopyWith<LikedDiaryState> get copyWith =>
      _$LikedDiaryStateCopyWithImpl<LikedDiaryState>(
          this as LikedDiaryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryState &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.feeds, feeds) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(feeds),
      nextCursor,
      hasNext,
      isLoading,
      isLoadingMore,
      errorMessage);

  @override
  String toString() {
    return 'LikedDiaryState(thumbnails: $thumbnails, feeds: $feeds, nextCursor: $nextCursor, hasNext: $hasNext, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryStateCopyWith<$Res> {
  factory $LikedDiaryStateCopyWith(
          LikedDiaryState value, $Res Function(LikedDiaryState) _then) =
      _$LikedDiaryStateCopyWithImpl;
  @useResult
  $Res call(
      {List<LikedDiaryThumbnail> thumbnails,
      List<LikedDiaryFeed> feeds,
      int nextCursor,
      bool hasNext,
      bool isLoading,
      bool isLoadingMore,
      String? errorMessage});
}

/// @nodoc
class _$LikedDiaryStateCopyWithImpl<$Res>
    implements $LikedDiaryStateCopyWith<$Res> {
  _$LikedDiaryStateCopyWithImpl(this._self, this._then);

  final LikedDiaryState _self;
  final $Res Function(LikedDiaryState) _then;

  /// Create a copy of LikedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnails = null,
    Object? feeds = null,
    Object? nextCursor = null,
    Object? hasNext = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      thumbnails: null == thumbnails
          ? _self.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryThumbnail>,
      feeds: null == feeds
          ? _self.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryFeed>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryState].
extension LikedDiaryStatePatterns on LikedDiaryState {
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
    TResult Function(_LikedDiaryState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryState() when $default != null:
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
    TResult Function(_LikedDiaryState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryState():
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
    TResult? Function(_LikedDiaryState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryState() when $default != null:
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
            List<LikedDiaryThumbnail> thumbnails,
            List<LikedDiaryFeed> feeds,
            int nextCursor,
            bool hasNext,
            bool isLoading,
            bool isLoadingMore,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryState() when $default != null:
        return $default(
            _that.thumbnails,
            _that.feeds,
            _that.nextCursor,
            _that.hasNext,
            _that.isLoading,
            _that.isLoadingMore,
            _that.errorMessage);
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
            List<LikedDiaryThumbnail> thumbnails,
            List<LikedDiaryFeed> feeds,
            int nextCursor,
            bool hasNext,
            bool isLoading,
            bool isLoadingMore,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryState():
        return $default(
            _that.thumbnails,
            _that.feeds,
            _that.nextCursor,
            _that.hasNext,
            _that.isLoading,
            _that.isLoadingMore,
            _that.errorMessage);
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
            List<LikedDiaryThumbnail> thumbnails,
            List<LikedDiaryFeed> feeds,
            int nextCursor,
            bool hasNext,
            bool isLoading,
            bool isLoadingMore,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryState() when $default != null:
        return $default(
            _that.thumbnails,
            _that.feeds,
            _that.nextCursor,
            _that.hasNext,
            _that.isLoading,
            _that.isLoadingMore,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LikedDiaryState implements LikedDiaryState {
  const _LikedDiaryState(
      {final List<LikedDiaryThumbnail> thumbnails = const [],
      final List<LikedDiaryFeed> feeds = const [],
      this.nextCursor = 0,
      this.hasNext = false,
      this.isLoading = false,
      this.isLoadingMore = false,
      this.errorMessage})
      : _thumbnails = thumbnails,
        _feeds = feeds;

  final List<LikedDiaryThumbnail> _thumbnails;
  @override
  @JsonKey()
  List<LikedDiaryThumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  final List<LikedDiaryFeed> _feeds;
  @override
  @JsonKey()
  List<LikedDiaryFeed> get feeds {
    if (_feeds is EqualUnmodifiableListView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  @JsonKey()
  final int nextCursor;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  final String? errorMessage;

  /// Create a copy of LikedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryStateCopyWith<_LikedDiaryState> get copyWith =>
      __$LikedDiaryStateCopyWithImpl<_LikedDiaryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryState &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            const DeepCollectionEquality().equals(other._feeds, _feeds) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_thumbnails),
      const DeepCollectionEquality().hash(_feeds),
      nextCursor,
      hasNext,
      isLoading,
      isLoadingMore,
      errorMessage);

  @override
  String toString() {
    return 'LikedDiaryState(thumbnails: $thumbnails, feeds: $feeds, nextCursor: $nextCursor, hasNext: $hasNext, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryStateCopyWith<$Res>
    implements $LikedDiaryStateCopyWith<$Res> {
  factory _$LikedDiaryStateCopyWith(
          _LikedDiaryState value, $Res Function(_LikedDiaryState) _then) =
      __$LikedDiaryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<LikedDiaryThumbnail> thumbnails,
      List<LikedDiaryFeed> feeds,
      int nextCursor,
      bool hasNext,
      bool isLoading,
      bool isLoadingMore,
      String? errorMessage});
}

/// @nodoc
class __$LikedDiaryStateCopyWithImpl<$Res>
    implements _$LikedDiaryStateCopyWith<$Res> {
  __$LikedDiaryStateCopyWithImpl(this._self, this._then);

  final _LikedDiaryState _self;
  final $Res Function(_LikedDiaryState) _then;

  /// Create a copy of LikedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thumbnails = null,
    Object? feeds = null,
    Object? nextCursor = null,
    Object? hasNext = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_LikedDiaryState(
      thumbnails: null == thumbnails
          ? _self._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryThumbnail>,
      feeds: null == feeds
          ? _self._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryFeed>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
