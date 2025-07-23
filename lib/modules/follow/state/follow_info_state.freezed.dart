// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowInfoState {
  /// currentMemberId가 팔로우한 사람들
  List<FollowResponse> get following;

  /// currentMemberId를 팔로우한 사람들
  List<FollowResponse> get followers;
  int get currentMemberId;

  /// Create a copy of FollowInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowInfoStateCopyWith<FollowInfoState> get copyWith =>
      _$FollowInfoStateCopyWithImpl<FollowInfoState>(
          this as FollowInfoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowInfoState &&
            const DeepCollectionEquality().equals(other.following, following) &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            (identical(other.currentMemberId, currentMemberId) ||
                other.currentMemberId == currentMemberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(following),
      const DeepCollectionEquality().hash(followers),
      currentMemberId);

  @override
  String toString() {
    return 'FollowInfoState(following: $following, followers: $followers, currentMemberId: $currentMemberId)';
  }
}

/// @nodoc
abstract mixin class $FollowInfoStateCopyWith<$Res> {
  factory $FollowInfoStateCopyWith(
          FollowInfoState value, $Res Function(FollowInfoState) _then) =
      _$FollowInfoStateCopyWithImpl;
  @useResult
  $Res call(
      {List<FollowResponse> following,
      List<FollowResponse> followers,
      int currentMemberId});
}

/// @nodoc
class _$FollowInfoStateCopyWithImpl<$Res>
    implements $FollowInfoStateCopyWith<$Res> {
  _$FollowInfoStateCopyWithImpl(this._self, this._then);

  final FollowInfoState _self;
  final $Res Function(FollowInfoState) _then;

  /// Create a copy of FollowInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
    Object? followers = null,
    Object? currentMemberId = null,
  }) {
    return _then(_self.copyWith(
      following: null == following
          ? _self.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<FollowResponse>,
      followers: null == followers
          ? _self.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<FollowResponse>,
      currentMemberId: null == currentMemberId
          ? _self.currentMemberId
          : currentMemberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [FollowInfoState].
extension FollowInfoStatePatterns on FollowInfoState {
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
    TResult Function(_FollowInfoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowInfoState() when $default != null:
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
    TResult Function(_FollowInfoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowInfoState():
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
    TResult? Function(_FollowInfoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowInfoState() when $default != null:
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
    TResult Function(List<FollowResponse> following,
            List<FollowResponse> followers, int currentMemberId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowInfoState() when $default != null:
        return $default(
            _that.following, _that.followers, _that.currentMemberId);
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
    TResult Function(List<FollowResponse> following,
            List<FollowResponse> followers, int currentMemberId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowInfoState():
        return $default(
            _that.following, _that.followers, _that.currentMemberId);
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
    TResult? Function(List<FollowResponse> following,
            List<FollowResponse> followers, int currentMemberId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowInfoState() when $default != null:
        return $default(
            _that.following, _that.followers, _that.currentMemberId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FollowInfoState implements FollowInfoState {
  const _FollowInfoState(
      {final List<FollowResponse> following = const [],
      final List<FollowResponse> followers = const [],
      this.currentMemberId = -1})
      : _following = following,
        _followers = followers;

  /// currentMemberId가 팔로우한 사람들
  final List<FollowResponse> _following;

  /// currentMemberId가 팔로우한 사람들
  @override
  @JsonKey()
  List<FollowResponse> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  /// currentMemberId를 팔로우한 사람들
  final List<FollowResponse> _followers;

  /// currentMemberId를 팔로우한 사람들
  @override
  @JsonKey()
  List<FollowResponse> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  @override
  @JsonKey()
  final int currentMemberId;

  /// Create a copy of FollowInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowInfoStateCopyWith<_FollowInfoState> get copyWith =>
      __$FollowInfoStateCopyWithImpl<_FollowInfoState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowInfoState &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.currentMemberId, currentMemberId) ||
                other.currentMemberId == currentMemberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_followers),
      currentMemberId);

  @override
  String toString() {
    return 'FollowInfoState(following: $following, followers: $followers, currentMemberId: $currentMemberId)';
  }
}

/// @nodoc
abstract mixin class _$FollowInfoStateCopyWith<$Res>
    implements $FollowInfoStateCopyWith<$Res> {
  factory _$FollowInfoStateCopyWith(
          _FollowInfoState value, $Res Function(_FollowInfoState) _then) =
      __$FollowInfoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<FollowResponse> following,
      List<FollowResponse> followers,
      int currentMemberId});
}

/// @nodoc
class __$FollowInfoStateCopyWithImpl<$Res>
    implements _$FollowInfoStateCopyWith<$Res> {
  __$FollowInfoStateCopyWithImpl(this._self, this._then);

  final _FollowInfoState _self;
  final $Res Function(_FollowInfoState) _then;

  /// Create a copy of FollowInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? following = null,
    Object? followers = null,
    Object? currentMemberId = null,
  }) {
    return _then(_FollowInfoState(
      following: null == following
          ? _self._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<FollowResponse>,
      followers: null == followers
          ? _self._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<FollowResponse>,
      currentMemberId: null == currentMemberId
          ? _self.currentMemberId
          : currentMemberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
