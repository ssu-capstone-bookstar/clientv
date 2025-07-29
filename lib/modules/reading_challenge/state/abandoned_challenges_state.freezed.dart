// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abandoned_challenges_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbandonedChallengesState {
  List<ChallengeResponse> get challenges;
  List<bool> get checkedList;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of AbandonedChallengesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AbandonedChallengesStateCopyWith<AbandonedChallengesState> get copyWith =>
      _$AbandonedChallengesStateCopyWithImpl<AbandonedChallengesState>(
          this as AbandonedChallengesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbandonedChallengesState &&
            const DeepCollectionEquality()
                .equals(other.challenges, challenges) &&
            const DeepCollectionEquality()
                .equals(other.checkedList, checkedList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(challenges),
      const DeepCollectionEquality().hash(checkedList),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'AbandonedChallengesState(challenges: $challenges, checkedList: $checkedList, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $AbandonedChallengesStateCopyWith<$Res> {
  factory $AbandonedChallengesStateCopyWith(AbandonedChallengesState value,
          $Res Function(AbandonedChallengesState) _then) =
      _$AbandonedChallengesStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ChallengeResponse> challenges,
      List<bool> checkedList,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$AbandonedChallengesStateCopyWithImpl<$Res>
    implements $AbandonedChallengesStateCopyWith<$Res> {
  _$AbandonedChallengesStateCopyWithImpl(this._self, this._then);

  final AbandonedChallengesState _self;
  final $Res Function(AbandonedChallengesState) _then;

  /// Create a copy of AbandonedChallengesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenges = null,
    Object? checkedList = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      challenges: null == challenges
          ? _self.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<ChallengeResponse>,
      checkedList: null == checkedList
          ? _self.checkedList
          : checkedList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AbandonedChallengesState].
extension AbandonedChallengesStatePatterns on AbandonedChallengesState {
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
    TResult Function(_AbandonedChallengesState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesState() when $default != null:
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
    TResult Function(_AbandonedChallengesState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesState():
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
    TResult? Function(_AbandonedChallengesState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesState() when $default != null:
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
    TResult Function(List<ChallengeResponse> challenges, List<bool> checkedList,
            bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesState() when $default != null:
        return $default(_that.challenges, _that.checkedList, _that.isLoading,
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
    TResult Function(List<ChallengeResponse> challenges, List<bool> checkedList,
            bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesState():
        return $default(_that.challenges, _that.checkedList, _that.isLoading,
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
    TResult? Function(List<ChallengeResponse> challenges,
            List<bool> checkedList, bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesState() when $default != null:
        return $default(_that.challenges, _that.checkedList, _that.isLoading,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AbandonedChallengesState implements AbandonedChallengesState {
  const _AbandonedChallengesState(
      {final List<ChallengeResponse> challenges = const [],
      final List<bool> checkedList = const [],
      this.isLoading = false,
      this.errorMessage})
      : _challenges = challenges,
        _checkedList = checkedList;

  final List<ChallengeResponse> _challenges;
  @override
  @JsonKey()
  List<ChallengeResponse> get challenges {
    if (_challenges is EqualUnmodifiableListView) return _challenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challenges);
  }

  final List<bool> _checkedList;
  @override
  @JsonKey()
  List<bool> get checkedList {
    if (_checkedList is EqualUnmodifiableListView) return _checkedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkedList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of AbandonedChallengesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AbandonedChallengesStateCopyWith<_AbandonedChallengesState> get copyWith =>
      __$AbandonedChallengesStateCopyWithImpl<_AbandonedChallengesState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbandonedChallengesState &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges) &&
            const DeepCollectionEquality()
                .equals(other._checkedList, _checkedList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_challenges),
      const DeepCollectionEquality().hash(_checkedList),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'AbandonedChallengesState(challenges: $challenges, checkedList: $checkedList, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$AbandonedChallengesStateCopyWith<$Res>
    implements $AbandonedChallengesStateCopyWith<$Res> {
  factory _$AbandonedChallengesStateCopyWith(_AbandonedChallengesState value,
          $Res Function(_AbandonedChallengesState) _then) =
      __$AbandonedChallengesStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ChallengeResponse> challenges,
      List<bool> checkedList,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$AbandonedChallengesStateCopyWithImpl<$Res>
    implements _$AbandonedChallengesStateCopyWith<$Res> {
  __$AbandonedChallengesStateCopyWithImpl(this._self, this._then);

  final _AbandonedChallengesState _self;
  final $Res Function(_AbandonedChallengesState) _then;

  /// Create a copy of AbandonedChallengesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? challenges = null,
    Object? checkedList = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_AbandonedChallengesState(
      challenges: null == challenges
          ? _self._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<ChallengeResponse>,
      checkedList: null == checkedList
          ? _self._checkedList
          : checkedList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
