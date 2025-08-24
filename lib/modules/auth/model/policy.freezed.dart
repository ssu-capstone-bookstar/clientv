// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Policy {
  PolicyAgree get serviceUsingAgree;
  PolicyAgree get personalInformationAgree;
  PolicyAgree get marketingAgree;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PolicyCopyWith<Policy> get copyWith =>
      _$PolicyCopyWithImpl<Policy>(this as Policy, _$identity);

  /// Serializes this Policy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Policy &&
            (identical(other.serviceUsingAgree, serviceUsingAgree) ||
                other.serviceUsingAgree == serviceUsingAgree) &&
            (identical(
                    other.personalInformationAgree, personalInformationAgree) ||
                other.personalInformationAgree == personalInformationAgree) &&
            (identical(other.marketingAgree, marketingAgree) ||
                other.marketingAgree == marketingAgree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, serviceUsingAgree, personalInformationAgree, marketingAgree);

  @override
  String toString() {
    return 'Policy(serviceUsingAgree: $serviceUsingAgree, personalInformationAgree: $personalInformationAgree, marketingAgree: $marketingAgree)';
  }
}

/// @nodoc
abstract mixin class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) _then) =
      _$PolicyCopyWithImpl;
  @useResult
  $Res call(
      {PolicyAgree serviceUsingAgree,
      PolicyAgree personalInformationAgree,
      PolicyAgree marketingAgree});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res> implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._self, this._then);

  final Policy _self;
  final $Res Function(Policy) _then;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceUsingAgree = null,
    Object? personalInformationAgree = null,
    Object? marketingAgree = null,
  }) {
    return _then(_self.copyWith(
      serviceUsingAgree: null == serviceUsingAgree
          ? _self.serviceUsingAgree
          : serviceUsingAgree // ignore: cast_nullable_to_non_nullable
              as PolicyAgree,
      personalInformationAgree: null == personalInformationAgree
          ? _self.personalInformationAgree
          : personalInformationAgree // ignore: cast_nullable_to_non_nullable
              as PolicyAgree,
      marketingAgree: null == marketingAgree
          ? _self.marketingAgree
          : marketingAgree // ignore: cast_nullable_to_non_nullable
              as PolicyAgree,
    ));
  }
}

/// Adds pattern-matching-related methods to [Policy].
extension PolicyPatterns on Policy {
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
    TResult Function(_Policy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
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
    TResult Function(_Policy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy():
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
    TResult? Function(_Policy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
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
    TResult Function(PolicyAgree serviceUsingAgree,
            PolicyAgree personalInformationAgree, PolicyAgree marketingAgree)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
        return $default(_that.serviceUsingAgree, _that.personalInformationAgree,
            _that.marketingAgree);
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
    TResult Function(PolicyAgree serviceUsingAgree,
            PolicyAgree personalInformationAgree, PolicyAgree marketingAgree)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy():
        return $default(_that.serviceUsingAgree, _that.personalInformationAgree,
            _that.marketingAgree);
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
    TResult? Function(PolicyAgree serviceUsingAgree,
            PolicyAgree personalInformationAgree, PolicyAgree marketingAgree)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
        return $default(_that.serviceUsingAgree, _that.personalInformationAgree,
            _that.marketingAgree);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Policy implements Policy {
  const _Policy(
      {this.serviceUsingAgree = PolicyAgree.N,
      this.personalInformationAgree = PolicyAgree.N,
      this.marketingAgree = PolicyAgree.N});
  factory _Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);

  @override
  @JsonKey()
  final PolicyAgree serviceUsingAgree;
  @override
  @JsonKey()
  final PolicyAgree personalInformationAgree;
  @override
  @JsonKey()
  final PolicyAgree marketingAgree;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PolicyCopyWith<_Policy> get copyWith =>
      __$PolicyCopyWithImpl<_Policy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PolicyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Policy &&
            (identical(other.serviceUsingAgree, serviceUsingAgree) ||
                other.serviceUsingAgree == serviceUsingAgree) &&
            (identical(
                    other.personalInformationAgree, personalInformationAgree) ||
                other.personalInformationAgree == personalInformationAgree) &&
            (identical(other.marketingAgree, marketingAgree) ||
                other.marketingAgree == marketingAgree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, serviceUsingAgree, personalInformationAgree, marketingAgree);

  @override
  String toString() {
    return 'Policy(serviceUsingAgree: $serviceUsingAgree, personalInformationAgree: $personalInformationAgree, marketingAgree: $marketingAgree)';
  }
}

/// @nodoc
abstract mixin class _$PolicyCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$PolicyCopyWith(_Policy value, $Res Function(_Policy) _then) =
      __$PolicyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PolicyAgree serviceUsingAgree,
      PolicyAgree personalInformationAgree,
      PolicyAgree marketingAgree});
}

/// @nodoc
class __$PolicyCopyWithImpl<$Res> implements _$PolicyCopyWith<$Res> {
  __$PolicyCopyWithImpl(this._self, this._then);

  final _Policy _self;
  final $Res Function(_Policy) _then;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? serviceUsingAgree = null,
    Object? personalInformationAgree = null,
    Object? marketingAgree = null,
  }) {
    return _then(_Policy(
      serviceUsingAgree: null == serviceUsingAgree
          ? _self.serviceUsingAgree
          : serviceUsingAgree // ignore: cast_nullable_to_non_nullable
              as PolicyAgree,
      personalInformationAgree: null == personalInformationAgree
          ? _self.personalInformationAgree
          : personalInformationAgree // ignore: cast_nullable_to_non_nullable
              as PolicyAgree,
      marketingAgree: null == marketingAgree
          ? _self.marketingAgree
          : marketingAgree // ignore: cast_nullable_to_non_nullable
              as PolicyAgree,
    ));
  }
}

// dart format on
