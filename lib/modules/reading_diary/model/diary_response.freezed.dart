// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryResponse {
  int get diaryId;
  int get startPage;
  int get endPage;
  String get content;
  List<DiaryImageResponse> get images;
  String get decoration;
  DateTime get createdAt;

  /// Create a copy of DiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryResponseCopyWith<DiaryResponse> get copyWith =>
      _$DiaryResponseCopyWithImpl<DiaryResponse>(
          this as DiaryResponse, _$identity);

  /// Serializes this DiaryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryResponse &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diaryId,
      startPage,
      endPage,
      content,
      const DeepCollectionEquality().hash(images),
      decoration,
      createdAt);

  @override
  String toString() {
    return 'DiaryResponse(diaryId: $diaryId, startPage: $startPage, endPage: $endPage, content: $content, images: $images, decoration: $decoration, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $DiaryResponseCopyWith<$Res> {
  factory $DiaryResponseCopyWith(
          DiaryResponse value, $Res Function(DiaryResponse) _then) =
      _$DiaryResponseCopyWithImpl;
  @useResult
  $Res call(
      {int diaryId,
      int startPage,
      int endPage,
      String content,
      List<DiaryImageResponse> images,
      String decoration,
      DateTime createdAt});
}

/// @nodoc
class _$DiaryResponseCopyWithImpl<$Res>
    implements $DiaryResponseCopyWith<$Res> {
  _$DiaryResponseCopyWithImpl(this._self, this._then);

  final DiaryResponse _self;
  final $Res Function(DiaryResponse) _then;

  /// Create a copy of DiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? startPage = null,
    Object? endPage = null,
    Object? content = null,
    Object? images = null,
    Object? decoration = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      startPage: null == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      endPage: null == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DiaryImageResponse>,
      decoration: null == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryResponse implements DiaryResponse {
  const _DiaryResponse(
      {required this.diaryId,
      this.startPage = 0,
      this.endPage = 0,
      this.content = '',
      final List<DiaryImageResponse> images = const [],
      this.decoration = '',
      required this.createdAt})
      : _images = images;
  factory _DiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryResponseFromJson(json);

  @override
  final int diaryId;
  @override
  @JsonKey()
  final int startPage;
  @override
  @JsonKey()
  final int endPage;
  @override
  @JsonKey()
  final String content;
  final List<DiaryImageResponse> _images;
  @override
  @JsonKey()
  List<DiaryImageResponse> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String decoration;
  @override
  final DateTime createdAt;

  /// Create a copy of DiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryResponseCopyWith<_DiaryResponse> get copyWith =>
      __$DiaryResponseCopyWithImpl<_DiaryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryResponse &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diaryId,
      startPage,
      endPage,
      content,
      const DeepCollectionEquality().hash(_images),
      decoration,
      createdAt);

  @override
  String toString() {
    return 'DiaryResponse(diaryId: $diaryId, startPage: $startPage, endPage: $endPage, content: $content, images: $images, decoration: $decoration, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$DiaryResponseCopyWith<$Res>
    implements $DiaryResponseCopyWith<$Res> {
  factory _$DiaryResponseCopyWith(
          _DiaryResponse value, $Res Function(_DiaryResponse) _then) =
      __$DiaryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int diaryId,
      int startPage,
      int endPage,
      String content,
      List<DiaryImageResponse> images,
      String decoration,
      DateTime createdAt});
}

/// @nodoc
class __$DiaryResponseCopyWithImpl<$Res>
    implements _$DiaryResponseCopyWith<$Res> {
  __$DiaryResponseCopyWithImpl(this._self, this._then);

  final _DiaryResponse _self;
  final $Res Function(_DiaryResponse) _then;

  /// Create a copy of DiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? startPage = null,
    Object? endPage = null,
    Object? content = null,
    Object? images = null,
    Object? decoration = null,
    Object? createdAt = null,
  }) {
    return _then(_DiaryResponse(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      startPage: null == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      endPage: null == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DiaryImageResponse>,
      decoration: null == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
