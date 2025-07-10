// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_challenge_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingChallengeRequest {
  int get bookId;
  int get totalPages;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadingChallengeRequestCopyWith<ReadingChallengeRequest> get copyWith =>
      _$ReadingChallengeRequestCopyWithImpl<ReadingChallengeRequest>(
          this as ReadingChallengeRequest, _$identity);

  /// Serializes this ReadingChallengeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadingChallengeRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, totalPages);

  @override
  String toString() {
    return 'ReadingChallengeRequest(bookId: $bookId, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class $ReadingChallengeRequestCopyWith<$Res> {
  factory $ReadingChallengeRequestCopyWith(ReadingChallengeRequest value,
          $Res Function(ReadingChallengeRequest) _then) =
      _$ReadingChallengeRequestCopyWithImpl;
  @useResult
  $Res call({int bookId, int totalPages});
}

/// @nodoc
class _$ReadingChallengeRequestCopyWithImpl<$Res>
    implements $ReadingChallengeRequestCopyWith<$Res> {
  _$ReadingChallengeRequestCopyWithImpl(this._self, this._then);

  final ReadingChallengeRequest _self;
  final $Res Function(ReadingChallengeRequest) _then;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? totalPages = null,
  }) {
    return _then(_self.copyWith(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReadingChallengeRequest].
extension ReadingChallengeRequestPatterns on ReadingChallengeRequest {
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
    TResult Function(_ReadingChallengeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRequest() when $default != null:
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
    TResult Function(_ReadingChallengeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRequest():
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
    TResult? Function(_ReadingChallengeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRequest() when $default != null:
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
    TResult Function(int bookId, int totalPages)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRequest() when $default != null:
        return $default(_that.bookId, _that.totalPages);
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
    TResult Function(int bookId, int totalPages) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRequest():
        return $default(_that.bookId, _that.totalPages);
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
    TResult? Function(int bookId, int totalPages)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadingChallengeRequest() when $default != null:
        return $default(_that.bookId, _that.totalPages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReadingChallengeRequest implements ReadingChallengeRequest {
  const _ReadingChallengeRequest(
      {required this.bookId, required this.totalPages});
  factory _ReadingChallengeRequest.fromJson(Map<String, dynamic> json) =>
      _$ReadingChallengeRequestFromJson(json);

  @override
  final int bookId;
  @override
  final int totalPages;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadingChallengeRequestCopyWith<_ReadingChallengeRequest> get copyWith =>
      __$ReadingChallengeRequestCopyWithImpl<_ReadingChallengeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReadingChallengeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadingChallengeRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, totalPages);

  @override
  String toString() {
    return 'ReadingChallengeRequest(bookId: $bookId, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class _$ReadingChallengeRequestCopyWith<$Res>
    implements $ReadingChallengeRequestCopyWith<$Res> {
  factory _$ReadingChallengeRequestCopyWith(_ReadingChallengeRequest value,
          $Res Function(_ReadingChallengeRequest) _then) =
      __$ReadingChallengeRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int bookId, int totalPages});
}

/// @nodoc
class __$ReadingChallengeRequestCopyWithImpl<$Res>
    implements _$ReadingChallengeRequestCopyWith<$Res> {
  __$ReadingChallengeRequestCopyWithImpl(this._self, this._then);

  final _ReadingChallengeRequest _self;
  final $Res Function(_ReadingChallengeRequest) _then;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
    Object? totalPages = null,
  }) {
    return _then(_ReadingChallengeRequest(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
