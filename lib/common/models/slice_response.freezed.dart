// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slice_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SliceResponse<T> {
  List<T> get content;
  PageableObject get pageable;
  bool get last;
  int get numberOfElements;
  int get size;
  int get number;
  SortObject get sort;
  bool get first;
  bool get empty;

  /// Create a copy of SliceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SliceResponseCopyWith<T, SliceResponse<T>> get copyWith =>
      _$SliceResponseCopyWithImpl<T, SliceResponse<T>>(
          this as SliceResponse<T>, _$identity);

  /// Serializes this SliceResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SliceResponse<T> &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      pageable,
      last,
      numberOfElements,
      size,
      number,
      sort,
      first,
      empty);

  @override
  String toString() {
    return 'SliceResponse<$T>(content: $content, pageable: $pageable, last: $last, numberOfElements: $numberOfElements, size: $size, number: $number, sort: $sort, first: $first, empty: $empty)';
  }
}

/// @nodoc
abstract mixin class $SliceResponseCopyWith<T, $Res> {
  factory $SliceResponseCopyWith(
          SliceResponse<T> value, $Res Function(SliceResponse<T>) _then) =
      _$SliceResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<T> content,
      PageableObject pageable,
      bool last,
      int numberOfElements,
      int size,
      int number,
      SortObject sort,
      bool first,
      bool empty});

  $PageableObjectCopyWith<$Res> get pageable;
  $SortObjectCopyWith<$Res> get sort;
}

/// @nodoc
class _$SliceResponseCopyWithImpl<T, $Res>
    implements $SliceResponseCopyWith<T, $Res> {
  _$SliceResponseCopyWithImpl(this._self, this._then);

  final SliceResponse<T> _self;
  final $Res Function(SliceResponse<T>) _then;

  /// Create a copy of SliceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? last = null,
    Object? numberOfElements = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? first = null,
    Object? empty = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pageable: null == pageable
          ? _self.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as PageableObject,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _self.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortObject,
      first: null == first
          ? _self.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SliceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableObjectCopyWith<$Res> get pageable {
    return $PageableObjectCopyWith<$Res>(_self.pageable, (value) {
      return _then(_self.copyWith(pageable: value));
    });
  }

  /// Create a copy of SliceResponse
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
@JsonSerializable(genericArgumentFactories: true)
class _SliceResponse<T> implements SliceResponse<T> {
  const _SliceResponse(
      {required final List<T> content,
      required this.pageable,
      this.last = false,
      this.numberOfElements = 0,
      this.size = 0,
      this.number = 0,
      required this.sort,
      this.first = false,
      this.empty = false})
      : _content = content;
  factory _SliceResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$SliceResponseFromJson(json, fromJsonT);

  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final PageableObject pageable;
  @override
  @JsonKey()
  final bool last;
  @override
  @JsonKey()
  final int numberOfElements;
  @override
  @JsonKey()
  final int size;
  @override
  @JsonKey()
  final int number;
  @override
  final SortObject sort;
  @override
  @JsonKey()
  final bool first;
  @override
  @JsonKey()
  final bool empty;

  /// Create a copy of SliceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SliceResponseCopyWith<T, _SliceResponse<T>> get copyWith =>
      __$SliceResponseCopyWithImpl<T, _SliceResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$SliceResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SliceResponse<T> &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      pageable,
      last,
      numberOfElements,
      size,
      number,
      sort,
      first,
      empty);

  @override
  String toString() {
    return 'SliceResponse<$T>(content: $content, pageable: $pageable, last: $last, numberOfElements: $numberOfElements, size: $size, number: $number, sort: $sort, first: $first, empty: $empty)';
  }
}

/// @nodoc
abstract mixin class _$SliceResponseCopyWith<T, $Res>
    implements $SliceResponseCopyWith<T, $Res> {
  factory _$SliceResponseCopyWith(
          _SliceResponse<T> value, $Res Function(_SliceResponse<T>) _then) =
      __$SliceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<T> content,
      PageableObject pageable,
      bool last,
      int numberOfElements,
      int size,
      int number,
      SortObject sort,
      bool first,
      bool empty});

  @override
  $PageableObjectCopyWith<$Res> get pageable;
  @override
  $SortObjectCopyWith<$Res> get sort;
}

/// @nodoc
class __$SliceResponseCopyWithImpl<T, $Res>
    implements _$SliceResponseCopyWith<T, $Res> {
  __$SliceResponseCopyWithImpl(this._self, this._then);

  final _SliceResponse<T> _self;
  final $Res Function(_SliceResponse<T>) _then;

  /// Create a copy of SliceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? last = null,
    Object? numberOfElements = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? first = null,
    Object? empty = null,
  }) {
    return _then(_SliceResponse<T>(
      content: null == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pageable: null == pageable
          ? _self.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as PageableObject,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _self.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortObject,
      first: null == first
          ? _self.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SliceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableObjectCopyWith<$Res> get pageable {
    return $PageableObjectCopyWith<$Res>(_self.pageable, (value) {
      return _then(_self.copyWith(pageable: value));
    });
  }

  /// Create a copy of SliceResponse
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
