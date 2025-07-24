// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedCommentState {
  List<DiaryCommentResponse> get comments;
  bool get hasNext;
  int get nextCursor;
  int get diaryId;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedCommentStateCopyWith<FeedCommentState> get copyWith =>
      _$FeedCommentStateCopyWithImpl<FeedCommentState>(
          this as FeedCommentState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedCommentState &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comments),
      hasNext,
      nextCursor,
      diaryId);

  @override
  String toString() {
    return 'FeedCommentState(comments: $comments, hasNext: $hasNext, nextCursor: $nextCursor, diaryId: $diaryId)';
  }
}

/// @nodoc
abstract mixin class $FeedCommentStateCopyWith<$Res> {
  factory $FeedCommentStateCopyWith(
          FeedCommentState value, $Res Function(FeedCommentState) _then) =
      _$FeedCommentStateCopyWithImpl;
  @useResult
  $Res call(
      {List<DiaryCommentResponse> comments,
      bool hasNext,
      int nextCursor,
      int diaryId});
}

/// @nodoc
class _$FeedCommentStateCopyWithImpl<$Res>
    implements $FeedCommentStateCopyWith<$Res> {
  _$FeedCommentStateCopyWithImpl(this._self, this._then);

  final FeedCommentState _self;
  final $Res Function(FeedCommentState) _then;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? hasNext = null,
    Object? nextCursor = null,
    Object? diaryId = null,
  }) {
    return _then(_self.copyWith(
      comments: null == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<DiaryCommentResponse>,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [FeedCommentState].
extension FeedCommentStatePatterns on FeedCommentState {
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
    TResult Function(_FeedCommentState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedCommentState() when $default != null:
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
    TResult Function(_FeedCommentState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedCommentState():
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
    TResult? Function(_FeedCommentState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedCommentState() when $default != null:
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
    TResult Function(List<DiaryCommentResponse> comments, bool hasNext,
            int nextCursor, int diaryId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedCommentState() when $default != null:
        return $default(
            _that.comments, _that.hasNext, _that.nextCursor, _that.diaryId);
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
    TResult Function(List<DiaryCommentResponse> comments, bool hasNext,
            int nextCursor, int diaryId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedCommentState():
        return $default(
            _that.comments, _that.hasNext, _that.nextCursor, _that.diaryId);
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
    TResult? Function(List<DiaryCommentResponse> comments, bool hasNext,
            int nextCursor, int diaryId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedCommentState() when $default != null:
        return $default(
            _that.comments, _that.hasNext, _that.nextCursor, _that.diaryId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FeedCommentState implements FeedCommentState {
  const _FeedCommentState(
      {final List<DiaryCommentResponse> comments = const [],
      this.hasNext = false,
      this.nextCursor = -1,
      this.diaryId = -1})
      : _comments = comments;

  final List<DiaryCommentResponse> _comments;
  @override
  @JsonKey()
  List<DiaryCommentResponse> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final int nextCursor;
  @override
  @JsonKey()
  final int diaryId;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedCommentStateCopyWith<_FeedCommentState> get copyWith =>
      __$FeedCommentStateCopyWithImpl<_FeedCommentState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedCommentState &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      hasNext,
      nextCursor,
      diaryId);

  @override
  String toString() {
    return 'FeedCommentState(comments: $comments, hasNext: $hasNext, nextCursor: $nextCursor, diaryId: $diaryId)';
  }
}

/// @nodoc
abstract mixin class _$FeedCommentStateCopyWith<$Res>
    implements $FeedCommentStateCopyWith<$Res> {
  factory _$FeedCommentStateCopyWith(
          _FeedCommentState value, $Res Function(_FeedCommentState) _then) =
      __$FeedCommentStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<DiaryCommentResponse> comments,
      bool hasNext,
      int nextCursor,
      int diaryId});
}

/// @nodoc
class __$FeedCommentStateCopyWithImpl<$Res>
    implements _$FeedCommentStateCopyWith<$Res> {
  __$FeedCommentStateCopyWithImpl(this._self, this._then);

  final _FeedCommentState _self;
  final $Res Function(_FeedCommentState) _then;

  /// Create a copy of FeedCommentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? comments = null,
    Object? hasNext = null,
    Object? nextCursor = null,
    Object? diaryId = null,
  }) {
    return _then(_FeedCommentState(
      comments: null == comments
          ? _self._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<DiaryCommentResponse>,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
