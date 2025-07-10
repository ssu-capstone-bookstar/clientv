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
  List<RelatedDiaryThumbnail> get diaries;
  int? get nextCursor;
  Object? get nextSubCursor;
  bool get hasNext;

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
            const DeepCollectionEquality().equals(other.diaries, diaries) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            const DeepCollectionEquality()
                .equals(other.nextSubCursor, nextSubCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(diaries),
      nextCursor,
      const DeepCollectionEquality().hash(nextSubCursor),
      hasNext);

  @override
  String toString() {
    return 'RelatedDiaryState(diaries: $diaries, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $RelatedDiaryStateCopyWith<$Res> {
  factory $RelatedDiaryStateCopyWith(
          RelatedDiaryState value, $Res Function(RelatedDiaryState) _then) =
      _$RelatedDiaryStateCopyWithImpl;
  @useResult
  $Res call(
      {List<RelatedDiaryThumbnail> diaries,
      int? nextCursor,
      Object? nextSubCursor,
      bool hasNext});
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
    Object? diaries = null,
    Object? nextCursor = freezed,
    Object? nextSubCursor = freezed,
    Object? hasNext = null,
  }) {
    return _then(_self.copyWith(
      diaries: null == diaries
          ? _self.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<RelatedDiaryThumbnail>,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
      nextSubCursor:
          freezed == nextSubCursor ? _self.nextSubCursor : nextSubCursor,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
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
    TResult Function(List<RelatedDiaryThumbnail> diaries, int? nextCursor,
            Object? nextSubCursor, bool hasNext)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState() when $default != null:
        return $default(_that.diaries, _that.nextCursor, _that.nextSubCursor,
            _that.hasNext);
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
    TResult Function(List<RelatedDiaryThumbnail> diaries, int? nextCursor,
            Object? nextSubCursor, bool hasNext)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState():
        return $default(_that.diaries, _that.nextCursor, _that.nextSubCursor,
            _that.hasNext);
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
    TResult? Function(List<RelatedDiaryThumbnail> diaries, int? nextCursor,
            Object? nextSubCursor, bool hasNext)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelatedDiaryState() when $default != null:
        return $default(_that.diaries, _that.nextCursor, _that.nextSubCursor,
            _that.hasNext);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RelatedDiaryState implements RelatedDiaryState {
  const _RelatedDiaryState(
      {final List<RelatedDiaryThumbnail> diaries = const [],
      this.nextCursor,
      this.nextSubCursor,
      this.hasNext = true})
      : _diaries = diaries;

  final List<RelatedDiaryThumbnail> _diaries;
  @override
  @JsonKey()
  List<RelatedDiaryThumbnail> get diaries {
    if (_diaries is EqualUnmodifiableListView) return _diaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diaries);
  }

  @override
  final int? nextCursor;
  @override
  final Object? nextSubCursor;
  @override
  @JsonKey()
  final bool hasNext;

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
            const DeepCollectionEquality().equals(other._diaries, _diaries) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            const DeepCollectionEquality()
                .equals(other.nextSubCursor, nextSubCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_diaries),
      nextCursor,
      const DeepCollectionEquality().hash(nextSubCursor),
      hasNext);

  @override
  String toString() {
    return 'RelatedDiaryState(diaries: $diaries, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext)';
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
      {List<RelatedDiaryThumbnail> diaries,
      int? nextCursor,
      Object? nextSubCursor,
      bool hasNext});
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
    Object? diaries = null,
    Object? nextCursor = freezed,
    Object? nextSubCursor = freezed,
    Object? hasNext = null,
  }) {
    return _then(_RelatedDiaryState(
      diaries: null == diaries
          ? _self._diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<RelatedDiaryThumbnail>,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
      nextSubCursor:
          freezed == nextSubCursor ? _self.nextSubCursor : nextSubCursor,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
