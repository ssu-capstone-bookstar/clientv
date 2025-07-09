// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_presigned_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$S3PresignedUrl {
  String get presignedUrl;
  String get filePathInDB;

  /// Create a copy of S3PresignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $S3PresignedUrlCopyWith<S3PresignedUrl> get copyWith =>
      _$S3PresignedUrlCopyWithImpl<S3PresignedUrl>(
          this as S3PresignedUrl, _$identity);

  /// Serializes this S3PresignedUrl to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is S3PresignedUrl &&
            (identical(other.presignedUrl, presignedUrl) ||
                other.presignedUrl == presignedUrl) &&
            (identical(other.filePathInDB, filePathInDB) ||
                other.filePathInDB == filePathInDB));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, presignedUrl, filePathInDB);

  @override
  String toString() {
    return 'S3PresignedUrl(presignedUrl: $presignedUrl, filePathInDB: $filePathInDB)';
  }
}

/// @nodoc
abstract mixin class $S3PresignedUrlCopyWith<$Res> {
  factory $S3PresignedUrlCopyWith(
          S3PresignedUrl value, $Res Function(S3PresignedUrl) _then) =
      _$S3PresignedUrlCopyWithImpl;
  @useResult
  $Res call({String presignedUrl, String filePathInDB});
}

/// @nodoc
class _$S3PresignedUrlCopyWithImpl<$Res>
    implements $S3PresignedUrlCopyWith<$Res> {
  _$S3PresignedUrlCopyWithImpl(this._self, this._then);

  final S3PresignedUrl _self;
  final $Res Function(S3PresignedUrl) _then;

  /// Create a copy of S3PresignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presignedUrl = null,
    Object? filePathInDB = null,
  }) {
    return _then(_self.copyWith(
      presignedUrl: null == presignedUrl
          ? _self.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      filePathInDB: null == filePathInDB
          ? _self.filePathInDB
          : filePathInDB // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [S3PresignedUrl].
extension S3PresignedUrlPatterns on S3PresignedUrl {
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
    TResult Function(_S3PresignedUrl value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _S3PresignedUrl() when $default != null:
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
    TResult Function(_S3PresignedUrl value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PresignedUrl():
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
    TResult? Function(_S3PresignedUrl value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PresignedUrl() when $default != null:
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
    TResult Function(String presignedUrl, String filePathInDB)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _S3PresignedUrl() when $default != null:
        return $default(_that.presignedUrl, _that.filePathInDB);
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
    TResult Function(String presignedUrl, String filePathInDB) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PresignedUrl():
        return $default(_that.presignedUrl, _that.filePathInDB);
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
    TResult? Function(String presignedUrl, String filePathInDB)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PresignedUrl() when $default != null:
        return $default(_that.presignedUrl, _that.filePathInDB);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _S3PresignedUrl implements S3PresignedUrl {
  const _S3PresignedUrl(
      {required this.presignedUrl, required this.filePathInDB});
  factory _S3PresignedUrl.fromJson(Map<String, dynamic> json) =>
      _$S3PresignedUrlFromJson(json);

  @override
  final String presignedUrl;
  @override
  final String filePathInDB;

  /// Create a copy of S3PresignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$S3PresignedUrlCopyWith<_S3PresignedUrl> get copyWith =>
      __$S3PresignedUrlCopyWithImpl<_S3PresignedUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$S3PresignedUrlToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _S3PresignedUrl &&
            (identical(other.presignedUrl, presignedUrl) ||
                other.presignedUrl == presignedUrl) &&
            (identical(other.filePathInDB, filePathInDB) ||
                other.filePathInDB == filePathInDB));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, presignedUrl, filePathInDB);

  @override
  String toString() {
    return 'S3PresignedUrl(presignedUrl: $presignedUrl, filePathInDB: $filePathInDB)';
  }
}

/// @nodoc
abstract mixin class _$S3PresignedUrlCopyWith<$Res>
    implements $S3PresignedUrlCopyWith<$Res> {
  factory _$S3PresignedUrlCopyWith(
          _S3PresignedUrl value, $Res Function(_S3PresignedUrl) _then) =
      __$S3PresignedUrlCopyWithImpl;
  @override
  @useResult
  $Res call({String presignedUrl, String filePathInDB});
}

/// @nodoc
class __$S3PresignedUrlCopyWithImpl<$Res>
    implements _$S3PresignedUrlCopyWith<$Res> {
  __$S3PresignedUrlCopyWithImpl(this._self, this._then);

  final _S3PresignedUrl _self;
  final $Res Function(_S3PresignedUrl) _then;

  /// Create a copy of S3PresignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? presignedUrl = null,
    Object? filePathInDB = null,
  }) {
    return _then(_S3PresignedUrl(
      presignedUrl: null == presignedUrl
          ? _self.presignedUrl
          : presignedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      filePathInDB: null == filePathInDB
          ? _self.filePathInDB
          : filePathInDB // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
