// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_overview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookOverviewResponse {
  int get bookId;
  String get title;
  String get author;
  String get cover;
  int get readingDiaryCount;
  String get isbn;
  String get publisher;
  double get star;
  String get publishedDate;

  /// Create a copy of BookOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookOverviewResponseCopyWith<BookOverviewResponse> get copyWith =>
      _$BookOverviewResponseCopyWithImpl<BookOverviewResponse>(
          this as BookOverviewResponse, _$identity);

  /// Serializes this BookOverviewResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookOverviewResponse &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.readingDiaryCount, readingDiaryCount) ||
                other.readingDiaryCount == readingDiaryCount) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, title, author, cover,
      readingDiaryCount, isbn, publisher, star, publishedDate);

  @override
  String toString() {
    return 'BookOverviewResponse(bookId: $bookId, title: $title, author: $author, cover: $cover, readingDiaryCount: $readingDiaryCount, isbn: $isbn, publisher: $publisher, star: $star, publishedDate: $publishedDate)';
  }
}

/// @nodoc
abstract mixin class $BookOverviewResponseCopyWith<$Res> {
  factory $BookOverviewResponseCopyWith(BookOverviewResponse value,
          $Res Function(BookOverviewResponse) _then) =
      _$BookOverviewResponseCopyWithImpl;
  @useResult
  $Res call(
      {int bookId,
      String title,
      String author,
      String cover,
      int readingDiaryCount,
      String isbn,
      String publisher,
      double star,
      String publishedDate});
}

/// @nodoc
class _$BookOverviewResponseCopyWithImpl<$Res>
    implements $BookOverviewResponseCopyWith<$Res> {
  _$BookOverviewResponseCopyWithImpl(this._self, this._then);

  final BookOverviewResponse _self;
  final $Res Function(BookOverviewResponse) _then;

  /// Create a copy of BookOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? cover = null,
    Object? readingDiaryCount = null,
    Object? isbn = null,
    Object? publisher = null,
    Object? star = null,
    Object? publishedDate = null,
  }) {
    return _then(_self.copyWith(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      readingDiaryCount: null == readingDiaryCount
          ? _self.readingDiaryCount
          : readingDiaryCount // ignore: cast_nullable_to_non_nullable
              as int,
      isbn: null == isbn
          ? _self.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      star: null == star
          ? _self.star
          : star // ignore: cast_nullable_to_non_nullable
              as double,
      publishedDate: null == publishedDate
          ? _self.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BookOverviewResponse implements BookOverviewResponse {
  const _BookOverviewResponse(
      {this.bookId = 0,
      required this.title,
      required this.author,
      required this.cover,
      required this.readingDiaryCount,
      required this.isbn,
      required this.publisher,
      required this.star,
      required this.publishedDate});
  factory _BookOverviewResponse.fromJson(Map<String, dynamic> json) =>
      _$BookOverviewResponseFromJson(json);

  @override
  @JsonKey()
  final int bookId;
  @override
  final String title;
  @override
  final String author;
  @override
  final String cover;
  @override
  final int readingDiaryCount;
  @override
  final String isbn;
  @override
  final String publisher;
  @override
  final double star;
  @override
  final String publishedDate;

  /// Create a copy of BookOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookOverviewResponseCopyWith<_BookOverviewResponse> get copyWith =>
      __$BookOverviewResponseCopyWithImpl<_BookOverviewResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookOverviewResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookOverviewResponse &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.readingDiaryCount, readingDiaryCount) ||
                other.readingDiaryCount == readingDiaryCount) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, title, author, cover,
      readingDiaryCount, isbn, publisher, star, publishedDate);

  @override
  String toString() {
    return 'BookOverviewResponse(bookId: $bookId, title: $title, author: $author, cover: $cover, readingDiaryCount: $readingDiaryCount, isbn: $isbn, publisher: $publisher, star: $star, publishedDate: $publishedDate)';
  }
}

/// @nodoc
abstract mixin class _$BookOverviewResponseCopyWith<$Res>
    implements $BookOverviewResponseCopyWith<$Res> {
  factory _$BookOverviewResponseCopyWith(_BookOverviewResponse value,
          $Res Function(_BookOverviewResponse) _then) =
      __$BookOverviewResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int bookId,
      String title,
      String author,
      String cover,
      int readingDiaryCount,
      String isbn,
      String publisher,
      double star,
      String publishedDate});
}

/// @nodoc
class __$BookOverviewResponseCopyWithImpl<$Res>
    implements _$BookOverviewResponseCopyWith<$Res> {
  __$BookOverviewResponseCopyWithImpl(this._self, this._then);

  final _BookOverviewResponse _self;
  final $Res Function(_BookOverviewResponse) _then;

  /// Create a copy of BookOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? cover = null,
    Object? readingDiaryCount = null,
    Object? isbn = null,
    Object? publisher = null,
    Object? star = null,
    Object? publishedDate = null,
  }) {
    return _then(_BookOverviewResponse(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      readingDiaryCount: null == readingDiaryCount
          ? _self.readingDiaryCount
          : readingDiaryCount // ignore: cast_nullable_to_non_nullable
              as int,
      isbn: null == isbn
          ? _self.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      star: null == star
          ? _self.star
          : star // ignore: cast_nullable_to_non_nullable
              as double,
      publishedDate: null == publishedDate
          ? _self.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
