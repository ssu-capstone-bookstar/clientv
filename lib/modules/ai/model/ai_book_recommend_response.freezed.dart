// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_book_recommend_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiBookRecommendResponse {
  int get id;
  int get aladinBookId;
  String get title;
  String get author;
  String get isbn;
  String get isbn13;
  String get categoryName;
  String get description;
  String get publisher;
  String get publishedDate;
  String get imageUrl;
  bool get isLiked;
  DateTime? get createdDate;
  DateTime? get updatedDate;

  /// Create a copy of AiBookRecommendResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiBookRecommendResponseCopyWith<AiBookRecommendResponse> get copyWith =>
      _$AiBookRecommendResponseCopyWithImpl<AiBookRecommendResponse>(
          this as AiBookRecommendResponse, _$identity);

  /// Serializes this AiBookRecommendResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiBookRecommendResponse &&
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
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate));
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
      imageUrl,
      isLiked,
      createdDate,
      updatedDate);

  @override
  String toString() {
    return 'AiBookRecommendResponse(id: $id, aladinBookId: $aladinBookId, title: $title, author: $author, isbn: $isbn, isbn13: $isbn13, categoryName: $categoryName, description: $description, publisher: $publisher, publishedDate: $publishedDate, imageUrl: $imageUrl, isLiked: $isLiked, createdDate: $createdDate, updatedDate: $updatedDate)';
  }
}

/// @nodoc
abstract mixin class $AiBookRecommendResponseCopyWith<$Res> {
  factory $AiBookRecommendResponseCopyWith(AiBookRecommendResponse value,
          $Res Function(AiBookRecommendResponse) _then) =
      _$AiBookRecommendResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int aladinBookId,
      String title,
      String author,
      String isbn,
      String isbn13,
      String categoryName,
      String description,
      String publisher,
      String publishedDate,
      String imageUrl,
      bool isLiked,
      DateTime? createdDate,
      DateTime? updatedDate});
}

/// @nodoc
class _$AiBookRecommendResponseCopyWithImpl<$Res>
    implements $AiBookRecommendResponseCopyWith<$Res> {
  _$AiBookRecommendResponseCopyWithImpl(this._self, this._then);

  final AiBookRecommendResponse _self;
  final $Res Function(AiBookRecommendResponse) _then;

  /// Create a copy of AiBookRecommendResponse
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
    Object? imageUrl = null,
    Object? isLiked = null,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
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
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _self.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AiBookRecommendResponse].
extension AiBookRecommendResponsePatterns on AiBookRecommendResponse {
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
    TResult Function(_AiBookRecommendResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiBookRecommendResponse() when $default != null:
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
    TResult Function(_AiBookRecommendResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiBookRecommendResponse():
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
    TResult? Function(_AiBookRecommendResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiBookRecommendResponse() when $default != null:
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
            int aladinBookId,
            String title,
            String author,
            String isbn,
            String isbn13,
            String categoryName,
            String description,
            String publisher,
            String publishedDate,
            String imageUrl,
            bool isLiked,
            DateTime? createdDate,
            DateTime? updatedDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiBookRecommendResponse() when $default != null:
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
            _that.imageUrl,
            _that.isLiked,
            _that.createdDate,
            _that.updatedDate);
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
            int aladinBookId,
            String title,
            String author,
            String isbn,
            String isbn13,
            String categoryName,
            String description,
            String publisher,
            String publishedDate,
            String imageUrl,
            bool isLiked,
            DateTime? createdDate,
            DateTime? updatedDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiBookRecommendResponse():
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
            _that.imageUrl,
            _that.isLiked,
            _that.createdDate,
            _that.updatedDate);
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
            int aladinBookId,
            String title,
            String author,
            String isbn,
            String isbn13,
            String categoryName,
            String description,
            String publisher,
            String publishedDate,
            String imageUrl,
            bool isLiked,
            DateTime? createdDate,
            DateTime? updatedDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiBookRecommendResponse() when $default != null:
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
            _that.imageUrl,
            _that.isLiked,
            _that.createdDate,
            _that.updatedDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AiBookRecommendResponse implements AiBookRecommendResponse {
  const _AiBookRecommendResponse(
      {this.id = 0,
      this.aladinBookId = 0,
      this.title = '',
      this.author = '',
      this.isbn = '',
      this.isbn13 = '',
      this.categoryName = '',
      this.description = '',
      this.publisher = '',
      this.publishedDate = '',
      this.imageUrl = '',
      this.isLiked = false,
      this.createdDate,
      this.updatedDate});
  factory _AiBookRecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$AiBookRecommendResponseFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int aladinBookId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String isbn;
  @override
  @JsonKey()
  final String isbn13;
  @override
  @JsonKey()
  final String categoryName;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String publisher;
  @override
  @JsonKey()
  final String publishedDate;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? updatedDate;

  /// Create a copy of AiBookRecommendResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AiBookRecommendResponseCopyWith<_AiBookRecommendResponse> get copyWith =>
      __$AiBookRecommendResponseCopyWithImpl<_AiBookRecommendResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiBookRecommendResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AiBookRecommendResponse &&
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
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate));
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
      imageUrl,
      isLiked,
      createdDate,
      updatedDate);

  @override
  String toString() {
    return 'AiBookRecommendResponse(id: $id, aladinBookId: $aladinBookId, title: $title, author: $author, isbn: $isbn, isbn13: $isbn13, categoryName: $categoryName, description: $description, publisher: $publisher, publishedDate: $publishedDate, imageUrl: $imageUrl, isLiked: $isLiked, createdDate: $createdDate, updatedDate: $updatedDate)';
  }
}

/// @nodoc
abstract mixin class _$AiBookRecommendResponseCopyWith<$Res>
    implements $AiBookRecommendResponseCopyWith<$Res> {
  factory _$AiBookRecommendResponseCopyWith(_AiBookRecommendResponse value,
          $Res Function(_AiBookRecommendResponse) _then) =
      __$AiBookRecommendResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int aladinBookId,
      String title,
      String author,
      String isbn,
      String isbn13,
      String categoryName,
      String description,
      String publisher,
      String publishedDate,
      String imageUrl,
      bool isLiked,
      DateTime? createdDate,
      DateTime? updatedDate});
}

/// @nodoc
class __$AiBookRecommendResponseCopyWithImpl<$Res>
    implements _$AiBookRecommendResponseCopyWith<$Res> {
  __$AiBookRecommendResponseCopyWithImpl(this._self, this._then);

  final _AiBookRecommendResponse _self;
  final $Res Function(_AiBookRecommendResponse) _then;

  /// Create a copy of AiBookRecommendResponse
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
    Object? imageUrl = null,
    Object? isLiked = null,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
  }) {
    return _then(_AiBookRecommendResponse(
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
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _self.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
