// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dual_cursor_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DualCursorPageResponse<T> {
  List<T> get data;
  int? get nextCursor;
  Object? get nextSubCursor;
  bool get hasNext;

  /// Create a copy of DualCursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DualCursorPageResponseCopyWith<T, DualCursorPageResponse<T>> get copyWith =>
      _$DualCursorPageResponseCopyWithImpl<T, DualCursorPageResponse<T>>(
          this as DualCursorPageResponse<T>, _$identity);

  /// Serializes this DualCursorPageResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DualCursorPageResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            const DeepCollectionEquality()
                .equals(other.nextSubCursor, nextSubCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      nextCursor,
      const DeepCollectionEquality().hash(nextSubCursor),
      hasNext);

  @override
  String toString() {
    return 'DualCursorPageResponse<$T>(data: $data, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $DualCursorPageResponseCopyWith<T, $Res> {
  factory $DualCursorPageResponseCopyWith(DualCursorPageResponse<T> value,
          $Res Function(DualCursorPageResponse<T>) _then) =
      _$DualCursorPageResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<T> data, int? nextCursor, Object? nextSubCursor, bool hasNext});
}

/// @nodoc
class _$DualCursorPageResponseCopyWithImpl<T, $Res>
    implements $DualCursorPageResponseCopyWith<T, $Res> {
  _$DualCursorPageResponseCopyWithImpl(this._self, this._then);

  final DualCursorPageResponse<T> _self;
  final $Res Function(DualCursorPageResponse<T>) _then;

  /// Create a copy of DualCursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextCursor = freezed,
    Object? nextSubCursor = freezed,
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
      nextSubCursor:
          freezed == nextSubCursor ? _self.nextSubCursor : nextSubCursor,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _DualCursorPageResponse<T> implements DualCursorPageResponse<T> {
  const _DualCursorPageResponse(
      {required final List<T> data,
      required this.nextCursor,
      this.nextSubCursor,
      required this.hasNext})
      : _data = data;
  factory _DualCursorPageResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$DualCursorPageResponseFromJson(json, fromJsonT);

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
  final Object? nextSubCursor;
  @override
  final bool hasNext;

  /// Create a copy of DualCursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DualCursorPageResponseCopyWith<T, _DualCursorPageResponse<T>>
      get copyWith =>
          __$DualCursorPageResponseCopyWithImpl<T, _DualCursorPageResponse<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$DualCursorPageResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DualCursorPageResponse<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            const DeepCollectionEquality()
                .equals(other.nextSubCursor, nextSubCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      nextCursor,
      const DeepCollectionEquality().hash(nextSubCursor),
      hasNext);

  @override
  String toString() {
    return 'DualCursorPageResponse<$T>(data: $data, nextCursor: $nextCursor, nextSubCursor: $nextSubCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class _$DualCursorPageResponseCopyWith<T, $Res>
    implements $DualCursorPageResponseCopyWith<T, $Res> {
  factory _$DualCursorPageResponseCopyWith(_DualCursorPageResponse<T> value,
          $Res Function(_DualCursorPageResponse<T>) _then) =
      __$DualCursorPageResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<T> data, int? nextCursor, Object? nextSubCursor, bool hasNext});
}

/// @nodoc
class __$DualCursorPageResponseCopyWithImpl<T, $Res>
    implements _$DualCursorPageResponseCopyWith<T, $Res> {
  __$DualCursorPageResponseCopyWithImpl(this._self, this._then);

  final _DualCursorPageResponse<T> _self;
  final $Res Function(_DualCursorPageResponse<T>) _then;

  /// Create a copy of DualCursorPageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? nextCursor = freezed,
    Object? nextSubCursor = freezed,
    Object? hasNext = null,
  }) {
    return _then(_DualCursorPageResponse<T>(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
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
