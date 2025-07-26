// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryUpdateRequest {
  String get content;
  List<ImageRequest> get images;

  /// Create a copy of DiaryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryUpdateRequestCopyWith<DiaryUpdateRequest> get copyWith =>
      _$DiaryUpdateRequestCopyWithImpl<DiaryUpdateRequest>(
          this as DiaryUpdateRequest, _$identity);

  /// Serializes this DiaryUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryUpdateRequest &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, content, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'DiaryUpdateRequest(content: $content, images: $images)';
  }
}

/// @nodoc
abstract mixin class $DiaryUpdateRequestCopyWith<$Res> {
  factory $DiaryUpdateRequestCopyWith(
          DiaryUpdateRequest value, $Res Function(DiaryUpdateRequest) _then) =
      _$DiaryUpdateRequestCopyWithImpl;
  @useResult
  $Res call({String content, List<ImageRequest> images});
}

/// @nodoc
class _$DiaryUpdateRequestCopyWithImpl<$Res>
    implements $DiaryUpdateRequestCopyWith<$Res> {
  _$DiaryUpdateRequestCopyWithImpl(this._self, this._then);

  final DiaryUpdateRequest _self;
  final $Res Function(DiaryUpdateRequest) _then;

  /// Create a copy of DiaryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
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

/// Adds pattern-matching-related methods to [DiaryUpdateRequest].
extension DiaryUpdateRequestPatterns on DiaryUpdateRequest {
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
    TResult Function(_DiaryUpdateRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryUpdateRequest() when $default != null:
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
    TResult Function(_DiaryUpdateRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryUpdateRequest():
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
    TResult? Function(_DiaryUpdateRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryUpdateRequest() when $default != null:
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
    TResult Function(String content, List<ImageRequest> images)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryUpdateRequest() when $default != null:
        return $default(_that.content, _that.images);
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
    TResult Function(String content, List<ImageRequest> images) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryUpdateRequest():
        return $default(_that.content, _that.images);
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
    TResult? Function(String content, List<ImageRequest> images)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryUpdateRequest() when $default != null:
        return $default(_that.content, _that.images);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryUpdateRequest implements DiaryUpdateRequest {
  const _DiaryUpdateRequest(
      {this.content = '', final List<ImageRequest> images = const []})
      : _images = images;
  factory _DiaryUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$DiaryUpdateRequestFromJson(json);

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

  /// Create a copy of DiaryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryUpdateRequestCopyWith<_DiaryUpdateRequest> get copyWith =>
      __$DiaryUpdateRequestCopyWithImpl<_DiaryUpdateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryUpdateRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryUpdateRequest &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, content, const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'DiaryUpdateRequest(content: $content, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$DiaryUpdateRequestCopyWith<$Res>
    implements $DiaryUpdateRequestCopyWith<$Res> {
  factory _$DiaryUpdateRequestCopyWith(
          _DiaryUpdateRequest value, $Res Function(_DiaryUpdateRequest) _then) =
      __$DiaryUpdateRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String content, List<ImageRequest> images});
}

/// @nodoc
class __$DiaryUpdateRequestCopyWithImpl<$Res>
    implements _$DiaryUpdateRequestCopyWith<$Res> {
  __$DiaryUpdateRequestCopyWithImpl(this._self, this._then);

  final _DiaryUpdateRequest _self;
  final $Res Function(_DiaryUpdateRequest) _then;

  /// Create a copy of DiaryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? images = null,
  }) {
    return _then(_DiaryUpdateRequest(
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
