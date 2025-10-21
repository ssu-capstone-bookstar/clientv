// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_log_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookLogState {
  ProfileWithCounts get profile;
  List<DiaryThumbnail> get thumbnails;
  List<DiaryResponse> get feeds;
  bool get feedHasNext;
  int get feedNextCursor;
  bool get personalizedFeedHasNext;
  int get personalizedFeedNextCursor;
  int? get memberId;

  /// Create a copy of BookLogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookLogStateCopyWith<BookLogState> get copyWith =>
      _$BookLogStateCopyWithImpl<BookLogState>(
          this as BookLogState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookLogState &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.feeds, feeds) &&
            (identical(other.feedHasNext, feedHasNext) ||
                other.feedHasNext == feedHasNext) &&
            (identical(other.feedNextCursor, feedNextCursor) ||
                other.feedNextCursor == feedNextCursor) &&
            (identical(
                    other.personalizedFeedHasNext, personalizedFeedHasNext) ||
                other.personalizedFeedHasNext == personalizedFeedHasNext) &&
            (identical(other.personalizedFeedNextCursor,
                    personalizedFeedNextCursor) ||
                other.personalizedFeedNextCursor ==
                    personalizedFeedNextCursor) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(feeds),
      feedHasNext,
      feedNextCursor,
      personalizedFeedHasNext,
      personalizedFeedNextCursor,
      memberId);

  @override
  String toString() {
    return 'BookLogState(profile: $profile, thumbnails: $thumbnails, feeds: $feeds, feedHasNext: $feedHasNext, feedNextCursor: $feedNextCursor, personalizedFeedHasNext: $personalizedFeedHasNext, personalizedFeedNextCursor: $personalizedFeedNextCursor, memberId: $memberId)';
  }
}

/// @nodoc
abstract mixin class $BookLogStateCopyWith<$Res> {
  factory $BookLogStateCopyWith(
          BookLogState value, $Res Function(BookLogState) _then) =
      _$BookLogStateCopyWithImpl;
  @useResult
  $Res call(
      {ProfileWithCounts profile,
      List<DiaryThumbnail> thumbnails,
      List<DiaryResponse> feeds,
      bool feedHasNext,
      int feedNextCursor,
      bool personalizedFeedHasNext,
      int personalizedFeedNextCursor,
      int? memberId});

  $ProfileWithCountsCopyWith<$Res> get profile;
}

/// @nodoc
class _$BookLogStateCopyWithImpl<$Res> implements $BookLogStateCopyWith<$Res> {
  _$BookLogStateCopyWithImpl(this._self, this._then);

  final BookLogState _self;
  final $Res Function(BookLogState) _then;

  /// Create a copy of BookLogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? thumbnails = null,
    Object? feeds = null,
    Object? feedHasNext = null,
    Object? feedNextCursor = null,
    Object? personalizedFeedHasNext = null,
    Object? personalizedFeedNextCursor = null,
    Object? memberId = freezed,
  }) {
    return _then(_self.copyWith(
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileWithCounts,
      thumbnails: null == thumbnails
          ? _self.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<DiaryThumbnail>,
      feeds: null == feeds
          ? _self.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<DiaryResponse>,
      feedHasNext: null == feedHasNext
          ? _self.feedHasNext
          : feedHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      feedNextCursor: null == feedNextCursor
          ? _self.feedNextCursor
          : feedNextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      personalizedFeedHasNext: null == personalizedFeedHasNext
          ? _self.personalizedFeedHasNext
          : personalizedFeedHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      personalizedFeedNextCursor: null == personalizedFeedNextCursor
          ? _self.personalizedFeedNextCursor
          : personalizedFeedNextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: freezed == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of BookLogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileWithCountsCopyWith<$Res> get profile {
    return $ProfileWithCountsCopyWith<$Res>(_self.profile, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookLogState].
extension BookLogStatePatterns on BookLogState {
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
    TResult Function(_BookLogState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookLogState() when $default != null:
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
    TResult Function(_BookLogState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookLogState():
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
    TResult? Function(_BookLogState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookLogState() when $default != null:
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
            ProfileWithCounts profile,
            List<DiaryThumbnail> thumbnails,
            List<DiaryResponse> feeds,
            bool feedHasNext,
            int feedNextCursor,
            bool personalizedFeedHasNext,
            int personalizedFeedNextCursor,
            int? memberId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookLogState() when $default != null:
        return $default(
            _that.profile,
            _that.thumbnails,
            _that.feeds,
            _that.feedHasNext,
            _that.feedNextCursor,
            _that.personalizedFeedHasNext,
            _that.personalizedFeedNextCursor,
            _that.memberId);
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
            ProfileWithCounts profile,
            List<DiaryThumbnail> thumbnails,
            List<DiaryResponse> feeds,
            bool feedHasNext,
            int feedNextCursor,
            bool personalizedFeedHasNext,
            int personalizedFeedNextCursor,
            int? memberId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookLogState():
        return $default(
            _that.profile,
            _that.thumbnails,
            _that.feeds,
            _that.feedHasNext,
            _that.feedNextCursor,
            _that.personalizedFeedHasNext,
            _that.personalizedFeedNextCursor,
            _that.memberId);
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
            ProfileWithCounts profile,
            List<DiaryThumbnail> thumbnails,
            List<DiaryResponse> feeds,
            bool feedHasNext,
            int feedNextCursor,
            bool personalizedFeedHasNext,
            int personalizedFeedNextCursor,
            int? memberId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookLogState() when $default != null:
        return $default(
            _that.profile,
            _that.thumbnails,
            _that.feeds,
            _that.feedHasNext,
            _that.feedNextCursor,
            _that.personalizedFeedHasNext,
            _that.personalizedFeedNextCursor,
            _that.memberId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BookLogState implements BookLogState {
  const _BookLogState(
      {this.profile = const ProfileWithCounts(),
      final List<DiaryThumbnail> thumbnails = const [],
      final List<DiaryResponse> feeds = const [],
      this.feedHasNext = false,
      this.feedNextCursor = -1,
      this.personalizedFeedHasNext = false,
      this.personalizedFeedNextCursor = -1,
      this.memberId})
      : _thumbnails = thumbnails,
        _feeds = feeds;

  @override
  @JsonKey()
  final ProfileWithCounts profile;
  final List<DiaryThumbnail> _thumbnails;
  @override
  @JsonKey()
  List<DiaryThumbnail> get thumbnails {
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
  final bool feedHasNext;
  @override
  @JsonKey()
  final int feedNextCursor;
  @override
  @JsonKey()
  final bool personalizedFeedHasNext;
  @override
  @JsonKey()
  final int personalizedFeedNextCursor;
  @override
  final int? memberId;

  /// Create a copy of BookLogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookLogStateCopyWith<_BookLogState> get copyWith =>
      __$BookLogStateCopyWithImpl<_BookLogState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookLogState &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            const DeepCollectionEquality().equals(other._feeds, _feeds) &&
            (identical(other.feedHasNext, feedHasNext) ||
                other.feedHasNext == feedHasNext) &&
            (identical(other.feedNextCursor, feedNextCursor) ||
                other.feedNextCursor == feedNextCursor) &&
            (identical(
                    other.personalizedFeedHasNext, personalizedFeedHasNext) ||
                other.personalizedFeedHasNext == personalizedFeedHasNext) &&
            (identical(other.personalizedFeedNextCursor,
                    personalizedFeedNextCursor) ||
                other.personalizedFeedNextCursor ==
                    personalizedFeedNextCursor) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      const DeepCollectionEquality().hash(_thumbnails),
      const DeepCollectionEquality().hash(_feeds),
      feedHasNext,
      feedNextCursor,
      personalizedFeedHasNext,
      personalizedFeedNextCursor,
      memberId);

  @override
  String toString() {
    return 'BookLogState(profile: $profile, thumbnails: $thumbnails, feeds: $feeds, feedHasNext: $feedHasNext, feedNextCursor: $feedNextCursor, personalizedFeedHasNext: $personalizedFeedHasNext, personalizedFeedNextCursor: $personalizedFeedNextCursor, memberId: $memberId)';
  }
}

/// @nodoc
abstract mixin class _$BookLogStateCopyWith<$Res>
    implements $BookLogStateCopyWith<$Res> {
  factory _$BookLogStateCopyWith(
          _BookLogState value, $Res Function(_BookLogState) _then) =
      __$BookLogStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProfileWithCounts profile,
      List<DiaryThumbnail> thumbnails,
      List<DiaryResponse> feeds,
      bool feedHasNext,
      int feedNextCursor,
      bool personalizedFeedHasNext,
      int personalizedFeedNextCursor,
      int? memberId});

  @override
  $ProfileWithCountsCopyWith<$Res> get profile;
}

/// @nodoc
class __$BookLogStateCopyWithImpl<$Res>
    implements _$BookLogStateCopyWith<$Res> {
  __$BookLogStateCopyWithImpl(this._self, this._then);

  final _BookLogState _self;
  final $Res Function(_BookLogState) _then;

  /// Create a copy of BookLogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profile = null,
    Object? thumbnails = null,
    Object? feeds = null,
    Object? feedHasNext = null,
    Object? feedNextCursor = null,
    Object? personalizedFeedHasNext = null,
    Object? personalizedFeedNextCursor = null,
    Object? memberId = freezed,
  }) {
    return _then(_BookLogState(
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileWithCounts,
      thumbnails: null == thumbnails
          ? _self._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<DiaryThumbnail>,
      feeds: null == feeds
          ? _self._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<DiaryResponse>,
      feedHasNext: null == feedHasNext
          ? _self.feedHasNext
          : feedHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      feedNextCursor: null == feedNextCursor
          ? _self.feedNextCursor
          : feedNextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      personalizedFeedHasNext: null == personalizedFeedHasNext
          ? _self.personalizedFeedHasNext
          : personalizedFeedHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      personalizedFeedNextCursor: null == personalizedFeedNextCursor
          ? _self.personalizedFeedNextCursor
          : personalizedFeedNextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: freezed == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of BookLogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileWithCountsCopyWith<$Res> get profile {
    return $ProfileWithCountsCopyWith<$Res>(_self.profile, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }
}

// dart format on
