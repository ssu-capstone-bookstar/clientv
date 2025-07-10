// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_challenge_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentChallengeState {
  SearchBookResponse? get book;
  int? get totalPages;
  String? get challengeId;
  int? get lastReadPage;

  /// Create a copy of CurrentChallengeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentChallengeStateCopyWith<CurrentChallengeState> get copyWith =>
      _$CurrentChallengeStateCopyWithImpl<CurrentChallengeState>(
          this as CurrentChallengeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentChallengeState &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.lastReadPage, lastReadPage) ||
                other.lastReadPage == lastReadPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, book, totalPages, challengeId, lastReadPage);

  @override
  String toString() {
    return 'CurrentChallengeState(book: $book, totalPages: $totalPages, challengeId: $challengeId, lastReadPage: $lastReadPage)';
  }
}

/// @nodoc
abstract mixin class $CurrentChallengeStateCopyWith<$Res> {
  factory $CurrentChallengeStateCopyWith(CurrentChallengeState value,
          $Res Function(CurrentChallengeState) _then) =
      _$CurrentChallengeStateCopyWithImpl;
  @useResult
  $Res call(
      {SearchBookResponse? book,
      int? totalPages,
      String? challengeId,
      int? lastReadPage});

  $SearchBookResponseCopyWith<$Res>? get book;
}

/// @nodoc
class _$CurrentChallengeStateCopyWithImpl<$Res>
    implements $CurrentChallengeStateCopyWith<$Res> {
  _$CurrentChallengeStateCopyWithImpl(this._self, this._then);

  final CurrentChallengeState _self;
  final $Res Function(CurrentChallengeState) _then;

  /// Create a copy of CurrentChallengeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? totalPages = freezed,
    Object? challengeId = freezed,
    Object? lastReadPage = freezed,
  }) {
    return _then(_self.copyWith(
      book: freezed == book
          ? _self.book
          : book // ignore: cast_nullable_to_non_nullable
              as SearchBookResponse?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      challengeId: freezed == challengeId
          ? _self.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReadPage: freezed == lastReadPage
          ? _self.lastReadPage
          : lastReadPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of CurrentChallengeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchBookResponseCopyWith<$Res>? get book {
    if (_self.book == null) {
      return null;
    }

    return $SearchBookResponseCopyWith<$Res>(_self.book!, (value) {
      return _then(_self.copyWith(book: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CurrentChallengeState].
extension CurrentChallengeStatePatterns on CurrentChallengeState {
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
    TResult Function(_CurrentChallengeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrentChallengeState() when $default != null:
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
    TResult Function(_CurrentChallengeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentChallengeState():
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
    TResult? Function(_CurrentChallengeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentChallengeState() when $default != null:
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
    TResult Function(SearchBookResponse? book, int? totalPages,
            String? challengeId, int? lastReadPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrentChallengeState() when $default != null:
        return $default(_that.book, _that.totalPages, _that.challengeId,
            _that.lastReadPage);
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
    TResult Function(SearchBookResponse? book, int? totalPages,
            String? challengeId, int? lastReadPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentChallengeState():
        return $default(_that.book, _that.totalPages, _that.challengeId,
            _that.lastReadPage);
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
    TResult? Function(SearchBookResponse? book, int? totalPages,
            String? challengeId, int? lastReadPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrentChallengeState() when $default != null:
        return $default(_that.book, _that.totalPages, _that.challengeId,
            _that.lastReadPage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CurrentChallengeState implements CurrentChallengeState {
  const _CurrentChallengeState(
      {this.book, this.totalPages, this.challengeId, this.lastReadPage});

  @override
  final SearchBookResponse? book;
  @override
  final int? totalPages;
  @override
  final String? challengeId;
  @override
  final int? lastReadPage;

  /// Create a copy of CurrentChallengeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentChallengeStateCopyWith<_CurrentChallengeState> get copyWith =>
      __$CurrentChallengeStateCopyWithImpl<_CurrentChallengeState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentChallengeState &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.lastReadPage, lastReadPage) ||
                other.lastReadPage == lastReadPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, book, totalPages, challengeId, lastReadPage);

  @override
  String toString() {
    return 'CurrentChallengeState(book: $book, totalPages: $totalPages, challengeId: $challengeId, lastReadPage: $lastReadPage)';
  }
}

/// @nodoc
abstract mixin class _$CurrentChallengeStateCopyWith<$Res>
    implements $CurrentChallengeStateCopyWith<$Res> {
  factory _$CurrentChallengeStateCopyWith(_CurrentChallengeState value,
          $Res Function(_CurrentChallengeState) _then) =
      __$CurrentChallengeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SearchBookResponse? book,
      int? totalPages,
      String? challengeId,
      int? lastReadPage});

  @override
  $SearchBookResponseCopyWith<$Res>? get book;
}

/// @nodoc
class __$CurrentChallengeStateCopyWithImpl<$Res>
    implements _$CurrentChallengeStateCopyWith<$Res> {
  __$CurrentChallengeStateCopyWithImpl(this._self, this._then);

  final _CurrentChallengeState _self;
  final $Res Function(_CurrentChallengeState) _then;

  /// Create a copy of CurrentChallengeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? book = freezed,
    Object? totalPages = freezed,
    Object? challengeId = freezed,
    Object? lastReadPage = freezed,
  }) {
    return _then(_CurrentChallengeState(
      book: freezed == book
          ? _self.book
          : book // ignore: cast_nullable_to_non_nullable
              as SearchBookResponse?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      challengeId: freezed == challengeId
          ? _self.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReadPage: freezed == lastReadPage
          ? _self.lastReadPage
          : lastReadPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of CurrentChallengeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchBookResponseCopyWith<$Res>? get book {
    if (_self.book == null) {
      return null;
    }

    return $SearchBookResponseCopyWith<$Res>(_self.book!, (value) {
      return _then(_self.copyWith(book: value));
    });
  }
}

// dart format on
