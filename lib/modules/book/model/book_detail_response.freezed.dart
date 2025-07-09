// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookDetailResponse {
  int get id; // ignore: invalid_annotation_target
  @JsonKey(name: 'aladingBookId')
  int get aladinBookId;
  String get title;
  String get author;
  String get isbn;
  String get isbn13;
  String get categoryName;
  String get description;
  String get publisher;
  DateTime get publishedDate;
  int get page;
  int? get toc;
  String get imageUrl;
  double get star;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookDetailResponseCopyWith<BookDetailResponse> get copyWith =>
      _$BookDetailResponseCopyWithImpl<BookDetailResponse>(
          this as BookDetailResponse, _$identity);

  /// Serializes this BookDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookDetailResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aladinBookId, aladinBookId) ||
                other.aladinBookId == aladinBookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.isbn13, isbn13) || other.isbn13 == isbn13) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.toc, toc) || other.toc == toc) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.star, star) || other.star == star));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      aladinBookId,
      title,
      author,
      isbn,
      isbn13,
      categoryName,
      description,
      publisher,
      publishedDate,
      page,
      toc,
      imageUrl,
      star);

  @override
  String toString() {
    return 'BookDetailResponse(id: $id, aladinBookId: $aladinBookId, title: $title, author: $author, isbn: $isbn, isbn13: $isbn13, categoryName: $categoryName, description: $description, publisher: $publisher, publishedDate: $publishedDate, page: $page, toc: $toc, imageUrl: $imageUrl, star: $star)';
  }
}

/// @nodoc
abstract mixin class $BookDetailResponseCopyWith<$Res> {
  factory $BookDetailResponseCopyWith(
          BookDetailResponse value, $Res Function(BookDetailResponse) _then) =
      _$BookDetailResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'aladingBookId') int aladinBookId,
      String title,
      String author,
      String isbn,
      String isbn13,
      String categoryName,
      String description,
      String publisher,
      DateTime publishedDate,
      int page,
      int? toc,
      String imageUrl,
      double star});
}

/// @nodoc
class _$BookDetailResponseCopyWithImpl<$Res>
    implements $BookDetailResponseCopyWith<$Res> {
  _$BookDetailResponseCopyWithImpl(this._self, this._then);

  final BookDetailResponse _self;
  final $Res Function(BookDetailResponse) _then;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? aladinBookId = null,
    Object? title = null,
    Object? author = null,
    Object? isbn = null,
    Object? isbn13 = null,
    Object? categoryName = null,
    Object? description = null,
    Object? publisher = null,
    Object? publishedDate = null,
    Object? page = null,
    Object? toc = freezed,
    Object? imageUrl = null,
    Object? star = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      aladinBookId: null == aladinBookId
          ? _self.aladinBookId
          : aladinBookId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _self.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      isbn13: null == isbn13
          ? _self.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _self.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      toc: freezed == toc
          ? _self.toc
          : toc // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      star: null == star
          ? _self.star
          : star // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookDetailResponse].
extension BookDetailResponsePatterns on BookDetailResponse {
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
    TResult Function(_BookDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
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
    TResult Function(_BookDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse():
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
    TResult? Function(_BookDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
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
            int id,
            @JsonKey(name: 'aladingBookId') int aladinBookId,
            String title,
            String author,
            String isbn,
            String isbn13,
            String categoryName,
            String description,
            String publisher,
            DateTime publishedDate,
            int page,
            int? toc,
            String imageUrl,
            double star)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
        return $default(
            _that.id,
            _that.aladinBookId,
            _that.title,
            _that.author,
            _that.isbn,
            _that.isbn13,
            _that.categoryName,
            _that.description,
            _that.publisher,
            _that.publishedDate,
            _that.page,
            _that.toc,
            _that.imageUrl,
            _that.star);
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
            int id,
            @JsonKey(name: 'aladingBookId') int aladinBookId,
            String title,
            String author,
            String isbn,
            String isbn13,
            String categoryName,
            String description,
            String publisher,
            DateTime publishedDate,
            int page,
            int? toc,
            String imageUrl,
            double star)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse():
        return $default(
            _that.id,
            _that.aladinBookId,
            _that.title,
            _that.author,
            _that.isbn,
            _that.isbn13,
            _that.categoryName,
            _that.description,
            _that.publisher,
            _that.publishedDate,
            _that.page,
            _that.toc,
            _that.imageUrl,
            _that.star);
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
            int id,
            @JsonKey(name: 'aladingBookId') int aladinBookId,
            String title,
            String author,
            String isbn,
            String isbn13,
            String categoryName,
            String description,
            String publisher,
            DateTime publishedDate,
            int page,
            int? toc,
            String imageUrl,
            double star)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
        return $default(
            _that.id,
            _that.aladinBookId,
            _that.title,
            _that.author,
            _that.isbn,
            _that.isbn13,
            _that.categoryName,
            _that.description,
            _that.publisher,
            _that.publishedDate,
            _that.page,
            _that.toc,
            _that.imageUrl,
            _that.star);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookDetailResponse implements BookDetailResponse {
  const _BookDetailResponse(
      {required this.id,
      @JsonKey(name: 'aladingBookId') required this.aladinBookId,
      required this.title,
      required this.author,
      required this.isbn,
      required this.isbn13,
      required this.categoryName,
      required this.description,
      required this.publisher,
      required this.publishedDate,
      required this.page,
      this.toc,
      required this.imageUrl,
      required this.star});
  factory _BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);

  @override
  final int id;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'aladingBookId')
  final int aladinBookId;
  @override
  final String title;
  @override
  final String author;
  @override
  final String isbn;
  @override
  final String isbn13;
  @override
  final String categoryName;
  @override
  final String description;
  @override
  final String publisher;
  @override
  final DateTime publishedDate;
  @override
  final int page;
  @override
  final int? toc;
  @override
  final String imageUrl;
  @override
  final double star;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookDetailResponseCopyWith<_BookDetailResponse> get copyWith =>
      __$BookDetailResponseCopyWithImpl<_BookDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookDetailResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aladinBookId, aladinBookId) ||
                other.aladinBookId == aladinBookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.isbn13, isbn13) || other.isbn13 == isbn13) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.toc, toc) || other.toc == toc) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.star, star) || other.star == star));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      aladinBookId,
      title,
      author,
      isbn,
      isbn13,
      categoryName,
      description,
      publisher,
      publishedDate,
      page,
      toc,
      imageUrl,
      star);

  @override
  String toString() {
    return 'BookDetailResponse(id: $id, aladinBookId: $aladinBookId, title: $title, author: $author, isbn: $isbn, isbn13: $isbn13, categoryName: $categoryName, description: $description, publisher: $publisher, publishedDate: $publishedDate, page: $page, toc: $toc, imageUrl: $imageUrl, star: $star)';
  }
}

/// @nodoc
abstract mixin class _$BookDetailResponseCopyWith<$Res>
    implements $BookDetailResponseCopyWith<$Res> {
  factory _$BookDetailResponseCopyWith(
          _BookDetailResponse value, $Res Function(_BookDetailResponse) _then) =
      __$BookDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'aladingBookId') int aladinBookId,
      String title,
      String author,
      String isbn,
      String isbn13,
      String categoryName,
      String description,
      String publisher,
      DateTime publishedDate,
      int page,
      int? toc,
      String imageUrl,
      double star});
}

/// @nodoc
class __$BookDetailResponseCopyWithImpl<$Res>
    implements _$BookDetailResponseCopyWith<$Res> {
  __$BookDetailResponseCopyWithImpl(this._self, this._then);

  final _BookDetailResponse _self;
  final $Res Function(_BookDetailResponse) _then;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? aladinBookId = null,
    Object? title = null,
    Object? author = null,
    Object? isbn = null,
    Object? isbn13 = null,
    Object? categoryName = null,
    Object? description = null,
    Object? publisher = null,
    Object? publishedDate = null,
    Object? page = null,
    Object? toc = freezed,
    Object? imageUrl = null,
    Object? star = null,
  }) {
    return _then(_BookDetailResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      aladinBookId: null == aladinBookId
          ? _self.aladinBookId
          : aladinBookId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _self.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      isbn13: null == isbn13
          ? _self.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _self.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      toc: freezed == toc
          ? _self.toc
          : toc // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      star: null == star
          ? _self.star
          : star // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
