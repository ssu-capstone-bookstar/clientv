// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [ResponseForm].
extension ResponseFormPatterns<T> on ResponseForm<T> {
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
    TResult Function(_ResponseForm<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseForm() when $default != null:
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
    TResult Function(_ResponseForm<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseForm():
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
    TResult? Function(_ResponseForm<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseForm() when $default != null:
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
    TResult Function(String status, StatusResponse statusResponse, T data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseForm() when $default != null:
        return $default(_that.status, _that.statusResponse, _that.data);
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
    TResult Function(String status, StatusResponse statusResponse, T data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseForm():
        return $default(_that.status, _that.statusResponse, _that.data);
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
    TResult? Function(String status, StatusResponse statusResponse, T data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseForm() when $default != null:
        return $default(_that.status, _that.statusResponse, _that.data);
      case _:
        return null;
    }
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
