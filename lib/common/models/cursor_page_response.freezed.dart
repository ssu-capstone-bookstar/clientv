// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CursorPageResponse<T> {
  List<T> get data;
  int? get nextCursor;
  bool get hasNext;

  /// Create a copy of CursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CursorPageResponseCopyWith<T, CursorPageResponse<T>> get copyWith =>
      _$CursorPageResponseCopyWithImpl<T, CursorPageResponse<T>>(
          this as CursorPageResponse<T>, _$identity);

  /// Serializes this CursorPageResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CursorPageResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), nextCursor, hasNext);

  @override
  String toString() {
    return 'CursorPageResponse<$T>(data: $data, nextCursor: $nextCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $CursorPageResponseCopyWith<T, $Res> {
  factory $CursorPageResponseCopyWith(CursorPageResponse<T> value,
          $Res Function(CursorPageResponse<T>) _then) =
      _$CursorPageResponseCopyWithImpl;
  @useResult
  $Res call({List<T> data, int? nextCursor, bool hasNext});
}

/// @nodoc
class _$CursorPageResponseCopyWithImpl<T, $Res>
    implements $CursorPageResponseCopyWith<T, $Res> {
  _$CursorPageResponseCopyWithImpl(this._self, this._then);

  final CursorPageResponse<T> _self;
  final $Res Function(CursorPageResponse<T>) _then;

  /// Create a copy of CursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextCursor = freezed,
    Object? hasNext = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CursorPageResponse].
extension CursorPageResponsePatterns<T> on CursorPageResponse<T> {
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
    TResult Function(_CursorPageResponse<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CursorPageResponse() when $default != null:
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
    TResult Function(_CursorPageResponse<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CursorPageResponse():
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
    TResult? Function(_CursorPageResponse<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CursorPageResponse() when $default != null:
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
    TResult Function(List<T> data, int? nextCursor, bool hasNext)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CursorPageResponse() when $default != null:
        return $default(_that.data, _that.nextCursor, _that.hasNext);
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
    TResult Function(List<T> data, int? nextCursor, bool hasNext) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CursorPageResponse():
        return $default(_that.data, _that.nextCursor, _that.hasNext);
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
    TResult? Function(List<T> data, int? nextCursor, bool hasNext)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CursorPageResponse() when $default != null:
        return $default(_that.data, _that.nextCursor, _that.hasNext);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _CursorPageResponse<T> implements CursorPageResponse<T> {
  const _CursorPageResponse(
      {required final List<T> data, this.nextCursor, required this.hasNext})
      : _data = data;
  factory _CursorPageResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$CursorPageResponseFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int? nextCursor;
  @override
  final bool hasNext;

  /// Create a copy of CursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CursorPageResponseCopyWith<T, _CursorPageResponse<T>> get copyWith =>
      __$CursorPageResponseCopyWithImpl<T, _CursorPageResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$CursorPageResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CursorPageResponse<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), nextCursor, hasNext);

  @override
  String toString() {
    return 'CursorPageResponse<$T>(data: $data, nextCursor: $nextCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class _$CursorPageResponseCopyWith<T, $Res>
    implements $CursorPageResponseCopyWith<T, $Res> {
  factory _$CursorPageResponseCopyWith(_CursorPageResponse<T> value,
          $Res Function(_CursorPageResponse<T>) _then) =
      __$CursorPageResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<T> data, int? nextCursor, bool hasNext});
}

/// @nodoc
class __$CursorPageResponseCopyWithImpl<T, $Res>
    implements _$CursorPageResponseCopyWith<T, $Res> {
  __$CursorPageResponseCopyWithImpl(this._self, this._then);

  final _CursorPageResponse<T> _self;
  final $Res Function(_CursorPageResponse<T>) _then;

  /// Create a copy of CursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? nextCursor = freezed,
    Object? hasNext = null,
  }) {
    return _then(_CursorPageResponse<T>(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
