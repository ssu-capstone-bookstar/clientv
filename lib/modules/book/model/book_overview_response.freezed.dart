// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  int get id;
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
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, title, author, cover,
      readingDiaryCount, isbn, publisher, star, publishedDate);

  @override
  String toString() {
    return 'BookOverviewResponse(id: $id, title: $title, author: $author, cover: $cover, readingDiaryCount: $readingDiaryCount, isbn: $isbn, publisher: $publisher, star: $star, publishedDate: $publishedDate)';
  }
}

/// @nodoc
abstract mixin class $BookOverviewResponseCopyWith<$Res> {
  factory $BookOverviewResponseCopyWith(BookOverviewResponse value,
          $Res Function(BookOverviewResponse) _then) =
      _$BookOverviewResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
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
    Object? id = null,
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
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [BookOverviewResponse].
extension BookOverviewResponsePatterns on BookOverviewResponse {
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
    TResult Function(_BookOverviewResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookOverviewResponse() when $default != null:
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
    TResult Function(_BookOverviewResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewResponse():
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
    TResult? Function(_BookOverviewResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewResponse() when $default != null:
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
            String title,
            String author,
            String cover,
            int readingDiaryCount,
            String isbn,
            String publisher,
            double star,
            String publishedDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookOverviewResponse() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.author,
            _that.cover,
            _that.readingDiaryCount,
            _that.isbn,
            _that.publisher,
            _that.star,
            _that.publishedDate);
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
            String title,
            String author,
            String cover,
            int readingDiaryCount,
            String isbn,
            String publisher,
            double star,
            String publishedDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewResponse():
        return $default(
            _that.id,
            _that.title,
            _that.author,
            _that.cover,
            _that.readingDiaryCount,
            _that.isbn,
            _that.publisher,
            _that.star,
            _that.publishedDate);
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
            String title,
            String author,
            String cover,
            int readingDiaryCount,
            String isbn,
            String publisher,
            double star,
            String publishedDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookOverviewResponse() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.author,
            _that.cover,
            _that.readingDiaryCount,
            _that.isbn,
            _that.publisher,
            _that.star,
            _that.publishedDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookOverviewResponse implements BookOverviewResponse {
  const _BookOverviewResponse(
      {this.id = -1,
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
  final int id;
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
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, title, author, cover,
      readingDiaryCount, isbn, publisher, star, publishedDate);

  @override
  String toString() {
    return 'BookOverviewResponse(id: $id, title: $title, author: $author, cover: $cover, readingDiaryCount: $readingDiaryCount, isbn: $isbn, publisher: $publisher, star: $star, publishedDate: $publishedDate)';
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
      {int id,
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
    Object? id = null,
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
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
