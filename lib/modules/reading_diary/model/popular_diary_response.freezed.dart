// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_diary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularDiaryResponse {
  List<RelatedDiaryThumbnail> get content;
  int get page;
  int get size;
  bool get hasNext;

  /// Create a copy of PopularDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PopularDiaryResponseCopyWith<PopularDiaryResponse> get copyWith =>
      _$PopularDiaryResponseCopyWithImpl<PopularDiaryResponse>(
          this as PopularDiaryResponse, _$identity);

  /// Serializes this PopularDiaryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularDiaryResponse &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(content), page, size, hasNext);

  @override
  String toString() {
    return 'PopularDiaryResponse(content: $content, page: $page, size: $size, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $PopularDiaryResponseCopyWith<$Res> {
  factory $PopularDiaryResponseCopyWith(PopularDiaryResponse value,
          $Res Function(PopularDiaryResponse) _then) =
      _$PopularDiaryResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<RelatedDiaryThumbnail> content, int page, int size, bool hasNext});
}

/// @nodoc
class _$PopularDiaryResponseCopyWithImpl<$Res>
    implements $PopularDiaryResponseCopyWith<$Res> {
  _$PopularDiaryResponseCopyWithImpl(this._self, this._then);

  final PopularDiaryResponse _self;
  final $Res Function(PopularDiaryResponse) _then;

  /// Create a copy of PopularDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? page = null,
    Object? size = null,
    Object? hasNext = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<RelatedDiaryThumbnail>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PopularDiaryResponse].
extension PopularDiaryResponsePatterns on PopularDiaryResponse {
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
    TResult Function(_PopularDiaryResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PopularDiaryResponse() when $default != null:
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
    TResult Function(_PopularDiaryResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PopularDiaryResponse():
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
    TResult? Function(_PopularDiaryResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PopularDiaryResponse() when $default != null:
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
    TResult Function(List<RelatedDiaryThumbnail> content, int page, int size,
            bool hasNext)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PopularDiaryResponse() when $default != null:
        return $default(_that.content, _that.page, _that.size, _that.hasNext);
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
    TResult Function(List<RelatedDiaryThumbnail> content, int page, int size,
            bool hasNext)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PopularDiaryResponse():
        return $default(_that.content, _that.page, _that.size, _that.hasNext);
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
    TResult? Function(List<RelatedDiaryThumbnail> content, int page, int size,
            bool hasNext)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PopularDiaryResponse() when $default != null:
        return $default(_that.content, _that.page, _that.size, _that.hasNext);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PopularDiaryResponse implements PopularDiaryResponse {
  const _PopularDiaryResponse(
      {required final List<RelatedDiaryThumbnail> content,
      required this.page,
      required this.size,
      required this.hasNext})
      : _content = content;
  factory _PopularDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularDiaryResponseFromJson(json);

  final List<RelatedDiaryThumbnail> _content;
  @override
  List<RelatedDiaryThumbnail> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int page;
  @override
  final int size;
  @override
  final bool hasNext;

  /// Create a copy of PopularDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PopularDiaryResponseCopyWith<_PopularDiaryResponse> get copyWith =>
      __$PopularDiaryResponseCopyWithImpl<_PopularDiaryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PopularDiaryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PopularDiaryResponse &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_content), page, size, hasNext);

  @override
  String toString() {
    return 'PopularDiaryResponse(content: $content, page: $page, size: $size, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class _$PopularDiaryResponseCopyWith<$Res>
    implements $PopularDiaryResponseCopyWith<$Res> {
  factory _$PopularDiaryResponseCopyWith(_PopularDiaryResponse value,
          $Res Function(_PopularDiaryResponse) _then) =
      __$PopularDiaryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<RelatedDiaryThumbnail> content, int page, int size, bool hasNext});
}

/// @nodoc
class __$PopularDiaryResponseCopyWithImpl<$Res>
    implements _$PopularDiaryResponseCopyWith<$Res> {
  __$PopularDiaryResponseCopyWithImpl(this._self, this._then);

  final _PopularDiaryResponse _self;
  final $Res Function(_PopularDiaryResponse) _then;

  /// Create a copy of PopularDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? page = null,
    Object? size = null,
    Object? hasNext = null,
  }) {
    return _then(_PopularDiaryResponse(
      content: null == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<RelatedDiaryThumbnail>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
