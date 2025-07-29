// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_feed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryFeedResponse {
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
  bool get liked;

  /// Create a copy of DiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryFeedResponseCopyWith<DiaryFeedResponse> get copyWith =>
      _$DiaryFeedResponseCopyWithImpl<DiaryFeedResponse>(
          this as DiaryFeedResponse, _$identity);

  /// Serializes this DiaryFeedResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryFeedResponse &&
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
            (identical(other.liked, liked) || other.liked == liked));
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
      liked);

  @override
  String toString() {
    return 'DiaryFeedResponse(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, liked: $liked)';
  }
}

/// @nodoc
abstract mixin class $DiaryFeedResponseCopyWith<$Res> {
  factory $DiaryFeedResponseCopyWith(
          DiaryFeedResponse value, $Res Function(DiaryFeedResponse) _then) =
      _$DiaryFeedResponseCopyWithImpl;
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
      bool liked});
}

/// @nodoc
class _$DiaryFeedResponseCopyWithImpl<$Res>
    implements $DiaryFeedResponseCopyWith<$Res> {
  _$DiaryFeedResponseCopyWithImpl(this._self, this._then);

  final DiaryFeedResponse _self;
  final $Res Function(DiaryFeedResponse) _then;

  /// Create a copy of DiaryFeedResponse
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
    Object? liked = null,
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
      liked: null == liked
          ? _self.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiaryFeedResponse].
extension DiaryFeedResponsePatterns on DiaryFeedResponse {
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
    TResult Function(_DiaryFeedResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryFeedResponse() when $default != null:
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
    TResult Function(_DiaryFeedResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryFeedResponse():
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
    TResult? Function(_DiaryFeedResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryFeedResponse() when $default != null:
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
            bool liked)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryFeedResponse() when $default != null:
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
            _that.liked);
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
            bool liked)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryFeedResponse():
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
            _that.liked);
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
            bool liked)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryFeedResponse() when $default != null:
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
            _that.liked);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryFeedResponse implements DiaryFeedResponse {
  const _DiaryFeedResponse(
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
      required this.liked})
      : _images = images;
  factory _DiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryFeedResponseFromJson(json);

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
  final bool liked;

  /// Create a copy of DiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryFeedResponseCopyWith<_DiaryFeedResponse> get copyWith =>
      __$DiaryFeedResponseCopyWithImpl<_DiaryFeedResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryFeedResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryFeedResponse &&
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
            (identical(other.liked, liked) || other.liked == liked));
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
      liked);

  @override
  String toString() {
    return 'DiaryFeedResponse(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, liked: $liked)';
  }
}

/// @nodoc
abstract mixin class _$DiaryFeedResponseCopyWith<$Res>
    implements $DiaryFeedResponseCopyWith<$Res> {
  factory _$DiaryFeedResponseCopyWith(
          _DiaryFeedResponse value, $Res Function(_DiaryFeedResponse) _then) =
      __$DiaryFeedResponseCopyWithImpl;
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
      bool liked});
}

/// @nodoc
class __$DiaryFeedResponseCopyWithImpl<$Res>
    implements _$DiaryFeedResponseCopyWith<$Res> {
  __$DiaryFeedResponseCopyWithImpl(this._self, this._then);

  final _DiaryFeedResponse _self;
  final $Res Function(_DiaryFeedResponse) _then;

  /// Create a copy of DiaryFeedResponse
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
    Object? liked = null,
  }) {
    return _then(_DiaryFeedResponse(
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
      liked: null == liked
          ? _self.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$DiaryImage {
  int get diaryId;
  int get imageId;
  String get imageUrl;
  int get sequence;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryImageCopyWith<DiaryImage> get copyWith =>
      _$DiaryImageCopyWithImpl<DiaryImage>(this as DiaryImage, _$identity);

  /// Serializes this DiaryImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryImage &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diaryId, imageId, imageUrl, sequence);

  @override
  String toString() {
    return 'DiaryImage(diaryId: $diaryId, imageId: $imageId, imageUrl: $imageUrl, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class $DiaryImageCopyWith<$Res> {
  factory $DiaryImageCopyWith(
          DiaryImage value, $Res Function(DiaryImage) _then) =
      _$DiaryImageCopyWithImpl;
  @useResult
  $Res call({int diaryId, int imageId, String imageUrl, int sequence});
}

/// @nodoc
class _$DiaryImageCopyWithImpl<$Res> implements $DiaryImageCopyWith<$Res> {
  _$DiaryImageCopyWithImpl(this._self, this._then);

  final DiaryImage _self;
  final $Res Function(DiaryImage) _then;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? imageId = null,
    Object? imageUrl = null,
    Object? sequence = null,
  }) {
    return _then(_self.copyWith(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      imageId: null == imageId
          ? _self.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiaryImage].
extension DiaryImagePatterns on DiaryImage {
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
    TResult Function(_DiaryImage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryImage() when $default != null:
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
    TResult Function(_DiaryImage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImage():
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
    TResult? Function(_DiaryImage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImage() when $default != null:
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
    TResult Function(int diaryId, int imageId, String imageUrl, int sequence)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryImage() when $default != null:
        return $default(
            _that.diaryId, _that.imageId, _that.imageUrl, _that.sequence);
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
    TResult Function(int diaryId, int imageId, String imageUrl, int sequence)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImage():
        return $default(
            _that.diaryId, _that.imageId, _that.imageUrl, _that.sequence);
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
    TResult? Function(int diaryId, int imageId, String imageUrl, int sequence)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImage() when $default != null:
        return $default(
            _that.diaryId, _that.imageId, _that.imageUrl, _that.sequence);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryImage implements DiaryImage {
  const _DiaryImage(
      {required this.diaryId,
      required this.imageId,
      required this.imageUrl,
      required this.sequence});
  factory _DiaryImage.fromJson(Map<String, dynamic> json) =>
      _$DiaryImageFromJson(json);

  @override
  final int diaryId;
  @override
  final int imageId;
  @override
  final String imageUrl;
  @override
  final int sequence;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryImageCopyWith<_DiaryImage> get copyWith =>
      __$DiaryImageCopyWithImpl<_DiaryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryImage &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diaryId, imageId, imageUrl, sequence);

  @override
  String toString() {
    return 'DiaryImage(diaryId: $diaryId, imageId: $imageId, imageUrl: $imageUrl, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class _$DiaryImageCopyWith<$Res>
    implements $DiaryImageCopyWith<$Res> {
  factory _$DiaryImageCopyWith(
          _DiaryImage value, $Res Function(_DiaryImage) _then) =
      __$DiaryImageCopyWithImpl;
  @override
  @useResult
  $Res call({int diaryId, int imageId, String imageUrl, int sequence});
}

/// @nodoc
class __$DiaryImageCopyWithImpl<$Res> implements _$DiaryImageCopyWith<$Res> {
  __$DiaryImageCopyWithImpl(this._self, this._then);

  final _DiaryImage _self;
  final $Res Function(_DiaryImage) _then;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? imageId = null,
    Object? imageUrl = null,
    Object? sequence = null,
  }) {
    return _then(_DiaryImage(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      imageId: null == imageId
          ? _self.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
