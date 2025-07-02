// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SortObject {
  bool get empty;
  bool get sorted;
  bool get unsorted;

  /// Create a copy of SortObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SortObjectCopyWith<SortObject> get copyWith =>
      _$SortObjectCopyWithImpl<SortObject>(this as SortObject, _$identity);

  /// Serializes this SortObject to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SortObject &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @override
  String toString() {
    return 'SortObject(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }
}

/// @nodoc
abstract mixin class $SortObjectCopyWith<$Res> {
  factory $SortObjectCopyWith(
          SortObject value, $Res Function(SortObject) _then) =
      _$SortObjectCopyWithImpl;
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class _$SortObjectCopyWithImpl<$Res> implements $SortObjectCopyWith<$Res> {
  _$SortObjectCopyWithImpl(this._self, this._then);

  final SortObject _self;
  final $Res Function(SortObject) _then;

  /// Create a copy of SortObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_self.copyWith(
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _self.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _self.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SortObject implements SortObject {
  const _SortObject(
      {this.empty = false, this.sorted = false, this.unsorted = false});
  factory _SortObject.fromJson(Map<String, dynamic> json) =>
      _$SortObjectFromJson(json);

  @override
  @JsonKey()
  final bool empty;
  @override
  @JsonKey()
  final bool sorted;
  @override
  @JsonKey()
  final bool unsorted;

  /// Create a copy of SortObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SortObjectCopyWith<_SortObject> get copyWith =>
      __$SortObjectCopyWithImpl<_SortObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SortObjectToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SortObject &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @override
  String toString() {
    return 'SortObject(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }
}

/// @nodoc
abstract mixin class _$SortObjectCopyWith<$Res>
    implements $SortObjectCopyWith<$Res> {
  factory _$SortObjectCopyWith(
          _SortObject value, $Res Function(_SortObject) _then) =
      __$SortObjectCopyWithImpl;
  @override
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class __$SortObjectCopyWithImpl<$Res> implements _$SortObjectCopyWith<$Res> {
  __$SortObjectCopyWithImpl(this._self, this._then);

  final _SortObject _self;
  final $Res Function(_SortObject) _then;

  /// Create a copy of SortObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_SortObject(
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _self.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _self.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
