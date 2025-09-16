// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchUserState {
  List<SearchUserResponse> get users;
  List<UserSearchHistoryResponse> get history;
  bool get historyHasNext;
  int? get nextCursor;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchUserStateCopyWith<SearchUserState> get copyWith =>
      _$SearchUserStateCopyWithImpl<SearchUserState>(
          this as SearchUserState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchUserState &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.history, history) &&
            (identical(other.historyHasNext, historyHasNext) ||
                other.historyHasNext == historyHasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(history),
      historyHasNext,
      nextCursor);

  @override
  String toString() {
    return 'SearchUserState(users: $users, history: $history, historyHasNext: $historyHasNext, nextCursor: $nextCursor)';
  }
}

/// @nodoc
abstract mixin class $SearchUserStateCopyWith<$Res> {
  factory $SearchUserStateCopyWith(
          SearchUserState value, $Res Function(SearchUserState) _then) =
      _$SearchUserStateCopyWithImpl;
  @useResult
  $Res call(
      {List<SearchUserResponse> users,
      List<UserSearchHistoryResponse> history,
      bool historyHasNext,
      int? nextCursor});
}

/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._self, this._then);

  final SearchUserState _self;
  final $Res Function(SearchUserState) _then;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? history = null,
    Object? historyHasNext = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_self.copyWith(
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SearchUserResponse>,
      history: null == history
          ? _self.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<UserSearchHistoryResponse>,
      historyHasNext: null == historyHasNext
          ? _self.historyHasNext
          : historyHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchUserState].
extension SearchUserStatePatterns on SearchUserState {
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
    TResult Function(_SearchUserState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchUserState() when $default != null:
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
    TResult Function(_SearchUserState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserState():
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
    TResult? Function(_SearchUserState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserState() when $default != null:
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
            List<SearchUserResponse> users,
            List<UserSearchHistoryResponse> history,
            bool historyHasNext,
            int? nextCursor)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchUserState() when $default != null:
        return $default(
            _that.users, _that.history, _that.historyHasNext, _that.nextCursor);
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
            List<SearchUserResponse> users,
            List<UserSearchHistoryResponse> history,
            bool historyHasNext,
            int? nextCursor)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserState():
        return $default(
            _that.users, _that.history, _that.historyHasNext, _that.nextCursor);
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
            List<SearchUserResponse> users,
            List<UserSearchHistoryResponse> history,
            bool historyHasNext,
            int? nextCursor)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserState() when $default != null:
        return $default(
            _that.users, _that.history, _that.historyHasNext, _that.nextCursor);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SearchUserState implements SearchUserState {
  const _SearchUserState(
      {final List<SearchUserResponse> users = const [],
      final List<UserSearchHistoryResponse> history = const [],
      this.historyHasNext = false,
      this.nextCursor = null})
      : _users = users,
        _history = history;

  final List<SearchUserResponse> _users;
  @override
  @JsonKey()
  List<SearchUserResponse> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<UserSearchHistoryResponse> _history;
  @override
  @JsonKey()
  List<UserSearchHistoryResponse> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  @JsonKey()
  final bool historyHasNext;
  @override
  @JsonKey()
  final int? nextCursor;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchUserStateCopyWith<_SearchUserState> get copyWith =>
      __$SearchUserStateCopyWithImpl<_SearchUserState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchUserState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.historyHasNext, historyHasNext) ||
                other.historyHasNext == historyHasNext) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_history),
      historyHasNext,
      nextCursor);

  @override
  String toString() {
    return 'SearchUserState(users: $users, history: $history, historyHasNext: $historyHasNext, nextCursor: $nextCursor)';
  }
}

/// @nodoc
abstract mixin class _$SearchUserStateCopyWith<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  factory _$SearchUserStateCopyWith(
          _SearchUserState value, $Res Function(_SearchUserState) _then) =
      __$SearchUserStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SearchUserResponse> users,
      List<UserSearchHistoryResponse> history,
      bool historyHasNext,
      int? nextCursor});
}

/// @nodoc
class __$SearchUserStateCopyWithImpl<$Res>
    implements _$SearchUserStateCopyWith<$Res> {
  __$SearchUserStateCopyWithImpl(this._self, this._then);

  final _SearchUserState _self;
  final $Res Function(_SearchUserState) _then;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
    Object? history = null,
    Object? historyHasNext = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_SearchUserState(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SearchUserResponse>,
      history: null == history
          ? _self._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<UserSearchHistoryResponse>,
      historyHasNext: null == historyHasNext
          ? _self.historyHasNext
          : historyHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
