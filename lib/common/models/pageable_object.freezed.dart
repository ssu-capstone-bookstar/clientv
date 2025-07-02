// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageableObject {
  int get offset;
  SortObject get sort;
  bool get unpaged;
  int get pageSize;
  bool get paged;
  int get pageNumber;

  /// Create a copy of PageableObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageableObjectCopyWith<PageableObject> get copyWith =>
      _$PageableObjectCopyWithImpl<PageableObject>(
          this as PageableObject, _$identity);

  /// Serializes this PageableObject to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageableObject &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, offset, sort, unpaged, pageSize, paged, pageNumber);

  @override
  String toString() {
    return 'PageableObject(offset: $offset, sort: $sort, unpaged: $unpaged, pageSize: $pageSize, paged: $paged, pageNumber: $pageNumber)';
  }
}

/// @nodoc
abstract mixin class $PageableObjectCopyWith<$Res> {
  factory $PageableObjectCopyWith(
          PageableObject value, $Res Function(PageableObject) _then) =
      _$PageableObjectCopyWithImpl;
  @useResult
  $Res call(
      {int offset,
      SortObject sort,
      bool unpaged,
      int pageSize,
      bool paged,
      int pageNumber});

  $SortObjectCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableObjectCopyWithImpl<$Res>
    implements $PageableObjectCopyWith<$Res> {
  _$PageableObjectCopyWithImpl(this._self, this._then);

  final PageableObject _self;
  final $Res Function(PageableObject) _then;

  /// Create a copy of PageableObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? sort = null,
    Object? unpaged = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? pageNumber = null,
  }) {
    return _then(_self.copyWith(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortObject,
      unpaged: null == unpaged
          ? _self.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _self.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of PageableObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortObjectCopyWith<$Res> get sort {
    return $SortObjectCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PageableObject implements PageableObject {
  const _PageableObject(
      {this.offset = 0,
      required this.sort,
      this.unpaged = false,
      this.pageSize = 0,
      this.paged = false,
      this.pageNumber = 0});
  factory _PageableObject.fromJson(Map<String, dynamic> json) =>
      _$PageableObjectFromJson(json);

  @override
  @JsonKey()
  final int offset;
  @override
  final SortObject sort;
  @override
  @JsonKey()
  final bool unpaged;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final bool paged;
  @override
  @JsonKey()
  final int pageNumber;

  /// Create a copy of PageableObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageableObjectCopyWith<_PageableObject> get copyWith =>
      __$PageableObjectCopyWithImpl<_PageableObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageableObjectToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageableObject &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, offset, sort, unpaged, pageSize, paged, pageNumber);

  @override
  String toString() {
    return 'PageableObject(offset: $offset, sort: $sort, unpaged: $unpaged, pageSize: $pageSize, paged: $paged, pageNumber: $pageNumber)';
  }
}

/// @nodoc
abstract mixin class _$PageableObjectCopyWith<$Res>
    implements $PageableObjectCopyWith<$Res> {
  factory _$PageableObjectCopyWith(
          _PageableObject value, $Res Function(_PageableObject) _then) =
      __$PageableObjectCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int offset,
      SortObject sort,
      bool unpaged,
      int pageSize,
      bool paged,
      int pageNumber});

  @override
  $SortObjectCopyWith<$Res> get sort;
}

/// @nodoc
class __$PageableObjectCopyWithImpl<$Res>
    implements _$PageableObjectCopyWith<$Res> {
  __$PageableObjectCopyWithImpl(this._self, this._then);

  final _PageableObject _self;
  final $Res Function(_PageableObject) _then;

  /// Create a copy of PageableObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? offset = null,
    Object? sort = null,
    Object? unpaged = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? pageNumber = null,
  }) {
    return _then(_PageableObject(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortObject,
      unpaged: null == unpaged
          ? _self.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _self.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of PageableObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortObjectCopyWith<$Res> get sort {
    return $SortObjectCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

// dart format on
