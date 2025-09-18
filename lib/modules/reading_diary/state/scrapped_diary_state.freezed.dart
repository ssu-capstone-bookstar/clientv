// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrapped_diary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScrappedDiaryState {
  List<ScrappedDiaryThumbnailResponse> get thumbnails;
  List<ScrappedDiaryFeedResponse> get feeds;
  int? get nextCursor;
  bool get hasNext;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of ScrappedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScrappedDiaryStateCopyWith<ScrappedDiaryState> get copyWith =>
      _$ScrappedDiaryStateCopyWithImpl<ScrappedDiaryState>(
          this as ScrappedDiaryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScrappedDiaryState &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.feeds, feeds) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
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
      errorMessage);

  @override
  String toString() {
    return 'ScrappedDiaryState(thumbnails: $thumbnails, feeds: $feeds, nextCursor: $nextCursor, hasNext: $hasNext, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ScrappedDiaryStateCopyWith<$Res> {
  factory $ScrappedDiaryStateCopyWith(
          ScrappedDiaryState value, $Res Function(ScrappedDiaryState) _then) =
      _$ScrappedDiaryStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ScrappedDiaryThumbnailResponse> thumbnails,
      List<ScrappedDiaryFeedResponse> feeds,
      int? nextCursor,
      bool hasNext,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$ScrappedDiaryStateCopyWithImpl<$Res>
    implements $ScrappedDiaryStateCopyWith<$Res> {
  _$ScrappedDiaryStateCopyWithImpl(this._self, this._then);

  final ScrappedDiaryState _self;
  final $Res Function(ScrappedDiaryState) _then;

  /// Create a copy of ScrappedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnails = null,
    Object? feeds = null,
    Object? nextCursor = freezed,
    Object? hasNext = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      thumbnails: null == thumbnails
          ? _self.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<ScrappedDiaryThumbnailResponse>,
      feeds: null == feeds
          ? _self.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<ScrappedDiaryFeedResponse>,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ScrappedDiaryState].
extension ScrappedDiaryStatePatterns on ScrappedDiaryState {
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
    TResult Function(_ScrappedDiaryState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryState() when $default != null:
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
    TResult Function(_ScrappedDiaryState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryState():
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
    TResult? Function(_ScrappedDiaryState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryState() when $default != null:
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
            List<ScrappedDiaryThumbnailResponse> thumbnails,
            List<ScrappedDiaryFeedResponse> feeds,
            int? nextCursor,
            bool hasNext,
            bool isLoading,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryState() when $default != null:
        return $default(_that.thumbnails, _that.feeds, _that.nextCursor,
            _that.hasNext, _that.isLoading, _that.errorMessage);
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
            List<ScrappedDiaryThumbnailResponse> thumbnails,
            List<ScrappedDiaryFeedResponse> feeds,
            int? nextCursor,
            bool hasNext,
            bool isLoading,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryState():
        return $default(_that.thumbnails, _that.feeds, _that.nextCursor,
            _that.hasNext, _that.isLoading, _that.errorMessage);
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
            List<ScrappedDiaryThumbnailResponse> thumbnails,
            List<ScrappedDiaryFeedResponse> feeds,
            int? nextCursor,
            bool hasNext,
            bool isLoading,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryState() when $default != null:
        return $default(_that.thumbnails, _that.feeds, _that.nextCursor,
            _that.hasNext, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ScrappedDiaryState implements ScrappedDiaryState {
  const _ScrappedDiaryState(
      {final List<ScrappedDiaryThumbnailResponse> thumbnails = const [],
      final List<ScrappedDiaryFeedResponse> feeds = const [],
      this.nextCursor,
      this.hasNext = true,
      this.isLoading = false,
      this.errorMessage})
      : _thumbnails = thumbnails,
        _feeds = feeds;

  final List<ScrappedDiaryThumbnailResponse> _thumbnails;
  @override
  @JsonKey()
  List<ScrappedDiaryThumbnailResponse> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  final List<ScrappedDiaryFeedResponse> _feeds;
  @override
  @JsonKey()
  List<ScrappedDiaryFeedResponse> get feeds {
    if (_feeds is EqualUnmodifiableListView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  final int? nextCursor;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of ScrappedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScrappedDiaryStateCopyWith<_ScrappedDiaryState> get copyWith =>
      __$ScrappedDiaryStateCopyWithImpl<_ScrappedDiaryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScrappedDiaryState &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            const DeepCollectionEquality().equals(other._feeds, _feeds) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
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
      errorMessage);

  @override
  String toString() {
    return 'ScrappedDiaryState(thumbnails: $thumbnails, feeds: $feeds, nextCursor: $nextCursor, hasNext: $hasNext, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ScrappedDiaryStateCopyWith<$Res>
    implements $ScrappedDiaryStateCopyWith<$Res> {
  factory _$ScrappedDiaryStateCopyWith(
          _ScrappedDiaryState value, $Res Function(_ScrappedDiaryState) _then) =
      __$ScrappedDiaryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ScrappedDiaryThumbnailResponse> thumbnails,
      List<ScrappedDiaryFeedResponse> feeds,
      int? nextCursor,
      bool hasNext,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$ScrappedDiaryStateCopyWithImpl<$Res>
    implements _$ScrappedDiaryStateCopyWith<$Res> {
  __$ScrappedDiaryStateCopyWithImpl(this._self, this._then);

  final _ScrappedDiaryState _self;
  final $Res Function(_ScrappedDiaryState) _then;

  /// Create a copy of ScrappedDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thumbnails = null,
    Object? feeds = null,
    Object? nextCursor = freezed,
    Object? hasNext = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_ScrappedDiaryState(
      thumbnails: null == thumbnails
          ? _self._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<ScrappedDiaryThumbnailResponse>,
      feeds: null == feeds
          ? _self._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<ScrappedDiaryFeedResponse>,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
