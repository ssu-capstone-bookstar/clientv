// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryRequest {
  int get bookId;
  int? get startPage;
  int? get endPage;
  String get content;
  List<ImageRequest> get images;

  /// Create a copy of DiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryRequestCopyWith<DiaryRequest> get copyWith =>
      _$DiaryRequestCopyWithImpl<DiaryRequest>(
          this as DiaryRequest, _$identity);

  /// Serializes this DiaryRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, startPage, endPage,
      content, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'DiaryRequest(bookId: $bookId, startPage: $startPage, endPage: $endPage, content: $content, images: $images)';
  }
}

/// @nodoc
abstract mixin class $DiaryRequestCopyWith<$Res> {
  factory $DiaryRequestCopyWith(
          DiaryRequest value, $Res Function(DiaryRequest) _then) =
      _$DiaryRequestCopyWithImpl;
  @useResult
  $Res call(
      {int bookId,
      int? startPage,
      int? endPage,
      String content,
      List<ImageRequest> images});
}

/// @nodoc
class _$DiaryRequestCopyWithImpl<$Res> implements $DiaryRequestCopyWith<$Res> {
  _$DiaryRequestCopyWithImpl(this._self, this._then);

  final DiaryRequest _self;
  final $Res Function(DiaryRequest) _then;

  /// Create a copy of DiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? startPage = freezed,
    Object? endPage = freezed,
    Object? content = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      startPage: freezed == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int?,
      endPage: freezed == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageRequest>,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiaryRequest].
extension DiaryRequestPatterns on DiaryRequest {
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
    TResult Function(_DiaryRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryRequest() when $default != null:
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
    TResult Function(_DiaryRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryRequest():
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
    TResult? Function(_DiaryRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryRequest() when $default != null:
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
    TResult Function(int bookId, int? startPage, int? endPage, String content,
            List<ImageRequest> images)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryRequest() when $default != null:
        return $default(_that.bookId, _that.startPage, _that.endPage,
            _that.content, _that.images);
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
    TResult Function(int bookId, int? startPage, int? endPage, String content,
            List<ImageRequest> images)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryRequest():
        return $default(_that.bookId, _that.startPage, _that.endPage,
            _that.content, _that.images);
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
    TResult? Function(int bookId, int? startPage, int? endPage, String content,
            List<ImageRequest> images)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryRequest() when $default != null:
        return $default(_that.bookId, _that.startPage, _that.endPage,
            _that.content, _that.images);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryRequest implements DiaryRequest {
  const _DiaryRequest(
      {this.bookId = 0,
      this.startPage,
      this.endPage,
      this.content = '',
      final List<ImageRequest> images = const []})
      : _images = images;
  factory _DiaryRequest.fromJson(Map<String, dynamic> json) =>
      _$DiaryRequestFromJson(json);

  @override
  @JsonKey()
  final int bookId;
  @override
  final int? startPage;
  @override
  final int? endPage;
  @override
  @JsonKey()
  final String content;
  final List<ImageRequest> _images;
  @override
  @JsonKey()
  List<ImageRequest> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of DiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryRequestCopyWith<_DiaryRequest> get copyWith =>
      __$DiaryRequestCopyWithImpl<_DiaryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, startPage, endPage,
      content, const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'DiaryRequest(bookId: $bookId, startPage: $startPage, endPage: $endPage, content: $content, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$DiaryRequestCopyWith<$Res>
    implements $DiaryRequestCopyWith<$Res> {
  factory _$DiaryRequestCopyWith(
          _DiaryRequest value, $Res Function(_DiaryRequest) _then) =
      __$DiaryRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int bookId,
      int? startPage,
      int? endPage,
      String content,
      List<ImageRequest> images});
}

/// @nodoc
class __$DiaryRequestCopyWithImpl<$Res>
    implements _$DiaryRequestCopyWith<$Res> {
  __$DiaryRequestCopyWithImpl(this._self, this._then);

  final _DiaryRequest _self;
  final $Res Function(_DiaryRequest) _then;

  /// Create a copy of DiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
    Object? startPage = freezed,
    Object? endPage = freezed,
    Object? content = null,
    Object? images = null,
  }) {
    return _then(_DiaryRequest(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      startPage: freezed == startPage
          ? _self.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int?,
      endPage: freezed == endPage
          ? _self.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageRequest>,
    ));
  }
}

// dart format on
