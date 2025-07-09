// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bestseller_book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BestsellerBookResponse {
  int get id;
  String get title;
  String get author;
  String get bookCover;
  String get pubDate;

  /// Create a copy of BestsellerBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BestsellerBookResponseCopyWith<BestsellerBookResponse> get copyWith =>
      _$BestsellerBookResponseCopyWithImpl<BestsellerBookResponse>(
          this as BestsellerBookResponse, _$identity);

  /// Serializes this BestsellerBookResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BestsellerBookResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookCover, bookCover) ||
                other.bookCover == bookCover) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, author, bookCover, pubDate);

  @override
  String toString() {
    return 'BestsellerBookResponse(id: $id, title: $title, author: $author, bookCover: $bookCover, pubDate: $pubDate)';
  }
}

/// @nodoc
abstract mixin class $BestsellerBookResponseCopyWith<$Res> {
  factory $BestsellerBookResponseCopyWith(BestsellerBookResponse value,
          $Res Function(BestsellerBookResponse) _then) =
      _$BestsellerBookResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id, String title, String author, String bookCover, String pubDate});
}

/// @nodoc
class _$BestsellerBookResponseCopyWithImpl<$Res>
    implements $BestsellerBookResponseCopyWith<$Res> {
  _$BestsellerBookResponseCopyWithImpl(this._self, this._then);

  final BestsellerBookResponse _self;
  final $Res Function(BestsellerBookResponse) _then;

  /// Create a copy of BestsellerBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? bookCover = null,
    Object? pubDate = null,
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
      bookCover: null == bookCover
          ? _self.bookCover
          : bookCover // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _self.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BestsellerBookResponse].
extension BestsellerBookResponsePatterns on BestsellerBookResponse {
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
    TResult Function(_BestsellerBookResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BestsellerBookResponse() when $default != null:
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
    TResult Function(_BestsellerBookResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestsellerBookResponse():
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
    TResult? Function(_BestsellerBookResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestsellerBookResponse() when $default != null:
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
    TResult Function(int id, String title, String author, String bookCover,
            String pubDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BestsellerBookResponse() when $default != null:
        return $default(_that.id, _that.title, _that.author, _that.bookCover,
            _that.pubDate);
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
    TResult Function(int id, String title, String author, String bookCover,
            String pubDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestsellerBookResponse():
        return $default(_that.id, _that.title, _that.author, _that.bookCover,
            _that.pubDate);
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
    TResult? Function(int id, String title, String author, String bookCover,
            String pubDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestsellerBookResponse() when $default != null:
        return $default(_that.id, _that.title, _that.author, _that.bookCover,
            _that.pubDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BestsellerBookResponse implements BestsellerBookResponse {
  const _BestsellerBookResponse(
      {this.id = 0,
      this.title = '',
      this.author = '',
      this.bookCover = '',
      this.pubDate = ''});
  factory _BestsellerBookResponse.fromJson(Map<String, dynamic> json) =>
      _$BestsellerBookResponseFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String bookCover;
  @override
  @JsonKey()
  final String pubDate;

  /// Create a copy of BestsellerBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BestsellerBookResponseCopyWith<_BestsellerBookResponse> get copyWith =>
      __$BestsellerBookResponseCopyWithImpl<_BestsellerBookResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BestsellerBookResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BestsellerBookResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookCover, bookCover) ||
                other.bookCover == bookCover) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, author, bookCover, pubDate);

  @override
  String toString() {
    return 'BestsellerBookResponse(id: $id, title: $title, author: $author, bookCover: $bookCover, pubDate: $pubDate)';
  }
}

/// @nodoc
abstract mixin class _$BestsellerBookResponseCopyWith<$Res>
    implements $BestsellerBookResponseCopyWith<$Res> {
  factory _$BestsellerBookResponseCopyWith(_BestsellerBookResponse value,
          $Res Function(_BestsellerBookResponse) _then) =
      __$BestsellerBookResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id, String title, String author, String bookCover, String pubDate});
}

/// @nodoc
class __$BestsellerBookResponseCopyWithImpl<$Res>
    implements _$BestsellerBookResponseCopyWith<$Res> {
  __$BestsellerBookResponseCopyWithImpl(this._self, this._then);

  final _BestsellerBookResponse _self;
  final $Res Function(_BestsellerBookResponse) _then;

  /// Create a copy of BestsellerBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? bookCover = null,
    Object? pubDate = null,
  }) {
    return _then(_BestsellerBookResponse(
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
      bookCover: null == bookCover
          ? _self.bookCover
          : bookCover // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _self.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
