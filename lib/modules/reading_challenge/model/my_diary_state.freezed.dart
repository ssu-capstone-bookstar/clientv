// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_diary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyDiaryState {
  List<MyDiaryThumbnail> get diaries;
  int? get nextCursor;
  Object? get nextSubCursor;
  bool get hasNext;

  /// Create a copy of MyDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyDiaryStateCopyWith<MyDiaryState> get copyWith =>
      _$MyDiaryStateCopyWithImpl<MyDiaryState>(
          this as MyDiaryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyDiaryState &&
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
    return 'MyDiaryState(diaries: $diaries, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $MyDiaryStateCopyWith<$Res> {
  factory $MyDiaryStateCopyWith(
          MyDiaryState value, $Res Function(MyDiaryState) _then) =
      _$MyDiaryStateCopyWithImpl;
  @useResult
  $Res call(
      {List<MyDiaryThumbnail> diaries,
      int? nextCursor,
      Object? nextSubCursor,
      bool hasNext});
}

/// @nodoc
class _$MyDiaryStateCopyWithImpl<$Res> implements $MyDiaryStateCopyWith<$Res> {
  _$MyDiaryStateCopyWithImpl(this._self, this._then);

  final MyDiaryState _self;
  final $Res Function(MyDiaryState) _then;

  /// Create a copy of MyDiaryState
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
              as List<MyDiaryThumbnail>,
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

/// Adds pattern-matching-related methods to [MyDiaryState].
extension MyDiaryStatePatterns on MyDiaryState {
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
    TResult Function(_MyDiaryState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyDiaryState() when $default != null:
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
    TResult Function(_MyDiaryState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryState():
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
    TResult? Function(_MyDiaryState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryState() when $default != null:
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
    TResult Function(List<MyDiaryThumbnail> diaries, int? nextCursor,
            Object? nextSubCursor, bool hasNext)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyDiaryState() when $default != null:
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
    TResult Function(List<MyDiaryThumbnail> diaries, int? nextCursor,
            Object? nextSubCursor, bool hasNext)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryState():
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
    TResult? Function(List<MyDiaryThumbnail> diaries, int? nextCursor,
            Object? nextSubCursor, bool hasNext)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryState() when $default != null:
        return $default(_that.diaries, _that.nextCursor, _that.nextSubCursor,
            _that.hasNext);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MyDiaryState implements MyDiaryState {
  const _MyDiaryState(
      {final List<MyDiaryThumbnail> diaries = const [],
      this.nextCursor,
      this.nextSubCursor,
      this.hasNext = true})
      : _diaries = diaries;

  final List<MyDiaryThumbnail> _diaries;
  @override
  @JsonKey()
  List<MyDiaryThumbnail> get diaries {
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

  /// Create a copy of MyDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyDiaryStateCopyWith<_MyDiaryState> get copyWith =>
      __$MyDiaryStateCopyWithImpl<_MyDiaryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyDiaryState &&
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
    return 'MyDiaryState(diaries: $diaries, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class _$MyDiaryStateCopyWith<$Res>
    implements $MyDiaryStateCopyWith<$Res> {
  factory _$MyDiaryStateCopyWith(
          _MyDiaryState value, $Res Function(_MyDiaryState) _then) =
      __$MyDiaryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<MyDiaryThumbnail> diaries,
      int? nextCursor,
      Object? nextSubCursor,
      bool hasNext});
}

/// @nodoc
class __$MyDiaryStateCopyWithImpl<$Res>
    implements _$MyDiaryStateCopyWith<$Res> {
  __$MyDiaryStateCopyWithImpl(this._self, this._then);

  final _MyDiaryState _self;
  final $Res Function(_MyDiaryState) _then;

  /// Create a copy of MyDiaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaries = null,
    Object? nextCursor = freezed,
    Object? nextSubCursor = freezed,
    Object? hasNext = null,
  }) {
    return _then(_MyDiaryState(
      diaries: null == diaries
          ? _self._diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<MyDiaryThumbnail>,
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
