// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
