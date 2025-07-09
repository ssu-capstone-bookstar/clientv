// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeepTimeState {
  DeepTimeStatus get status;
  Duration get settingDuration; // 사용자가 설정 중인 시간
  Duration get remainingDuration; // 남은 시간
  int get todayTotalSeconds; // 오늘 누적 시간
  String? get errorMessage;

  /// Create a copy of DeepTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeepTimeStateCopyWith<DeepTimeState> get copyWith =>
      _$DeepTimeStateCopyWithImpl<DeepTimeState>(
          this as DeepTimeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeepTimeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.settingDuration, settingDuration) ||
                other.settingDuration == settingDuration) &&
            (identical(other.remainingDuration, remainingDuration) ||
                other.remainingDuration == remainingDuration) &&
            (identical(other.todayTotalSeconds, todayTotalSeconds) ||
                other.todayTotalSeconds == todayTotalSeconds) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, settingDuration,
      remainingDuration, todayTotalSeconds, errorMessage);

  @override
  String toString() {
    return 'DeepTimeState(status: $status, settingDuration: $settingDuration, remainingDuration: $remainingDuration, todayTotalSeconds: $todayTotalSeconds, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $DeepTimeStateCopyWith<$Res> {
  factory $DeepTimeStateCopyWith(
          DeepTimeState value, $Res Function(DeepTimeState) _then) =
      _$DeepTimeStateCopyWithImpl;
  @useResult
  $Res call(
      {DeepTimeStatus status,
      Duration settingDuration,
      Duration remainingDuration,
      int todayTotalSeconds,
      String? errorMessage});
}

/// @nodoc
class _$DeepTimeStateCopyWithImpl<$Res>
    implements $DeepTimeStateCopyWith<$Res> {
  _$DeepTimeStateCopyWithImpl(this._self, this._then);

  final DeepTimeState _self;
  final $Res Function(DeepTimeState) _then;

  /// Create a copy of DeepTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? settingDuration = null,
    Object? remainingDuration = null,
    Object? todayTotalSeconds = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeepTimeStatus,
      settingDuration: null == settingDuration
          ? _self.settingDuration
          : settingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      remainingDuration: null == remainingDuration
          ? _self.remainingDuration
          : remainingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      todayTotalSeconds: null == todayTotalSeconds
          ? _self.todayTotalSeconds
          : todayTotalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeepTimeState].
extension DeepTimeStatePatterns on DeepTimeState {
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
    TResult Function(_DeepTimeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeepTimeState() when $default != null:
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
    TResult Function(_DeepTimeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeepTimeState():
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
    TResult? Function(_DeepTimeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeepTimeState() when $default != null:
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
    TResult Function(
            DeepTimeStatus status,
            Duration settingDuration,
            Duration remainingDuration,
            int todayTotalSeconds,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeepTimeState() when $default != null:
        return $default(
            _that.status,
            _that.settingDuration,
            _that.remainingDuration,
            _that.todayTotalSeconds,
            _that.errorMessage);
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
    TResult Function(
            DeepTimeStatus status,
            Duration settingDuration,
            Duration remainingDuration,
            int todayTotalSeconds,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeepTimeState():
        return $default(
            _that.status,
            _that.settingDuration,
            _that.remainingDuration,
            _that.todayTotalSeconds,
            _that.errorMessage);
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
    TResult? Function(
            DeepTimeStatus status,
            Duration settingDuration,
            Duration remainingDuration,
            int todayTotalSeconds,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeepTimeState() when $default != null:
        return $default(
            _that.status,
            _that.settingDuration,
            _that.remainingDuration,
            _that.todayTotalSeconds,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DeepTimeState implements DeepTimeState {
  const _DeepTimeState(
      {this.status = DeepTimeStatus.initial,
      this.settingDuration = Duration.zero,
      this.remainingDuration = Duration.zero,
      this.todayTotalSeconds = 0,
      this.errorMessage});

  @override
  @JsonKey()
  final DeepTimeStatus status;
  @override
  @JsonKey()
  final Duration settingDuration;
// 사용자가 설정 중인 시간
  @override
  @JsonKey()
  final Duration remainingDuration;
// 남은 시간
  @override
  @JsonKey()
  final int todayTotalSeconds;
// 오늘 누적 시간
  @override
  final String? errorMessage;

  /// Create a copy of DeepTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeepTimeStateCopyWith<_DeepTimeState> get copyWith =>
      __$DeepTimeStateCopyWithImpl<_DeepTimeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeepTimeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.settingDuration, settingDuration) ||
                other.settingDuration == settingDuration) &&
            (identical(other.remainingDuration, remainingDuration) ||
                other.remainingDuration == remainingDuration) &&
            (identical(other.todayTotalSeconds, todayTotalSeconds) ||
                other.todayTotalSeconds == todayTotalSeconds) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, settingDuration,
      remainingDuration, todayTotalSeconds, errorMessage);

  @override
  String toString() {
    return 'DeepTimeState(status: $status, settingDuration: $settingDuration, remainingDuration: $remainingDuration, todayTotalSeconds: $todayTotalSeconds, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$DeepTimeStateCopyWith<$Res>
    implements $DeepTimeStateCopyWith<$Res> {
  factory _$DeepTimeStateCopyWith(
          _DeepTimeState value, $Res Function(_DeepTimeState) _then) =
      __$DeepTimeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DeepTimeStatus status,
      Duration settingDuration,
      Duration remainingDuration,
      int todayTotalSeconds,
      String? errorMessage});
}

/// @nodoc
class __$DeepTimeStateCopyWithImpl<$Res>
    implements _$DeepTimeStateCopyWith<$Res> {
  __$DeepTimeStateCopyWithImpl(this._self, this._then);

  final _DeepTimeState _self;
  final $Res Function(_DeepTimeState) _then;

  /// Create a copy of DeepTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? settingDuration = null,
    Object? remainingDuration = null,
    Object? todayTotalSeconds = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_DeepTimeState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeepTimeStatus,
      settingDuration: null == settingDuration
          ? _self.settingDuration
          : settingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      remainingDuration: null == remainingDuration
          ? _self.remainingDuration
          : remainingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      todayTotalSeconds: null == todayTotalSeconds
          ? _self.todayTotalSeconds
          : todayTotalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
