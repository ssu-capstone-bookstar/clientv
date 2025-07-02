// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusResponse {
  String get status;
  String get resultCode;
  String get resultMessage;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<StatusResponse> get copyWith =>
      _$StatusResponseCopyWithImpl<StatusResponse>(
          this as StatusResponse, _$identity);

  /// Serializes this StatusResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StatusResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMessage, resultMessage) ||
                other.resultMessage == resultMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, resultCode, resultMessage);

  @override
  String toString() {
    return 'StatusResponse(status: $status, resultCode: $resultCode, resultMessage: $resultMessage)';
  }
}

/// @nodoc
abstract mixin class $StatusResponseCopyWith<$Res> {
  factory $StatusResponseCopyWith(
          StatusResponse value, $Res Function(StatusResponse) _then) =
      _$StatusResponseCopyWithImpl;
  @useResult
  $Res call({String status, String resultCode, String resultMessage});
}

/// @nodoc
class _$StatusResponseCopyWithImpl<$Res>
    implements $StatusResponseCopyWith<$Res> {
  _$StatusResponseCopyWithImpl(this._self, this._then);

  final StatusResponse _self;
  final $Res Function(StatusResponse) _then;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? resultCode = null,
    Object? resultMessage = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resultCode: null == resultCode
          ? _self.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMessage: null == resultMessage
          ? _self.resultMessage
          : resultMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StatusResponse implements StatusResponse {
  const _StatusResponse(
      {this.status = '',
      required this.resultCode,
      required this.resultMessage});
  factory _StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String resultCode;
  @override
  final String resultMessage;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatusResponseCopyWith<_StatusResponse> get copyWith =>
      __$StatusResponseCopyWithImpl<_StatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatusResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMessage, resultMessage) ||
                other.resultMessage == resultMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, resultCode, resultMessage);

  @override
  String toString() {
    return 'StatusResponse(status: $status, resultCode: $resultCode, resultMessage: $resultMessage)';
  }
}

/// @nodoc
abstract mixin class _$StatusResponseCopyWith<$Res>
    implements $StatusResponseCopyWith<$Res> {
  factory _$StatusResponseCopyWith(
          _StatusResponse value, $Res Function(_StatusResponse) _then) =
      __$StatusResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String resultCode, String resultMessage});
}

/// @nodoc
class __$StatusResponseCopyWithImpl<$Res>
    implements _$StatusResponseCopyWith<$Res> {
  __$StatusResponseCopyWithImpl(this._self, this._then);

  final _StatusResponse _self;
  final $Res Function(_StatusResponse) _then;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? resultCode = null,
    Object? resultMessage = null,
  }) {
    return _then(_StatusResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resultCode: null == resultCode
          ? _self.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMessage: null == resultMessage
          ? _self.resultMessage
          : resultMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
