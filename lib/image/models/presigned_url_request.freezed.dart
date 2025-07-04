// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_url_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresignedUrlRequest {
  String get fileName;

  /// Create a copy of PresignedUrlRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PresignedUrlRequestCopyWith<PresignedUrlRequest> get copyWith =>
      _$PresignedUrlRequestCopyWithImpl<PresignedUrlRequest>(
          this as PresignedUrlRequest, _$identity);

  /// Serializes this PresignedUrlRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PresignedUrlRequest &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString() {
    return 'PresignedUrlRequest(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $PresignedUrlRequestCopyWith<$Res> {
  factory $PresignedUrlRequestCopyWith(
          PresignedUrlRequest value, $Res Function(PresignedUrlRequest) _then) =
      _$PresignedUrlRequestCopyWithImpl;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$PresignedUrlRequestCopyWithImpl<$Res>
    implements $PresignedUrlRequestCopyWith<$Res> {
  _$PresignedUrlRequestCopyWithImpl(this._self, this._then);

  final PresignedUrlRequest _self;
  final $Res Function(PresignedUrlRequest) _then;

  /// Create a copy of PresignedUrlRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_self.copyWith(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PresignedUrlRequest].
extension PresignedUrlRequestPatterns on PresignedUrlRequest {
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
    TResult Function(_PresignedUrlRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PresignedUrlRequest() when $default != null:
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
    TResult Function(_PresignedUrlRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PresignedUrlRequest():
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
    TResult? Function(_PresignedUrlRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PresignedUrlRequest() when $default != null:
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
    TResult Function(String fileName)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PresignedUrlRequest() when $default != null:
        return $default(_that.fileName);
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
    TResult Function(String fileName) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PresignedUrlRequest():
        return $default(_that.fileName);
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
    TResult? Function(String fileName)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PresignedUrlRequest() when $default != null:
        return $default(_that.fileName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PresignedUrlRequest implements PresignedUrlRequest {
  const _PresignedUrlRequest({required this.fileName});
  factory _PresignedUrlRequest.fromJson(Map<String, dynamic> json) =>
      _$PresignedUrlRequestFromJson(json);

  @override
  final String fileName;

  /// Create a copy of PresignedUrlRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PresignedUrlRequestCopyWith<_PresignedUrlRequest> get copyWith =>
      __$PresignedUrlRequestCopyWithImpl<_PresignedUrlRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PresignedUrlRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PresignedUrlRequest &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString() {
    return 'PresignedUrlRequest(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class _$PresignedUrlRequestCopyWith<$Res>
    implements $PresignedUrlRequestCopyWith<$Res> {
  factory _$PresignedUrlRequestCopyWith(_PresignedUrlRequest value,
          $Res Function(_PresignedUrlRequest) _then) =
      __$PresignedUrlRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$PresignedUrlRequestCopyWithImpl<$Res>
    implements _$PresignedUrlRequestCopyWith<$Res> {
  __$PresignedUrlRequestCopyWithImpl(this._self, this._then);

  final _PresignedUrlRequest _self;
  final $Res Function(_PresignedUrlRequest) _then;

  /// Create a copy of PresignedUrlRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_PresignedUrlRequest(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
