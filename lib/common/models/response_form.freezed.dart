// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseForm<T> {
  String get status;
  StatusResponse get statusResponse;
  T get data;

  /// Create a copy of ResponseForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseFormCopyWith<T, ResponseForm<T>> get copyWith =>
      _$ResponseFormCopyWithImpl<T, ResponseForm<T>>(
          this as ResponseForm<T>, _$identity);

  /// Serializes this ResponseForm to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseForm<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusResponse,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ResponseForm<$T>(status: $status, statusResponse: $statusResponse, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ResponseFormCopyWith<T, $Res> {
  factory $ResponseFormCopyWith(
          ResponseForm<T> value, $Res Function(ResponseForm<T>) _then) =
      _$ResponseFormCopyWithImpl;
  @useResult
  $Res call({String status, StatusResponse statusResponse, T data});

  $StatusResponseCopyWith<$Res> get statusResponse;
}

/// @nodoc
class _$ResponseFormCopyWithImpl<T, $Res>
    implements $ResponseFormCopyWith<T, $Res> {
  _$ResponseFormCopyWithImpl(this._self, this._then);

  final ResponseForm<T> _self;
  final $Res Function(ResponseForm<T>) _then;

  /// Create a copy of ResponseForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusResponse = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusResponse: null == statusResponse
          ? _self.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }

  /// Create a copy of ResponseForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<$Res> get statusResponse {
    return $StatusResponseCopyWith<$Res>(_self.statusResponse, (value) {
      return _then(_self.copyWith(statusResponse: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResponseForm<T> implements ResponseForm<T> {
  const _ResponseForm(
      {this.status = '', required this.statusResponse, required this.data});
  factory _ResponseForm.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ResponseFormFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final String status;
  @override
  final StatusResponse statusResponse;
  @override
  final T data;

  /// Create a copy of ResponseForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseFormCopyWith<T, _ResponseForm<T>> get copyWith =>
      __$ResponseFormCopyWithImpl<T, _ResponseForm<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ResponseFormToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseForm<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusResponse,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ResponseForm<$T>(status: $status, statusResponse: $statusResponse, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ResponseFormCopyWith<T, $Res>
    implements $ResponseFormCopyWith<T, $Res> {
  factory _$ResponseFormCopyWith(
          _ResponseForm<T> value, $Res Function(_ResponseForm<T>) _then) =
      __$ResponseFormCopyWithImpl;
  @override
  @useResult
  $Res call({String status, StatusResponse statusResponse, T data});

  @override
  $StatusResponseCopyWith<$Res> get statusResponse;
}

/// @nodoc
class __$ResponseFormCopyWithImpl<T, $Res>
    implements _$ResponseFormCopyWith<T, $Res> {
  __$ResponseFormCopyWithImpl(this._self, this._then);

  final _ResponseForm<T> _self;
  final $Res Function(_ResponseForm<T>) _then;

  /// Create a copy of ResponseForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? statusResponse = null,
    Object? data = freezed,
  }) {
    return _then(_ResponseForm<T>(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusResponse: null == statusResponse
          ? _self.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }

  /// Create a copy of ResponseForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<$Res> get statusResponse {
    return $StatusResponseCopyWith<$Res>(_self.statusResponse, (value) {
      return _then(_self.copyWith(statusResponse: value));
    });
  }
}

// dart format on
