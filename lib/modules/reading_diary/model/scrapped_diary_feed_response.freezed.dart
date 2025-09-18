// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrapped_diary_feed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScrappedDiaryFeedResponse {
  int get diaryId;
  String get content;
  String get createdDate;
  int get memberId;
  String get nickname;
  String get profileImageUrl;
  int get bookId;
  String get bookTitle;
  String get bookAuthor;
  int get bookRating;
  List<DiaryImageResponse> get images;
  int get likeCount;
  int get commentCount;
  int get viewCount;
  int get scrapId;
  bool get liked;
  bool get scraped;

  /// Create a copy of ScrappedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScrappedDiaryFeedResponseCopyWith<ScrappedDiaryFeedResponse> get copyWith =>
      _$ScrappedDiaryFeedResponseCopyWithImpl<ScrappedDiaryFeedResponse>(
          this as ScrappedDiaryFeedResponse, _$identity);

  /// Serializes this ScrappedDiaryFeedResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScrappedDiaryFeedResponse &&
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
            (identical(other.scrapId, scrapId) || other.scrapId == scrapId) &&
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
      scrapId,
      liked,
      scraped);

  @override
  String toString() {
    return 'ScrappedDiaryFeedResponse(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, scrapId: $scrapId, liked: $liked, scraped: $scraped)';
  }
}

/// @nodoc
abstract mixin class $ScrappedDiaryFeedResponseCopyWith<$Res> {
  factory $ScrappedDiaryFeedResponseCopyWith(ScrappedDiaryFeedResponse value,
          $Res Function(ScrappedDiaryFeedResponse) _then) =
      _$ScrappedDiaryFeedResponseCopyWithImpl;
  @useResult
  $Res call(
      {int diaryId,
      String content,
      String createdDate,
      int memberId,
      String nickname,
      String profileImageUrl,
      int bookId,
      String bookTitle,
      String bookAuthor,
      int bookRating,
      List<DiaryImageResponse> images,
      int likeCount,
      int commentCount,
      int viewCount,
      int scrapId,
      bool liked,
      bool scraped});
}

/// @nodoc
class _$ScrappedDiaryFeedResponseCopyWithImpl<$Res>
    implements $ScrappedDiaryFeedResponseCopyWith<$Res> {
  _$ScrappedDiaryFeedResponseCopyWithImpl(this._self, this._then);

  final ScrappedDiaryFeedResponse _self;
  final $Res Function(ScrappedDiaryFeedResponse) _then;

  /// Create a copy of ScrappedDiaryFeedResponse
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
    Object? scrapId = null,
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
              as String,
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
              as List<DiaryImageResponse>,
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
      scrapId: null == scrapId
          ? _self.scrapId
          : scrapId // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [ScrappedDiaryFeedResponse].
extension ScrappedDiaryFeedResponsePatterns on ScrappedDiaryFeedResponse {
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
    TResult Function(_ScrappedDiaryFeedResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFeedResponse() when $default != null:
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
    TResult Function(_ScrappedDiaryFeedResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFeedResponse():
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
    TResult? Function(_ScrappedDiaryFeedResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFeedResponse() when $default != null:
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
            String createdDate,
            int memberId,
            String nickname,
            String profileImageUrl,
            int bookId,
            String bookTitle,
            String bookAuthor,
            int bookRating,
            List<DiaryImageResponse> images,
            int likeCount,
            int commentCount,
            int viewCount,
            int scrapId,
            bool liked,
            bool scraped)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFeedResponse() when $default != null:
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
            _that.scrapId,
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
            String createdDate,
            int memberId,
            String nickname,
            String profileImageUrl,
            int bookId,
            String bookTitle,
            String bookAuthor,
            int bookRating,
            List<DiaryImageResponse> images,
            int likeCount,
            int commentCount,
            int viewCount,
            int scrapId,
            bool liked,
            bool scraped)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFeedResponse():
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
            _that.scrapId,
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
            String createdDate,
            int memberId,
            String nickname,
            String profileImageUrl,
            int bookId,
            String bookTitle,
            String bookAuthor,
            int bookRating,
            List<DiaryImageResponse> images,
            int likeCount,
            int commentCount,
            int viewCount,
            int scrapId,
            bool liked,
            bool scraped)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFeedResponse() when $default != null:
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
            _that.scrapId,
            _that.liked,
            _that.scraped);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ScrappedDiaryFeedResponse implements ScrappedDiaryFeedResponse {
  const _ScrappedDiaryFeedResponse(
      {this.diaryId = 0,
      this.content = '',
      this.createdDate = '',
      this.memberId = 0,
      this.nickname = '',
      this.profileImageUrl = '',
      this.bookId = 0,
      this.bookTitle = '',
      this.bookAuthor = '',
      this.bookRating = 0,
      final List<DiaryImageResponse> images = const [],
      this.likeCount = 0,
      this.commentCount = 0,
      this.viewCount = 0,
      this.scrapId = 0,
      this.liked = false,
      this.scraped = false})
      : _images = images;
  factory _ScrappedDiaryFeedResponse.fromJson(Map<String, dynamic> json) =>
      _$ScrappedDiaryFeedResponseFromJson(json);

  @override
  @JsonKey()
  final int diaryId;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String createdDate;
  @override
  @JsonKey()
  final int memberId;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String profileImageUrl;
  @override
  @JsonKey()
  final int bookId;
  @override
  @JsonKey()
  final String bookTitle;
  @override
  @JsonKey()
  final String bookAuthor;
  @override
  @JsonKey()
  final int bookRating;
  final List<DiaryImageResponse> _images;
  @override
  @JsonKey()
  List<DiaryImageResponse> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final int commentCount;
  @override
  @JsonKey()
  final int viewCount;
  @override
  @JsonKey()
  final int scrapId;
  @override
  @JsonKey()
  final bool liked;
  @override
  @JsonKey()
  final bool scraped;

  /// Create a copy of ScrappedDiaryFeedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScrappedDiaryFeedResponseCopyWith<_ScrappedDiaryFeedResponse>
      get copyWith =>
          __$ScrappedDiaryFeedResponseCopyWithImpl<_ScrappedDiaryFeedResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScrappedDiaryFeedResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScrappedDiaryFeedResponse &&
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
            (identical(other.scrapId, scrapId) || other.scrapId == scrapId) &&
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
      scrapId,
      liked,
      scraped);

  @override
  String toString() {
    return 'ScrappedDiaryFeedResponse(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, scrapId: $scrapId, liked: $liked, scraped: $scraped)';
  }
}

/// @nodoc
abstract mixin class _$ScrappedDiaryFeedResponseCopyWith<$Res>
    implements $ScrappedDiaryFeedResponseCopyWith<$Res> {
  factory _$ScrappedDiaryFeedResponseCopyWith(_ScrappedDiaryFeedResponse value,
          $Res Function(_ScrappedDiaryFeedResponse) _then) =
      __$ScrappedDiaryFeedResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int diaryId,
      String content,
      String createdDate,
      int memberId,
      String nickname,
      String profileImageUrl,
      int bookId,
      String bookTitle,
      String bookAuthor,
      int bookRating,
      List<DiaryImageResponse> images,
      int likeCount,
      int commentCount,
      int viewCount,
      int scrapId,
      bool liked,
      bool scraped});
}

/// @nodoc
class __$ScrappedDiaryFeedResponseCopyWithImpl<$Res>
    implements _$ScrappedDiaryFeedResponseCopyWith<$Res> {
  __$ScrappedDiaryFeedResponseCopyWithImpl(this._self, this._then);

  final _ScrappedDiaryFeedResponse _self;
  final $Res Function(_ScrappedDiaryFeedResponse) _then;

  /// Create a copy of ScrappedDiaryFeedResponse
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
    Object? scrapId = null,
    Object? liked = null,
    Object? scraped = null,
  }) {
    return _then(_ScrappedDiaryFeedResponse(
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
              as String,
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
              as List<DiaryImageResponse>,
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
      scrapId: null == scrapId
          ? _self.scrapId
          : scrapId // ignore: cast_nullable_to_non_nullable
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
