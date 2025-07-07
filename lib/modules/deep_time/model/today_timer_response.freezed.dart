// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_timer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodayTimerResponse {
  int get totalSeconds;

  /// Create a copy of TodayTimerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodayTimerResponseCopyWith<TodayTimerResponse> get copyWith =>
      _$TodayTimerResponseCopyWithImpl<TodayTimerResponse>(
          this as TodayTimerResponse, _$identity);

  /// Serializes this TodayTimerResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodayTimerResponse &&
            (identical(other.totalSeconds, totalSeconds) ||
                other.totalSeconds == totalSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalSeconds);

  @override
  String toString() {
    return 'TodayTimerResponse(totalSeconds: $totalSeconds)';
  }
}

/// @nodoc
abstract mixin class $TodayTimerResponseCopyWith<$Res> {
  factory $TodayTimerResponseCopyWith(
          TodayTimerResponse value, $Res Function(TodayTimerResponse) _then) =
      _$TodayTimerResponseCopyWithImpl;
  @useResult
  $Res call({int totalSeconds});
}

/// @nodoc
class _$TodayTimerResponseCopyWithImpl<$Res>
    implements $TodayTimerResponseCopyWith<$Res> {
  _$TodayTimerResponseCopyWithImpl(this._self, this._then);

  final TodayTimerResponse _self;
  final $Res Function(TodayTimerResponse) _then;

  /// Create a copy of TodayTimerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSeconds = null,
  }) {
    return _then(_self.copyWith(
      totalSeconds: null == totalSeconds
          ? _self.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TodayTimerResponse implements TodayTimerResponse {
  const _TodayTimerResponse({this.totalSeconds = 0});
  factory _TodayTimerResponse.fromJson(Map<String, dynamic> json) =>
      _$TodayTimerResponseFromJson(json);

  @override
  @JsonKey()
  final int totalSeconds;

  /// Create a copy of TodayTimerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodayTimerResponseCopyWith<_TodayTimerResponse> get copyWith =>
      __$TodayTimerResponseCopyWithImpl<_TodayTimerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodayTimerResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodayTimerResponse &&
            (identical(other.totalSeconds, totalSeconds) ||
                other.totalSeconds == totalSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalSeconds);

  @override
  String toString() {
    return 'TodayTimerResponse(totalSeconds: $totalSeconds)';
  }
}

/// @nodoc
abstract mixin class _$TodayTimerResponseCopyWith<$Res>
    implements $TodayTimerResponseCopyWith<$Res> {
  factory _$TodayTimerResponseCopyWith(
          _TodayTimerResponse value, $Res Function(_TodayTimerResponse) _then) =
      __$TodayTimerResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int totalSeconds});
}

/// @nodoc
class __$TodayTimerResponseCopyWithImpl<$Res>
    implements _$TodayTimerResponseCopyWith<$Res> {
  __$TodayTimerResponseCopyWithImpl(this._self, this._then);

  final _TodayTimerResponse _self;
  final $Res Function(_TodayTimerResponse) _then;

  /// Create a copy of TodayTimerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalSeconds = null,
  }) {
    return _then(_TodayTimerResponse(
      totalSeconds: null == totalSeconds
          ? _self.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
