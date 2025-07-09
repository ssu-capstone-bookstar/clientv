// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchHistoryResponse {
  String get queries;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchHistoryResponseCopyWith<SearchHistoryResponse> get copyWith =>
      _$SearchHistoryResponseCopyWithImpl<SearchHistoryResponse>(
          this as SearchHistoryResponse, _$identity);

  /// Serializes this SearchHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchHistoryResponse &&
            (identical(other.queries, queries) || other.queries == queries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, queries);

  @override
  String toString() {
    return 'SearchHistoryResponse(queries: $queries)';
  }
}

/// @nodoc
abstract mixin class $SearchHistoryResponseCopyWith<$Res> {
  factory $SearchHistoryResponseCopyWith(SearchHistoryResponse value,
          $Res Function(SearchHistoryResponse) _then) =
      _$SearchHistoryResponseCopyWithImpl;
  @useResult
  $Res call({String queries});
}

/// @nodoc
class _$SearchHistoryResponseCopyWithImpl<$Res>
    implements $SearchHistoryResponseCopyWith<$Res> {
  _$SearchHistoryResponseCopyWithImpl(this._self, this._then);

  final SearchHistoryResponse _self;
  final $Res Function(SearchHistoryResponse) _then;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_self.copyWith(
      queries: null == queries
          ? _self.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchHistoryResponse].
extension SearchHistoryResponsePatterns on SearchHistoryResponse {
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
    TResult Function(_SearchHistoryResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchHistoryResponse() when $default != null:
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
    TResult Function(_SearchHistoryResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchHistoryResponse():
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
    TResult? Function(_SearchHistoryResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchHistoryResponse() when $default != null:
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
    TResult Function(String queries)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchHistoryResponse() when $default != null:
        return $default(_that.queries);
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
    TResult Function(String queries) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchHistoryResponse():
        return $default(_that.queries);
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
    TResult? Function(String queries)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchHistoryResponse() when $default != null:
        return $default(_that.queries);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchHistoryResponse implements SearchHistoryResponse {
  const _SearchHistoryResponse({this.queries = ''});
  factory _SearchHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryResponseFromJson(json);

  @override
  @JsonKey()
  final String queries;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchHistoryResponseCopyWith<_SearchHistoryResponse> get copyWith =>
      __$SearchHistoryResponseCopyWithImpl<_SearchHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchHistoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchHistoryResponse &&
            (identical(other.queries, queries) || other.queries == queries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, queries);

  @override
  String toString() {
    return 'SearchHistoryResponse(queries: $queries)';
  }
}

/// @nodoc
abstract mixin class _$SearchHistoryResponseCopyWith<$Res>
    implements $SearchHistoryResponseCopyWith<$Res> {
  factory _$SearchHistoryResponseCopyWith(_SearchHistoryResponse value,
          $Res Function(_SearchHistoryResponse) _then) =
      __$SearchHistoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String queries});
}

/// @nodoc
class __$SearchHistoryResponseCopyWithImpl<$Res>
    implements _$SearchHistoryResponseCopyWith<$Res> {
  __$SearchHistoryResponseCopyWithImpl(this._self, this._then);

  final _SearchHistoryResponse _self;
  final $Res Function(_SearchHistoryResponse) _then;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? queries = null,
  }) {
    return _then(_SearchHistoryResponse(
      queries: null == queries
          ? _self.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
