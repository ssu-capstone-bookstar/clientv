// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  String get image;
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
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, sequence);

  @override
  String toString() {
    return 'ImageRequest(image: $image, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class $ImageRequestCopyWith<$Res> {
  factory $ImageRequestCopyWith(
          ImageRequest value, $Res Function(ImageRequest) _then) =
      _$ImageRequestCopyWithImpl;
  @useResult
  $Res call({String image, int sequence});
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
    Object? image = null,
    Object? sequence = null,
  }) {
    return _then(_self.copyWith(
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ImageRequest implements ImageRequest {
  const _ImageRequest({this.image = '', this.sequence = 1});
  factory _ImageRequest.fromJson(Map<String, dynamic> json) =>
      _$ImageRequestFromJson(json);

  @override
  @JsonKey()
  final String image;
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
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, sequence);

  @override
  String toString() {
    return 'ImageRequest(image: $image, sequence: $sequence)';
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
  $Res call({String image, int sequence});
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
    Object? image = null,
    Object? sequence = null,
  }) {
    return _then(_ImageRequest(
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
