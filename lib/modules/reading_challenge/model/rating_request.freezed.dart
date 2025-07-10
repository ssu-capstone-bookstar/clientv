// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RatingRequest {
  int get bookId;
  int get rating;
  int get recommendationScore;

  /// Create a copy of RatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RatingRequestCopyWith<RatingRequest> get copyWith =>
      _$RatingRequestCopyWithImpl<RatingRequest>(
          this as RatingRequest, _$identity);

  /// Serializes this RatingRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RatingRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.recommendationScore, recommendationScore) ||
                other.recommendationScore == recommendationScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, rating, recommendationScore);

  @override
  String toString() {
    return 'RatingRequest(bookId: $bookId, rating: $rating, recommendationScore: $recommendationScore)';
  }
}

/// @nodoc
abstract mixin class $RatingRequestCopyWith<$Res> {
  factory $RatingRequestCopyWith(
          RatingRequest value, $Res Function(RatingRequest) _then) =
      _$RatingRequestCopyWithImpl;
  @useResult
  $Res call({int bookId, int rating, int recommendationScore});
}

/// @nodoc
class _$RatingRequestCopyWithImpl<$Res>
    implements $RatingRequestCopyWith<$Res> {
  _$RatingRequestCopyWithImpl(this._self, this._then);

  final RatingRequest _self;
  final $Res Function(RatingRequest) _then;

  /// Create a copy of RatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? rating = null,
    Object? recommendationScore = null,
  }) {
    return _then(_self.copyWith(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      recommendationScore: null == recommendationScore
          ? _self.recommendationScore
          : recommendationScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [RatingRequest].
extension RatingRequestPatterns on RatingRequest {
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
    TResult Function(_RatingRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RatingRequest() when $default != null:
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
    TResult Function(_RatingRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RatingRequest():
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
    TResult? Function(_RatingRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RatingRequest() when $default != null:
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
    TResult Function(int bookId, int rating, int recommendationScore)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RatingRequest() when $default != null:
        return $default(_that.bookId, _that.rating, _that.recommendationScore);
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
    TResult Function(int bookId, int rating, int recommendationScore) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RatingRequest():
        return $default(_that.bookId, _that.rating, _that.recommendationScore);
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
    TResult? Function(int bookId, int rating, int recommendationScore)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RatingRequest() when $default != null:
        return $default(_that.bookId, _that.rating, _that.recommendationScore);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RatingRequest implements RatingRequest {
  const _RatingRequest(
      {this.bookId = 0, this.rating = 0, this.recommendationScore = 0});
  factory _RatingRequest.fromJson(Map<String, dynamic> json) =>
      _$RatingRequestFromJson(json);

  @override
  @JsonKey()
  final int bookId;
  @override
  @JsonKey()
  final int rating;
  @override
  @JsonKey()
  final int recommendationScore;

  /// Create a copy of RatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RatingRequestCopyWith<_RatingRequest> get copyWith =>
      __$RatingRequestCopyWithImpl<_RatingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RatingRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RatingRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.recommendationScore, recommendationScore) ||
                other.recommendationScore == recommendationScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, rating, recommendationScore);

  @override
  String toString() {
    return 'RatingRequest(bookId: $bookId, rating: $rating, recommendationScore: $recommendationScore)';
  }
}

/// @nodoc
abstract mixin class _$RatingRequestCopyWith<$Res>
    implements $RatingRequestCopyWith<$Res> {
  factory _$RatingRequestCopyWith(
          _RatingRequest value, $Res Function(_RatingRequest) _then) =
      __$RatingRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int bookId, int rating, int recommendationScore});
}

/// @nodoc
class __$RatingRequestCopyWithImpl<$Res>
    implements _$RatingRequestCopyWith<$Res> {
  __$RatingRequestCopyWithImpl(this._self, this._then);

  final _RatingRequest _self;
  final $Res Function(_RatingRequest) _then;

  /// Create a copy of RatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
    Object? rating = null,
    Object? recommendationScore = null,
  }) {
    return _then(_RatingRequest(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      recommendationScore: null == recommendationScore
          ? _self.recommendationScore
          : recommendationScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
