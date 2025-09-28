// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageRequest {
  String get imageUrl;
  int get sequence;

  /// Create a copy of ImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImageRequestCopyWith<ImageRequest> get copyWith =>
      _$ImageRequestCopyWithImpl<ImageRequest>(
          this as ImageRequest, _$identity);

  /// Serializes this ImageRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageRequest &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, sequence);

  @override
  String toString() {
    return 'ImageRequest(imageUrl: $imageUrl, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class $ImageRequestCopyWith<$Res> {
  factory $ImageRequestCopyWith(
          ImageRequest value, $Res Function(ImageRequest) _then) =
      _$ImageRequestCopyWithImpl;
  @useResult
  $Res call({String imageUrl, int sequence});
}

/// @nodoc
class _$ImageRequestCopyWithImpl<$Res> implements $ImageRequestCopyWith<$Res> {
  _$ImageRequestCopyWithImpl(this._self, this._then);

  final ImageRequest _self;
  final $Res Function(ImageRequest) _then;

  /// Create a copy of ImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? sequence = null,
  }) {
    return _then(_self.copyWith(
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ImageRequest].
extension ImageRequestPatterns on ImageRequest {
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
    TResult Function(_ImageRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ImageRequest() when $default != null:
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
    TResult Function(_ImageRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ImageRequest():
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
    TResult? Function(_ImageRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ImageRequest() when $default != null:
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
    TResult Function(String imageUrl, int sequence)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ImageRequest() when $default != null:
        return $default(_that.imageUrl, _that.sequence);
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
    TResult Function(String imageUrl, int sequence) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ImageRequest():
        return $default(_that.imageUrl, _that.sequence);
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
    TResult? Function(String imageUrl, int sequence)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ImageRequest() when $default != null:
        return $default(_that.imageUrl, _that.sequence);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ImageRequest implements ImageRequest {
  const _ImageRequest({this.imageUrl = "", this.sequence = 0});
  factory _ImageRequest.fromJson(Map<String, dynamic> json) =>
      _$ImageRequestFromJson(json);

  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final int sequence;

  /// Create a copy of ImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImageRequestCopyWith<_ImageRequest> get copyWith =>
      __$ImageRequestCopyWithImpl<_ImageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ImageRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageRequest &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, sequence);

  @override
  String toString() {
    return 'ImageRequest(imageUrl: $imageUrl, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class _$ImageRequestCopyWith<$Res>
    implements $ImageRequestCopyWith<$Res> {
  factory _$ImageRequestCopyWith(
          _ImageRequest value, $Res Function(_ImageRequest) _then) =
      __$ImageRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String imageUrl, int sequence});
}

/// @nodoc
class __$ImageRequestCopyWithImpl<$Res>
    implements _$ImageRequestCopyWith<$Res> {
  __$ImageRequestCopyWithImpl(this._self, this._then);

  final _ImageRequest _self;
  final $Res Function(_ImageRequest) _then;

  /// Create a copy of ImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imageUrl = null,
    Object? sequence = null,
  }) {
    return _then(_ImageRequest(
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
