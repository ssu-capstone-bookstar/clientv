// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_overview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookOverviewState {
  BookOverviewResponse get overview;

  /// Create a copy of BookOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookOverviewStateCopyWith<BookOverviewState> get copyWith =>
      _$BookOverviewStateCopyWithImpl<BookOverviewState>(
          this as BookOverviewState, _$identity);

  /// Serializes this BookOverviewState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookOverviewState &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, overview);

  @override
  String toString() {
    return 'BookOverviewState(overview: $overview)';
  }
}

/// @nodoc
abstract mixin class $BookOverviewStateCopyWith<$Res> {
  factory $BookOverviewStateCopyWith(
          BookOverviewState value, $Res Function(BookOverviewState) _then) =
      _$BookOverviewStateCopyWithImpl;
  @useResult
  $Res call({BookOverviewResponse overview});

  $BookOverviewResponseCopyWith<$Res> get overview;
}

/// @nodoc
class _$BookOverviewStateCopyWithImpl<$Res>
    implements $BookOverviewStateCopyWith<$Res> {
  _$BookOverviewStateCopyWithImpl(this._self, this._then);

  final BookOverviewState _self;
  final $Res Function(BookOverviewState) _then;

  /// Create a copy of BookOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
  }) {
    return _then(_self.copyWith(
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as BookOverviewResponse,
    ));
  }

  /// Create a copy of BookOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookOverviewResponseCopyWith<$Res> get overview {
    return $BookOverviewResponseCopyWith<$Res>(_self.overview, (value) {
      return _then(_self.copyWith(overview: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookOverviewState].
extension BookOverviewStatePatterns on BookOverviewState {
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
    TResult Function(_BookOverviewState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookOverviewState() when $default != null:
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
    TResult Function(_BookOverviewState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewState():
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
    TResult? Function(_BookOverviewState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewState() when $default != null:
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
    TResult Function(BookOverviewResponse overview)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookOverviewState() when $default != null:
        return $default(_that.overview);
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
    TResult Function(BookOverviewResponse overview) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewState():
        return $default(_that.overview);
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
    TResult? Function(BookOverviewResponse overview)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewState() when $default != null:
        return $default(_that.overview);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookOverviewState implements BookOverviewState {
  const _BookOverviewState({this.overview = const BookOverviewResponse()});
  factory _BookOverviewState.fromJson(Map<String, dynamic> json) =>
      _$BookOverviewStateFromJson(json);

  @override
  @JsonKey()
  final BookOverviewResponse overview;

  /// Create a copy of BookOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookOverviewStateCopyWith<_BookOverviewState> get copyWith =>
      __$BookOverviewStateCopyWithImpl<_BookOverviewState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookOverviewStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookOverviewState &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, overview);

  @override
  String toString() {
    return 'BookOverviewState(overview: $overview)';
  }
}

/// @nodoc
abstract mixin class _$BookOverviewStateCopyWith<$Res>
    implements $BookOverviewStateCopyWith<$Res> {
  factory _$BookOverviewStateCopyWith(
          _BookOverviewState value, $Res Function(_BookOverviewState) _then) =
      __$BookOverviewStateCopyWithImpl;
  @override
  @useResult
  $Res call({BookOverviewResponse overview});

  @override
  $BookOverviewResponseCopyWith<$Res> get overview;
}

/// @nodoc
class __$BookOverviewStateCopyWithImpl<$Res>
    implements _$BookOverviewStateCopyWith<$Res> {
  __$BookOverviewStateCopyWithImpl(this._self, this._then);

  final _BookOverviewState _self;
  final $Res Function(_BookOverviewState) _then;

  /// Create a copy of BookOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? overview = null,
  }) {
    return _then(_BookOverviewState(
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as BookOverviewResponse,
    ));
  }

  /// Create a copy of BookOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookOverviewResponseCopyWith<$Res> get overview {
    return $BookOverviewResponseCopyWith<$Res>(_self.overview, (value) {
      return _then(_self.copyWith(overview: value));
    });
  }
}

// dart format on
