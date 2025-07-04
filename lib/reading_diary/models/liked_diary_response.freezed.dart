// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_diary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikedDiaryResponse {
  int get diaryId;
  int get likeId;
  int get bookId;
  int get readingDiaryId;
  String get thumbnailImageUrl;

  /// Create a copy of LikedDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryResponseCopyWith<LikedDiaryResponse> get copyWith =>
      _$LikedDiaryResponseCopyWithImpl<LikedDiaryResponse>(
          this as LikedDiaryResponse, _$identity);

  /// Serializes this LikedDiaryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryResponse &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.likeId, likeId) || other.likeId == likeId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.readingDiaryId, readingDiaryId) ||
                other.readingDiaryId == readingDiaryId) &&
            (identical(other.thumbnailImageUrl, thumbnailImageUrl) ||
                other.thumbnailImageUrl == thumbnailImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, diaryId, likeId, bookId, readingDiaryId, thumbnailImageUrl);

  @override
  String toString() {
    return 'LikedDiaryResponse(diaryId: $diaryId, likeId: $likeId, bookId: $bookId, readingDiaryId: $readingDiaryId, thumbnailImageUrl: $thumbnailImageUrl)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryResponseCopyWith<$Res> {
  factory $LikedDiaryResponseCopyWith(
          LikedDiaryResponse value, $Res Function(LikedDiaryResponse) _then) =
      _$LikedDiaryResponseCopyWithImpl;
  @useResult
  $Res call(
      {int diaryId,
      int likeId,
      int bookId,
      int readingDiaryId,
      String thumbnailImageUrl});
}

/// @nodoc
class _$LikedDiaryResponseCopyWithImpl<$Res>
    implements $LikedDiaryResponseCopyWith<$Res> {
  _$LikedDiaryResponseCopyWithImpl(this._self, this._then);

  final LikedDiaryResponse _self;
  final $Res Function(LikedDiaryResponse) _then;

  /// Create a copy of LikedDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? likeId = null,
    Object? bookId = null,
    Object? readingDiaryId = null,
    Object? thumbnailImageUrl = null,
  }) {
    return _then(_self.copyWith(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      likeId: null == likeId
          ? _self.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      readingDiaryId: null == readingDiaryId
          ? _self.readingDiaryId
          : readingDiaryId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImageUrl: null == thumbnailImageUrl
          ? _self.thumbnailImageUrl
          : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryResponse].
extension LikedDiaryResponsePatterns on LikedDiaryResponse {
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
    TResult Function(_LikedDiaryResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryResponse() when $default != null:
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
    TResult Function(_LikedDiaryResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryResponse():
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
    TResult? Function(_LikedDiaryResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryResponse() when $default != null:
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
    TResult Function(int diaryId, int likeId, int bookId, int readingDiaryId,
            String thumbnailImageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryResponse() when $default != null:
        return $default(_that.diaryId, _that.likeId, _that.bookId,
            _that.readingDiaryId, _that.thumbnailImageUrl);
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
    TResult Function(int diaryId, int likeId, int bookId, int readingDiaryId,
            String thumbnailImageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryResponse():
        return $default(_that.diaryId, _that.likeId, _that.bookId,
            _that.readingDiaryId, _that.thumbnailImageUrl);
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
    TResult? Function(int diaryId, int likeId, int bookId, int readingDiaryId,
            String thumbnailImageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryResponse() when $default != null:
        return $default(_that.diaryId, _that.likeId, _that.bookId,
            _that.readingDiaryId, _that.thumbnailImageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryResponse implements LikedDiaryResponse {
  const _LikedDiaryResponse(
      {this.diaryId = 0,
      this.likeId = 0,
      this.bookId = 0,
      this.readingDiaryId = 0,
      this.thumbnailImageUrl = ''});
  factory _LikedDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryResponseFromJson(json);

  @override
  @JsonKey()
  final int diaryId;
  @override
  @JsonKey()
  final int likeId;
  @override
  @JsonKey()
  final int bookId;
  @override
  @JsonKey()
  final int readingDiaryId;
  @override
  @JsonKey()
  final String thumbnailImageUrl;

  /// Create a copy of LikedDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryResponseCopyWith<_LikedDiaryResponse> get copyWith =>
      __$LikedDiaryResponseCopyWithImpl<_LikedDiaryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryResponse &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.likeId, likeId) || other.likeId == likeId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.readingDiaryId, readingDiaryId) ||
                other.readingDiaryId == readingDiaryId) &&
            (identical(other.thumbnailImageUrl, thumbnailImageUrl) ||
                other.thumbnailImageUrl == thumbnailImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, diaryId, likeId, bookId, readingDiaryId, thumbnailImageUrl);

  @override
  String toString() {
    return 'LikedDiaryResponse(diaryId: $diaryId, likeId: $likeId, bookId: $bookId, readingDiaryId: $readingDiaryId, thumbnailImageUrl: $thumbnailImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryResponseCopyWith<$Res>
    implements $LikedDiaryResponseCopyWith<$Res> {
  factory _$LikedDiaryResponseCopyWith(
          _LikedDiaryResponse value, $Res Function(_LikedDiaryResponse) _then) =
      __$LikedDiaryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int diaryId,
      int likeId,
      int bookId,
      int readingDiaryId,
      String thumbnailImageUrl});
}

/// @nodoc
class __$LikedDiaryResponseCopyWithImpl<$Res>
    implements _$LikedDiaryResponseCopyWith<$Res> {
  __$LikedDiaryResponseCopyWithImpl(this._self, this._then);

  final _LikedDiaryResponse _self;
  final $Res Function(_LikedDiaryResponse) _then;

  /// Create a copy of LikedDiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? likeId = null,
    Object? bookId = null,
    Object? readingDiaryId = null,
    Object? thumbnailImageUrl = null,
  }) {
    return _then(_LikedDiaryResponse(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      likeId: null == likeId
          ? _self.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      readingDiaryId: null == readingDiaryId
          ? _self.readingDiaryId
          : readingDiaryId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImageUrl: null == thumbnailImageUrl
          ? _self.thumbnailImageUrl
          : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
