// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryResponse {
  int get diaryId;
  String get content;
  String get createdDate;
  int get memberId;
  String get nickname;
  String get profileImageUrl;
  int get bookId;
  String get bookTitle;
  String get bookAuthor;
  double get bookRating;
  List<DiaryImageResponse> get images;
  int get likeCount;
  int get commentCount;
  int get viewCount;
  bool get liked;
  bool get scraped;
  bool get private;

  /// Create a copy of DiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryResponseCopyWith<DiaryResponse> get copyWith =>
      _$DiaryResponseCopyWithImpl<DiaryResponse>(
          this as DiaryResponse, _$identity);

  /// Serializes this DiaryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryResponse &&
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
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.scraped, scraped) || other.scraped == scraped) &&
            (identical(other.private, private) || other.private == private));
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
      liked,
      scraped,
      private);

  @override
  String toString() {
    return 'DiaryResponse(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, liked: $liked, scraped: $scraped, private: $private)';
  }
}

/// @nodoc
abstract mixin class $DiaryResponseCopyWith<$Res> {
  factory $DiaryResponseCopyWith(
          DiaryResponse value, $Res Function(DiaryResponse) _then) =
      _$DiaryResponseCopyWithImpl;
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
      double bookRating,
      List<DiaryImageResponse> images,
      int likeCount,
      int commentCount,
      int viewCount,
      bool liked,
      bool scraped,
      bool private});
}

/// @nodoc
class _$DiaryResponseCopyWithImpl<$Res>
    implements $DiaryResponseCopyWith<$Res> {
  _$DiaryResponseCopyWithImpl(this._self, this._then);

  final DiaryResponse _self;
  final $Res Function(DiaryResponse) _then;

  /// Create a copy of DiaryResponse
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
    Object? scraped = null,
    Object? private = null,
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
              as double,
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
      liked: null == liked
          ? _self.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      scraped: null == scraped
          ? _self.scraped
          : scraped // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _self.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiaryResponse].
extension DiaryResponsePatterns on DiaryResponse {
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
    TResult Function(_DiaryResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryResponse() when $default != null:
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
    TResult Function(_DiaryResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryResponse():
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
    TResult? Function(_DiaryResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryResponse() when $default != null:
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
            double bookRating,
            List<DiaryImageResponse> images,
            int likeCount,
            int commentCount,
            int viewCount,
            bool liked,
            bool scraped,
            bool private)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryResponse() when $default != null:
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
            _that.liked,
            _that.scraped,
            _that.private);
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
            double bookRating,
            List<DiaryImageResponse> images,
            int likeCount,
            int commentCount,
            int viewCount,
            bool liked,
            bool scraped,
            bool private)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryResponse():
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
            _that.liked,
            _that.scraped,
            _that.private);
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
            double bookRating,
            List<DiaryImageResponse> images,
            int likeCount,
            int commentCount,
            int viewCount,
            bool liked,
            bool scraped,
            bool private)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryResponse() when $default != null:
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
            _that.liked,
            _that.scraped,
            _that.private);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryResponse implements DiaryResponse {
  const _DiaryResponse(
      {this.diaryId = -1,
      this.content = '',
      this.createdDate = '',
      this.memberId = -1,
      this.nickname = '',
      this.profileImageUrl = '',
      this.bookId = -1,
      this.bookTitle = '',
      this.bookAuthor = '',
      this.bookRating = -1,
      final List<DiaryImageResponse> images = const [],
      this.likeCount = 0,
      this.commentCount = 0,
      this.viewCount = 0,
      this.liked = false,
      this.scraped = false,
      this.private = false})
      : _images = images;
  factory _DiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryResponseFromJson(json);

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
  final double bookRating;
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
  final bool liked;
  @override
  @JsonKey()
  final bool scraped;
  @override
  @JsonKey()
  final bool private;

  /// Create a copy of DiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryResponseCopyWith<_DiaryResponse> get copyWith =>
      __$DiaryResponseCopyWithImpl<_DiaryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryResponse &&
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
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.scraped, scraped) || other.scraped == scraped) &&
            (identical(other.private, private) || other.private == private));
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
      liked,
      scraped,
      private);

  @override
  String toString() {
    return 'DiaryResponse(diaryId: $diaryId, content: $content, createdDate: $createdDate, memberId: $memberId, nickname: $nickname, profileImageUrl: $profileImageUrl, bookId: $bookId, bookTitle: $bookTitle, bookAuthor: $bookAuthor, bookRating: $bookRating, images: $images, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, liked: $liked, scraped: $scraped, private: $private)';
  }
}

/// @nodoc
abstract mixin class _$DiaryResponseCopyWith<$Res>
    implements $DiaryResponseCopyWith<$Res> {
  factory _$DiaryResponseCopyWith(
          _DiaryResponse value, $Res Function(_DiaryResponse) _then) =
      __$DiaryResponseCopyWithImpl;
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
      double bookRating,
      List<DiaryImageResponse> images,
      int likeCount,
      int commentCount,
      int viewCount,
      bool liked,
      bool scraped,
      bool private});
}

/// @nodoc
class __$DiaryResponseCopyWithImpl<$Res>
    implements _$DiaryResponseCopyWith<$Res> {
  __$DiaryResponseCopyWithImpl(this._self, this._then);

  final _DiaryResponse _self;
  final $Res Function(_DiaryResponse) _then;

  /// Create a copy of DiaryResponse
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
    Object? scraped = null,
    Object? private = null,
  }) {
    return _then(_DiaryResponse(
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
              as double,
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
      liked: null == liked
          ? _self.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      scraped: null == scraped
          ? _self.scraped
          : scraped // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _self.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
