// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimerRequest {
  int get seconds;

  /// Create a copy of TimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimerRequestCopyWith<TimerRequest> get copyWith =>
      _$TimerRequestCopyWithImpl<TimerRequest>(
          this as TimerRequest, _$identity);

  /// Serializes this TimerRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimerRequest &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seconds);

  @override
  String toString() {
    return 'TimerRequest(seconds: $seconds)';
  }
}

/// @nodoc
abstract mixin class $TimerRequestCopyWith<$Res> {
  factory $TimerRequestCopyWith(
          TimerRequest value, $Res Function(TimerRequest) _then) =
      _$TimerRequestCopyWithImpl;
  @useResult
  $Res call({int seconds});
}

/// @nodoc
class _$TimerRequestCopyWithImpl<$Res> implements $TimerRequestCopyWith<$Res> {
  _$TimerRequestCopyWithImpl(this._self, this._then);

  final TimerRequest _self;
  final $Res Function(TimerRequest) _then;

  /// Create a copy of TimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
  }) {
    return _then(_self.copyWith(
      seconds: null == seconds
          ? _self.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TimerRequest implements TimerRequest {
  const _TimerRequest({required this.seconds});
  factory _TimerRequest.fromJson(Map<String, dynamic> json) =>
      _$TimerRequestFromJson(json);

  @override
  final int seconds;

  /// Create a copy of TimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimerRequestCopyWith<_TimerRequest> get copyWith =>
      __$TimerRequestCopyWithImpl<_TimerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimerRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerRequest &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seconds);

  @override
  String toString() {
    return 'TimerRequest(seconds: $seconds)';
  }
}

/// @nodoc
abstract mixin class _$TimerRequestCopyWith<$Res>
    implements $TimerRequestCopyWith<$Res> {
  factory _$TimerRequestCopyWith(
          _TimerRequest value, $Res Function(_TimerRequest) _then) =
      __$TimerRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int seconds});
}

/// @nodoc
class __$TimerRequestCopyWithImpl<$Res>
    implements _$TimerRequestCopyWith<$Res> {
  __$TimerRequestCopyWithImpl(this._self, this._then);

  final _TimerRequest _self;
  final $Res Function(_TimerRequest) _then;

  /// Create a copy of TimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? seconds = null,
  }) {
    return _then(_TimerRequest(
      seconds: null == seconds
          ? _self.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
