// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abandoned_challenges_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbandonedChallengesScreenState {
  AsyncValue<List<ChallengeResponse>> get challenges;
  bool get isSelectionMode;
  Set<int> get selectedChallengeIds;

  /// Create a copy of AbandonedChallengesScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AbandonedChallengesScreenStateCopyWith<AbandonedChallengesScreenState>
      get copyWith => _$AbandonedChallengesScreenStateCopyWithImpl<
              AbandonedChallengesScreenState>(
          this as AbandonedChallengesScreenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbandonedChallengesScreenState &&
            (identical(other.challenges, challenges) ||
                other.challenges == challenges) &&
            (identical(other.isSelectionMode, isSelectionMode) ||
                other.isSelectionMode == isSelectionMode) &&
            const DeepCollectionEquality()
                .equals(other.selectedChallengeIds, selectedChallengeIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challenges, isSelectionMode,
      const DeepCollectionEquality().hash(selectedChallengeIds));

  @override
  String toString() {
    return 'AbandonedChallengesScreenState(challenges: $challenges, isSelectionMode: $isSelectionMode, selectedChallengeIds: $selectedChallengeIds)';
  }
}

/// @nodoc
abstract mixin class $AbandonedChallengesScreenStateCopyWith<$Res> {
  factory $AbandonedChallengesScreenStateCopyWith(
          AbandonedChallengesScreenState value,
          $Res Function(AbandonedChallengesScreenState) _then) =
      _$AbandonedChallengesScreenStateCopyWithImpl;
  @useResult
  $Res call(
      {AsyncValue<List<ChallengeResponse>> challenges,
      bool isSelectionMode,
      Set<int> selectedChallengeIds});
}

/// @nodoc
class _$AbandonedChallengesScreenStateCopyWithImpl<$Res>
    implements $AbandonedChallengesScreenStateCopyWith<$Res> {
  _$AbandonedChallengesScreenStateCopyWithImpl(this._self, this._then);

  final AbandonedChallengesScreenState _self;
  final $Res Function(AbandonedChallengesScreenState) _then;

  /// Create a copy of AbandonedChallengesScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenges = null,
    Object? isSelectionMode = null,
    Object? selectedChallengeIds = null,
  }) {
    return _then(_self.copyWith(
      challenges: null == challenges
          ? _self.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ChallengeResponse>>,
      isSelectionMode: null == isSelectionMode
          ? _self.isSelectionMode
          : isSelectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedChallengeIds: null == selectedChallengeIds
          ? _self.selectedChallengeIds
          : selectedChallengeIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AbandonedChallengesScreenState].
extension AbandonedChallengesScreenStatePatterns
    on AbandonedChallengesScreenState {
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
    TResult Function(_AbandonedChallengesScreenState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesScreenState() when $default != null:
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
    TResult Function(_AbandonedChallengesScreenState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesScreenState():
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
    TResult? Function(_AbandonedChallengesScreenState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesScreenState() when $default != null:
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
    TResult Function(AsyncValue<List<ChallengeResponse>> challenges,
            bool isSelectionMode, Set<int> selectedChallengeIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesScreenState() when $default != null:
        return $default(_that.challenges, _that.isSelectionMode,
            _that.selectedChallengeIds);
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
    TResult Function(AsyncValue<List<ChallengeResponse>> challenges,
            bool isSelectionMode, Set<int> selectedChallengeIds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesScreenState():
        return $default(_that.challenges, _that.isSelectionMode,
            _that.selectedChallengeIds);
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
    TResult? Function(AsyncValue<List<ChallengeResponse>> challenges,
            bool isSelectionMode, Set<int> selectedChallengeIds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AbandonedChallengesScreenState() when $default != null:
        return $default(_that.challenges, _that.isSelectionMode,
            _that.selectedChallengeIds);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AbandonedChallengesScreenState
    implements AbandonedChallengesScreenState {
  const _AbandonedChallengesScreenState(
      {this.challenges = const AsyncData([]),
      this.isSelectionMode = false,
      final Set<int> selectedChallengeIds = const {}})
      : _selectedChallengeIds = selectedChallengeIds;

  @override
  @JsonKey()
  final AsyncValue<List<ChallengeResponse>> challenges;
  @override
  @JsonKey()
  final bool isSelectionMode;
  final Set<int> _selectedChallengeIds;
  @override
  @JsonKey()
  Set<int> get selectedChallengeIds {
    if (_selectedChallengeIds is EqualUnmodifiableSetView)
      return _selectedChallengeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedChallengeIds);
  }

  /// Create a copy of AbandonedChallengesScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AbandonedChallengesScreenStateCopyWith<_AbandonedChallengesScreenState>
      get copyWith => __$AbandonedChallengesScreenStateCopyWithImpl<
          _AbandonedChallengesScreenState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbandonedChallengesScreenState &&
            (identical(other.challenges, challenges) ||
                other.challenges == challenges) &&
            (identical(other.isSelectionMode, isSelectionMode) ||
                other.isSelectionMode == isSelectionMode) &&
            const DeepCollectionEquality()
                .equals(other._selectedChallengeIds, _selectedChallengeIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challenges, isSelectionMode,
      const DeepCollectionEquality().hash(_selectedChallengeIds));

  @override
  String toString() {
    return 'AbandonedChallengesScreenState(challenges: $challenges, isSelectionMode: $isSelectionMode, selectedChallengeIds: $selectedChallengeIds)';
  }
}

/// @nodoc
abstract mixin class _$AbandonedChallengesScreenStateCopyWith<$Res>
    implements $AbandonedChallengesScreenStateCopyWith<$Res> {
  factory _$AbandonedChallengesScreenStateCopyWith(
          _AbandonedChallengesScreenState value,
          $Res Function(_AbandonedChallengesScreenState) _then) =
      __$AbandonedChallengesScreenStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ChallengeResponse>> challenges,
      bool isSelectionMode,
      Set<int> selectedChallengeIds});
}

/// @nodoc
class __$AbandonedChallengesScreenStateCopyWithImpl<$Res>
    implements _$AbandonedChallengesScreenStateCopyWith<$Res> {
  __$AbandonedChallengesScreenStateCopyWithImpl(this._self, this._then);

  final _AbandonedChallengesScreenState _self;
  final $Res Function(_AbandonedChallengesScreenState) _then;

  /// Create a copy of AbandonedChallengesScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? challenges = null,
    Object? isSelectionMode = null,
    Object? selectedChallengeIds = null,
  }) {
    return _then(_AbandonedChallengesScreenState(
      challenges: null == challenges
          ? _self.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ChallengeResponse>>,
      isSelectionMode: null == isSelectionMode
          ? _self.isSelectionMode
          : isSelectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedChallengeIds: null == selectedChallengeIds
          ? _self._selectedChallengeIds
          : selectedChallengeIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

// dart format on
