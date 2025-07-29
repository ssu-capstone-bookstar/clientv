// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_rating_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookRatingRequest {
  int get rating;

  /// Create a copy of BookRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookRatingRequestCopyWith<BookRatingRequest> get copyWith =>
      _$BookRatingRequestCopyWithImpl<BookRatingRequest>(
          this as BookRatingRequest, _$identity);

  /// Serializes this BookRatingRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookRatingRequest &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @override
  String toString() {
    return 'BookRatingRequest(rating: $rating)';
  }
}

/// @nodoc
abstract mixin class $BookRatingRequestCopyWith<$Res> {
  factory $BookRatingRequestCopyWith(
          BookRatingRequest value, $Res Function(BookRatingRequest) _then) =
      _$BookRatingRequestCopyWithImpl;
  @useResult
  $Res call({int rating});
}

/// @nodoc
class _$BookRatingRequestCopyWithImpl<$Res>
    implements $BookRatingRequestCopyWith<$Res> {
  _$BookRatingRequestCopyWithImpl(this._self, this._then);

  final BookRatingRequest _self;
  final $Res Function(BookRatingRequest) _then;

  /// Create a copy of BookRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_self.copyWith(
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookRatingRequest].
extension BookRatingRequestPatterns on BookRatingRequest {
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
    TResult Function(_BookRatingRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookRatingRequest() when $default != null:
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
    TResult Function(_BookRatingRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookRatingRequest():
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
    TResult? Function(_BookRatingRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookRatingRequest() when $default != null:
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
    TResult Function(int rating)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookRatingRequest() when $default != null:
        return $default(_that.rating);
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
    TResult Function(int rating) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookRatingRequest():
        return $default(_that.rating);
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
    TResult? Function(int rating)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookRatingRequest() when $default != null:
        return $default(_that.rating);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookRatingRequest implements BookRatingRequest {
  const _BookRatingRequest({required this.rating});
  factory _BookRatingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookRatingRequestFromJson(json);

  @override
  final int rating;

  /// Create a copy of BookRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookRatingRequestCopyWith<_BookRatingRequest> get copyWith =>
      __$BookRatingRequestCopyWithImpl<_BookRatingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookRatingRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookRatingRequest &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @override
  String toString() {
    return 'BookRatingRequest(rating: $rating)';
  }
}

/// @nodoc
abstract mixin class _$BookRatingRequestCopyWith<$Res>
    implements $BookRatingRequestCopyWith<$Res> {
  factory _$BookRatingRequestCopyWith(
          _BookRatingRequest value, $Res Function(_BookRatingRequest) _then) =
      __$BookRatingRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int rating});
}

/// @nodoc
class __$BookRatingRequestCopyWithImpl<$Res>
    implements _$BookRatingRequestCopyWith<$Res> {
  __$BookRatingRequestCopyWithImpl(this._self, this._then);

  final _BookRatingRequest _self;
  final $Res Function(_BookRatingRequest) _then;

  /// Create a copy of BookRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rating = null,
  }) {
    return _then(_BookRatingRequest(
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
