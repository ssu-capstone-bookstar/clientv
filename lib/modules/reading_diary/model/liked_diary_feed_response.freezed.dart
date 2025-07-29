// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_diary_feed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikedDiaryFeedResponse {
  StatusResponse get statusResponse;
  LikedDiaryFeedData get data;

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryFeedResponseCopyWith<LikedDiaryFeedResponse> get copyWith =>
      _$LikedDiaryFeedResponseCopyWithImpl<LikedDiaryFeedResponse>(
          this as LikedDiaryFeedResponse, _$identity);

  /// Serializes this LikedDiaryFeedResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryFeedResponse &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusResponse, data);

  @override
  String toString() {
    return 'LikedDiaryFeedResponse(statusResponse: $statusResponse, data: $data)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryFeedResponseCopyWith<$Res> {
  factory $LikedDiaryFeedResponseCopyWith(LikedDiaryFeedResponse value,
          $Res Function(LikedDiaryFeedResponse) _then) =
      _$LikedDiaryFeedResponseCopyWithImpl;
  @useResult
  $Res call({StatusResponse statusResponse, LikedDiaryFeedData data});

  $StatusResponseCopyWith<$Res> get statusResponse;
  $LikedDiaryFeedDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LikedDiaryFeedResponseCopyWithImpl<$Res>
    implements $LikedDiaryFeedResponseCopyWith<$Res> {
  _$LikedDiaryFeedResponseCopyWithImpl(this._self, this._then);

  final LikedDiaryFeedResponse _self;
  final $Res Function(LikedDiaryFeedResponse) _then;

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusResponse = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      statusResponse: null == statusResponse
          ? _self.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikedDiaryFeedData,
    ));
  }

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<$Res> get statusResponse {
    return $StatusResponseCopyWith<$Res>(_self.statusResponse, (value) {
      return _then(_self.copyWith(statusResponse: value));
    });
  }

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikedDiaryFeedDataCopyWith<$Res> get data {
    return $LikedDiaryFeedDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryFeedResponse].
extension LikedDiaryFeedResponsePatterns on LikedDiaryFeedResponse {
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
    TResult Function(_LikedDiaryFeedResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedResponse() when $default != null:
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
    TResult Function(_LikedDiaryFeedResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedResponse():
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
    TResult? Function(_LikedDiaryFeedResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedResponse() when $default != null:
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
    TResult Function(StatusResponse statusResponse, LikedDiaryFeedData data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedResponse() when $default != null:
        return $default(_that.statusResponse, _that.data);
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
    TResult Function(StatusResponse statusResponse, LikedDiaryFeedData data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedResponse():
        return $default(_that.statusResponse, _that.data);
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
    TResult? Function(StatusResponse statusResponse, LikedDiaryFeedData data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedResponse() when $default != null:
        return $default(_that.statusResponse, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryFeedResponse implements LikedDiaryFeedResponse {
  const _LikedDiaryFeedResponse(
      {required this.statusResponse, required this.data});
  factory _LikedDiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryFeedResponseFromJson(json);

  @override
  final StatusResponse statusResponse;
  @override
  final LikedDiaryFeedData data;

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryFeedResponseCopyWith<_LikedDiaryFeedResponse> get copyWith =>
      __$LikedDiaryFeedResponseCopyWithImpl<_LikedDiaryFeedResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryFeedResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryFeedResponse &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusResponse, data);

  @override
  String toString() {
    return 'LikedDiaryFeedResponse(statusResponse: $statusResponse, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryFeedResponseCopyWith<$Res>
    implements $LikedDiaryFeedResponseCopyWith<$Res> {
  factory _$LikedDiaryFeedResponseCopyWith(_LikedDiaryFeedResponse value,
          $Res Function(_LikedDiaryFeedResponse) _then) =
      __$LikedDiaryFeedResponseCopyWithImpl;
  @override
  @useResult
  $Res call({StatusResponse statusResponse, LikedDiaryFeedData data});

  @override
  $StatusResponseCopyWith<$Res> get statusResponse;
  @override
  $LikedDiaryFeedDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LikedDiaryFeedResponseCopyWithImpl<$Res>
    implements _$LikedDiaryFeedResponseCopyWith<$Res> {
  __$LikedDiaryFeedResponseCopyWithImpl(this._self, this._then);

  final _LikedDiaryFeedResponse _self;
  final $Res Function(_LikedDiaryFeedResponse) _then;

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statusResponse = null,
    Object? data = null,
  }) {
    return _then(_LikedDiaryFeedResponse(
      statusResponse: null == statusResponse
          ? _self.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikedDiaryFeedData,
    ));
  }

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<$Res> get statusResponse {
    return $StatusResponseCopyWith<$Res>(_self.statusResponse, (value) {
      return _then(_self.copyWith(statusResponse: value));
    });
  }

  /// Create a copy of LikedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikedDiaryFeedDataCopyWith<$Res> get data {
    return $LikedDiaryFeedDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$LikedDiaryFeedData {
  List<LikedDiaryFeed> get data;
  int get nextCursor;
  bool get hasNext;

  /// Create a copy of LikedDiaryFeedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryFeedDataCopyWith<LikedDiaryFeedData> get copyWith =>
      _$LikedDiaryFeedDataCopyWithImpl<LikedDiaryFeedData>(
          this as LikedDiaryFeedData, _$identity);

  /// Serializes this LikedDiaryFeedData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryFeedData &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), nextCursor, hasNext);

  @override
  String toString() {
    return 'LikedDiaryFeedData(data: $data, nextCursor: $nextCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryFeedDataCopyWith<$Res> {
  factory $LikedDiaryFeedDataCopyWith(
          LikedDiaryFeedData value, $Res Function(LikedDiaryFeedData) _then) =
      _$LikedDiaryFeedDataCopyWithImpl;
  @useResult
  $Res call({List<LikedDiaryFeed> data, int nextCursor, bool hasNext});
}

/// @nodoc
class _$LikedDiaryFeedDataCopyWithImpl<$Res>
    implements $LikedDiaryFeedDataCopyWith<$Res> {
  _$LikedDiaryFeedDataCopyWithImpl(this._self, this._then);

  final LikedDiaryFeedData _self;
  final $Res Function(LikedDiaryFeedData) _then;

  /// Create a copy of LikedDiaryFeedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextCursor = null,
    Object? hasNext = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryFeed>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryFeedData].
extension LikedDiaryFeedDataPatterns on LikedDiaryFeedData {
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
    TResult Function(_LikedDiaryFeedData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedData() when $default != null:
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
    TResult Function(_LikedDiaryFeedData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedData():
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
    TResult? Function(_LikedDiaryFeedData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedData() when $default != null:
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
    TResult Function(List<LikedDiaryFeed> data, int nextCursor, bool hasNext)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedData() when $default != null:
        return $default(_that.data, _that.nextCursor, _that.hasNext);
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
    TResult Function(List<LikedDiaryFeed> data, int nextCursor, bool hasNext)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedData():
        return $default(_that.data, _that.nextCursor, _that.hasNext);
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
    TResult? Function(List<LikedDiaryFeed> data, int nextCursor, bool hasNext)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeedData() when $default != null:
        return $default(_that.data, _that.nextCursor, _that.hasNext);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryFeedData implements LikedDiaryFeedData {
  const _LikedDiaryFeedData(
      {required final List<LikedDiaryFeed> data,
      required this.nextCursor,
      required this.hasNext})
      : _data = data;
  factory _LikedDiaryFeedData.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryFeedDataFromJson(json);

  final List<LikedDiaryFeed> _data;
  @override
  List<LikedDiaryFeed> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int nextCursor;
  @override
  final bool hasNext;

  /// Create a copy of LikedDiaryFeedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryFeedDataCopyWith<_LikedDiaryFeedData> get copyWith =>
      __$LikedDiaryFeedDataCopyWithImpl<_LikedDiaryFeedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryFeedDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryFeedData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), nextCursor, hasNext);

  @override
  String toString() {
    return 'LikedDiaryFeedData(data: $data, nextCursor: $nextCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryFeedDataCopyWith<$Res>
    implements $LikedDiaryFeedDataCopyWith<$Res> {
  factory _$LikedDiaryFeedDataCopyWith(
          _LikedDiaryFeedData value, $Res Function(_LikedDiaryFeedData) _then) =
      __$LikedDiaryFeedDataCopyWithImpl;
  @override
  @useResult
  $Res call({List<LikedDiaryFeed> data, int nextCursor, bool hasNext});
}

/// @nodoc
class __$LikedDiaryFeedDataCopyWithImpl<$Res>
    implements _$LikedDiaryFeedDataCopyWith<$Res> {
  __$LikedDiaryFeedDataCopyWithImpl(this._self, this._then);

  final _LikedDiaryFeedData _self;
  final $Res Function(_LikedDiaryFeedData) _then;

  /// Create a copy of LikedDiaryFeedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? nextCursor = null,
    Object? hasNext = null,
  }) {
    return _then(_LikedDiaryFeedData(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryFeed>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$LikedDiaryFeed {
  int get diaryId;
  String get content;
  DateTime get createdDate;
  int get memberId;
  String get nickname;
  String get profileImageUrl;
  int get bookId;
  String get bookTitle;
  String get bookAuthor;
  int get bookRating;
  List<DiaryImage> get images;
  int get likeCount;
  int get commentCount;
  int get viewCount;
  int get diaryLikeId;
  bool get liked;
  bool get scraped;

  /// Create a copy of LikedDiaryFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryFeedCopyWith<LikedDiaryFeed> get copyWith =>
      _$LikedDiaryFeedCopyWithImpl<LikedDiaryFeed>(
          this as LikedDiaryFeed, _$identity);

  /// Serializes this LikedDiaryFeed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryFeed &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.bookAuthor, bookAuthor) ||
                other.bookAuthor == bookAuthor) &&
            (identical(other.bookRating, bookRating) ||
                other.bookRating == bookRating) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.diaryLikeId, diaryLikeId) ||
                other.diaryLikeId == diaryLikeId) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.scraped, scraped) || other.scraped == scraped));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diaryId,
      content,
      createdDate,
      memberId,
      nickname,
      profileImageUrl,
      bookId,
      bookTitle,
      bookAuthor,
      bookRating,
      const DeepCollectionEquality().hash(images),
      likeCount,
      commentCount,
      viewCount,
      diaryLikeId,
      liked,
      scraped);

  @override
  String toString() {
    return 'LikedDiaryFeed(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, diaryLikeId: $diaryLikeId, liked: $liked, scraped: $scraped)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryFeedCopyWith<$Res> {
  factory $LikedDiaryFeedCopyWith(
          LikedDiaryFeed value, $Res Function(LikedDiaryFeed) _then) =
      _$LikedDiaryFeedCopyWithImpl;
  @useResult
  $Res call(
      {int diaryId,
      String content,
      DateTime createdDate,
      int memberId,
      String nickname,
      String profileImageUrl,
      int bookId,
      String bookTitle,
      String bookAuthor,
      int bookRating,
      List<DiaryImage> images,
      int likeCount,
      int commentCount,
      int viewCount,
      int diaryLikeId,
      bool liked,
      bool scraped});
}

/// @nodoc
class _$LikedDiaryFeedCopyWithImpl<$Res>
    implements $LikedDiaryFeedCopyWith<$Res> {
  _$LikedDiaryFeedCopyWithImpl(this._self, this._then);

  final LikedDiaryFeed _self;
  final $Res Function(LikedDiaryFeed) _then;

  /// Create a copy of LikedDiaryFeed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? content = null,
    Object? createdDate = null,
    Object? memberId = null,
    Object? nickname = null,
    Object? profileImageUrl = null,
    Object? bookId = null,
    Object? bookTitle = null,
    Object? bookAuthor = null,
    Object? bookRating = null,
    Object? images = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? viewCount = null,
    Object? diaryLikeId = null,
    Object? liked = null,
    Object? scraped = null,
  }) {
    return _then(_self.copyWith(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _self.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      bookTitle: null == bookTitle
          ? _self.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      bookAuthor: null == bookAuthor
          ? _self.bookAuthor
          : bookAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      bookRating: null == bookRating
          ? _self.bookRating
          : bookRating // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DiaryImage>,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _self.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _self.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      diaryLikeId: null == diaryLikeId
          ? _self.diaryLikeId
          : diaryLikeId // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _self.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      scraped: null == scraped
          ? _self.scraped
          : scraped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryFeed].
extension LikedDiaryFeedPatterns on LikedDiaryFeed {
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
    TResult Function(_LikedDiaryFeed value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeed() when $default != null:
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
    TResult Function(_LikedDiaryFeed value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeed():
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
    TResult? Function(_LikedDiaryFeed value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeed() when $default != null:
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
            int diaryId,
            String content,
            DateTime createdDate,
            int memberId,
            String nickname,
            String profileImageUrl,
            int bookId,
            String bookTitle,
            String bookAuthor,
            int bookRating,
            List<DiaryImage> images,
            int likeCount,
            int commentCount,
            int viewCount,
            int diaryLikeId,
            bool liked,
            bool scraped)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeed() when $default != null:
        return $default(
            _that.diaryId,
            _that.content,
            _that.createdDate,
            _that.memberId,
            _that.nickname,
            _that.profileImageUrl,
            _that.bookId,
            _that.bookTitle,
            _that.bookAuthor,
            _that.bookRating,
            _that.images,
            _that.likeCount,
            _that.commentCount,
            _that.viewCount,
            _that.diaryLikeId,
            _that.liked,
            _that.scraped);
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
            int diaryId,
            String content,
            DateTime createdDate,
            int memberId,
            String nickname,
            String profileImageUrl,
            int bookId,
            String bookTitle,
            String bookAuthor,
            int bookRating,
            List<DiaryImage> images,
            int likeCount,
            int commentCount,
            int viewCount,
            int diaryLikeId,
            bool liked,
            bool scraped)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeed():
        return $default(
            _that.diaryId,
            _that.content,
            _that.createdDate,
            _that.memberId,
            _that.nickname,
            _that.profileImageUrl,
            _that.bookId,
            _that.bookTitle,
            _that.bookAuthor,
            _that.bookRating,
            _that.images,
            _that.likeCount,
            _that.commentCount,
            _that.viewCount,
            _that.diaryLikeId,
            _that.liked,
            _that.scraped);
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
            int diaryId,
            String content,
            DateTime createdDate,
            int memberId,
            String nickname,
            String profileImageUrl,
            int bookId,
            String bookTitle,
            String bookAuthor,
            int bookRating,
            List<DiaryImage> images,
            int likeCount,
            int commentCount,
            int viewCount,
            int diaryLikeId,
            bool liked,
            bool scraped)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryFeed() when $default != null:
        return $default(
            _that.diaryId,
            _that.content,
            _that.createdDate,
            _that.memberId,
            _that.nickname,
            _that.profileImageUrl,
            _that.bookId,
            _that.bookTitle,
            _that.bookAuthor,
            _that.bookRating,
            _that.images,
            _that.likeCount,
            _that.commentCount,
            _that.viewCount,
            _that.diaryLikeId,
            _that.liked,
            _that.scraped);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryFeed implements LikedDiaryFeed {
  const _LikedDiaryFeed(
      {required this.diaryId,
      required this.content,
      required this.createdDate,
      required this.memberId,
      required this.nickname,
      required this.profileImageUrl,
      required this.bookId,
      required this.bookTitle,
      required this.bookAuthor,
      required this.bookRating,
      required final List<DiaryImage> images,
      required this.likeCount,
      required this.commentCount,
      required this.viewCount,
      required this.diaryLikeId,
      required this.liked,
      required this.scraped})
      : _images = images;
  factory _LikedDiaryFeed.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryFeedFromJson(json);

  @override
  final int diaryId;
  @override
  final String content;
  @override
  final DateTime createdDate;
  @override
  final int memberId;
  @override
  final String nickname;
  @override
  final String profileImageUrl;
  @override
  final int bookId;
  @override
  final String bookTitle;
  @override
  final String bookAuthor;
  @override
  final int bookRating;
  final List<DiaryImage> _images;
  @override
  List<DiaryImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final int viewCount;
  @override
  final int diaryLikeId;
  @override
  final bool liked;
  @override
  final bool scraped;

  /// Create a copy of LikedDiaryFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryFeedCopyWith<_LikedDiaryFeed> get copyWith =>
      __$LikedDiaryFeedCopyWithImpl<_LikedDiaryFeed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryFeedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryFeed &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.bookAuthor, bookAuthor) ||
                other.bookAuthor == bookAuthor) &&
            (identical(other.bookRating, bookRating) ||
                other.bookRating == bookRating) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.diaryLikeId, diaryLikeId) ||
                other.diaryLikeId == diaryLikeId) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.scraped, scraped) || other.scraped == scraped));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diaryId,
      content,
      createdDate,
      memberId,
      nickname,
      profileImageUrl,
      bookId,
      bookTitle,
      bookAuthor,
      bookRating,
      const DeepCollectionEquality().hash(_images),
      likeCount,
      commentCount,
      viewCount,
      diaryLikeId,
      liked,
      scraped);

  @override
  String toString() {
    return 'LikedDiaryFeed(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, diaryLikeId: $diaryLikeId, liked: $liked, scraped: $scraped)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryFeedCopyWith<$Res>
    implements $LikedDiaryFeedCopyWith<$Res> {
  factory _$LikedDiaryFeedCopyWith(
          _LikedDiaryFeed value, $Res Function(_LikedDiaryFeed) _then) =
      __$LikedDiaryFeedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int diaryId,
      String content,
      DateTime createdDate,
      int memberId,
      String nickname,
      String profileImageUrl,
      int bookId,
      String bookTitle,
      String bookAuthor,
      int bookRating,
      List<DiaryImage> images,
      int likeCount,
      int commentCount,
      int viewCount,
      int diaryLikeId,
      bool liked,
      bool scraped});
}

/// @nodoc
class __$LikedDiaryFeedCopyWithImpl<$Res>
    implements _$LikedDiaryFeedCopyWith<$Res> {
  __$LikedDiaryFeedCopyWithImpl(this._self, this._then);

  final _LikedDiaryFeed _self;
  final $Res Function(_LikedDiaryFeed) _then;

  /// Create a copy of LikedDiaryFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? content = null,
    Object? createdDate = null,
    Object? memberId = null,
    Object? nickname = null,
    Object? profileImageUrl = null,
    Object? bookId = null,
    Object? bookTitle = null,
    Object? bookAuthor = null,
    Object? bookRating = null,
    Object? images = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? viewCount = null,
    Object? diaryLikeId = null,
    Object? liked = null,
    Object? scraped = null,
  }) {
    return _then(_LikedDiaryFeed(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _self.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      bookTitle: null == bookTitle
          ? _self.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      bookAuthor: null == bookAuthor
          ? _self.bookAuthor
          : bookAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      bookRating: null == bookRating
          ? _self.bookRating
          : bookRating // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DiaryImage>,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _self.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _self.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      diaryLikeId: null == diaryLikeId
          ? _self.diaryLikeId
          : diaryLikeId // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _self.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      scraped: null == scraped
          ? _self.scraped
          : scraped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
