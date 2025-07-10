// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_challenges_by_member_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetChallengesByMemberScreenState {
  AsyncValue<List<ChallengeResponse>> get challenges;
  bool get isSelectionMode;
  Set<int> get selectedChallengeIds;
  int? get memberId;

  /// Create a copy of GetChallengesByMemberScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetChallengesByMemberScreenStateCopyWith<GetChallengesByMemberScreenState>
      get copyWith => _$GetChallengesByMemberScreenStateCopyWithImpl<
              GetChallengesByMemberScreenState>(
          this as GetChallengesByMemberScreenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetChallengesByMemberScreenState &&
            (identical(other.challenges, challenges) ||
                other.challenges == challenges) &&
            (identical(other.isSelectionMode, isSelectionMode) ||
                other.isSelectionMode == isSelectionMode) &&
            const DeepCollectionEquality()
                .equals(other.selectedChallengeIds, selectedChallengeIds) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challenges, isSelectionMode,
      const DeepCollectionEquality().hash(selectedChallengeIds), memberId);

  @override
  String toString() {
    return 'GetChallengesByMemberScreenState(challenges: $challenges, isSelectionMode: $isSelectionMode, selectedChallengeIds: $selectedChallengeIds, memberId: $memberId)';
  }
}

/// @nodoc
abstract mixin class $GetChallengesByMemberScreenStateCopyWith<$Res> {
  factory $GetChallengesByMemberScreenStateCopyWith(
          GetChallengesByMemberScreenState value,
          $Res Function(GetChallengesByMemberScreenState) _then) =
      _$GetChallengesByMemberScreenStateCopyWithImpl;
  @useResult
  $Res call(
      {AsyncValue<List<ChallengeResponse>> challenges,
      bool isSelectionMode,
      Set<int> selectedChallengeIds,
      int? memberId});
}

/// @nodoc
class _$GetChallengesByMemberScreenStateCopyWithImpl<$Res>
    implements $GetChallengesByMemberScreenStateCopyWith<$Res> {
  _$GetChallengesByMemberScreenStateCopyWithImpl(this._self, this._then);

  final GetChallengesByMemberScreenState _self;
  final $Res Function(GetChallengesByMemberScreenState) _then;

  /// Create a copy of GetChallengesByMemberScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenges = null,
    Object? isSelectionMode = null,
    Object? selectedChallengeIds = null,
    Object? memberId = freezed,
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
      memberId: freezed == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetChallengesByMemberScreenState].
extension GetChallengesByMemberScreenStatePatterns
    on GetChallengesByMemberScreenState {
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
    TResult Function(_GetChallengesByMemberScreenState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetChallengesByMemberScreenState() when $default != null:
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
    TResult Function(_GetChallengesByMemberScreenState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetChallengesByMemberScreenState():
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
    TResult? Function(_GetChallengesByMemberScreenState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetChallengesByMemberScreenState() when $default != null:
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
            bool isSelectionMode, Set<int> selectedChallengeIds, int? memberId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetChallengesByMemberScreenState() when $default != null:
        return $default(_that.challenges, _that.isSelectionMode,
            _that.selectedChallengeIds, _that.memberId);
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
            bool isSelectionMode, Set<int> selectedChallengeIds, int? memberId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetChallengesByMemberScreenState():
        return $default(_that.challenges, _that.isSelectionMode,
            _that.selectedChallengeIds, _that.memberId);
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
            bool isSelectionMode, Set<int> selectedChallengeIds, int? memberId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetChallengesByMemberScreenState() when $default != null:
        return $default(_that.challenges, _that.isSelectionMode,
            _that.selectedChallengeIds, _that.memberId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetChallengesByMemberScreenState
    implements GetChallengesByMemberScreenState {
  const _GetChallengesByMemberScreenState(
      {this.challenges = const AsyncData([]),
      this.isSelectionMode = false,
      final Set<int> selectedChallengeIds = const {},
      this.memberId = null})
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

  @override
  @JsonKey()
  final int? memberId;

  /// Create a copy of GetChallengesByMemberScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetChallengesByMemberScreenStateCopyWith<_GetChallengesByMemberScreenState>
      get copyWith => __$GetChallengesByMemberScreenStateCopyWithImpl<
          _GetChallengesByMemberScreenState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetChallengesByMemberScreenState &&
            (identical(other.challenges, challenges) ||
                other.challenges == challenges) &&
            (identical(other.isSelectionMode, isSelectionMode) ||
                other.isSelectionMode == isSelectionMode) &&
            const DeepCollectionEquality()
                .equals(other._selectedChallengeIds, _selectedChallengeIds) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challenges, isSelectionMode,
      const DeepCollectionEquality().hash(_selectedChallengeIds), memberId);

  @override
  String toString() {
    return 'GetChallengesByMemberScreenState(challenges: $challenges, isSelectionMode: $isSelectionMode, selectedChallengeIds: $selectedChallengeIds, memberId: $memberId)';
  }
}

/// @nodoc
abstract mixin class _$GetChallengesByMemberScreenStateCopyWith<$Res>
    implements $GetChallengesByMemberScreenStateCopyWith<$Res> {
  factory _$GetChallengesByMemberScreenStateCopyWith(
          _GetChallengesByMemberScreenState value,
          $Res Function(_GetChallengesByMemberScreenState) _then) =
      __$GetChallengesByMemberScreenStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ChallengeResponse>> challenges,
      bool isSelectionMode,
      Set<int> selectedChallengeIds,
      int? memberId});
}

/// @nodoc
class __$GetChallengesByMemberScreenStateCopyWithImpl<$Res>
    implements _$GetChallengesByMemberScreenStateCopyWith<$Res> {
  __$GetChallengesByMemberScreenStateCopyWithImpl(this._self, this._then);

  final _GetChallengesByMemberScreenState _self;
  final $Res Function(_GetChallengesByMemberScreenState) _then;

  /// Create a copy of GetChallengesByMemberScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? challenges = null,
    Object? isSelectionMode = null,
    Object? selectedChallengeIds = null,
    Object? memberId = freezed,
  }) {
    return _then(_GetChallengesByMemberScreenState(
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
      memberId: freezed == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
