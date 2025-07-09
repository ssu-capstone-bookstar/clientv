// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookSummary {
  int get id;
  String get title;
  String get author;
  String get thumbnailUrl;

  /// Create a copy of BookSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookSummaryCopyWith<BookSummary> get copyWith =>
      _$BookSummaryCopyWithImpl<BookSummary>(this as BookSummary, _$identity);

  /// Serializes this BookSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, thumbnailUrl);

  @override
  String toString() {
    return 'BookSummary(id: $id, title: $title, author: $author, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class $BookSummaryCopyWith<$Res> {
  factory $BookSummaryCopyWith(
          BookSummary value, $Res Function(BookSummary) _then) =
      _$BookSummaryCopyWithImpl;
  @useResult
  $Res call({int id, String title, String author, String thumbnailUrl});
}

/// @nodoc
class _$BookSummaryCopyWithImpl<$Res> implements $BookSummaryCopyWith<$Res> {
  _$BookSummaryCopyWithImpl(this._self, this._then);

  final BookSummary _self;
  final $Res Function(BookSummary) _then;

  /// Create a copy of BookSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? thumbnailUrl = null,
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
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookSummary].
extension BookSummaryPatterns on BookSummary {
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
    TResult Function(_BookSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookSummary() when $default != null:
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
    TResult Function(_BookSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookSummary():
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
    TResult? Function(_BookSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookSummary() when $default != null:
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
    TResult Function(int id, String title, String author, String thumbnailUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookSummary() when $default != null:
        return $default(
            _that.id, _that.title, _that.author, _that.thumbnailUrl);
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
    TResult Function(int id, String title, String author, String thumbnailUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookSummary():
        return $default(
            _that.id, _that.title, _that.author, _that.thumbnailUrl);
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
    TResult? Function(int id, String title, String author, String thumbnailUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookSummary() when $default != null:
        return $default(
            _that.id, _that.title, _that.author, _that.thumbnailUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookSummary implements BookSummary {
  const _BookSummary(
      {this.id = 0, this.title = '', this.author = '', this.thumbnailUrl = ''});
  factory _BookSummary.fromJson(Map<String, dynamic> json) =>
      _$BookSummaryFromJson(json);

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
  final String thumbnailUrl;

  /// Create a copy of BookSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookSummaryCopyWith<_BookSummary> get copyWith =>
      __$BookSummaryCopyWithImpl<_BookSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, thumbnailUrl);

  @override
  String toString() {
    return 'BookSummary(id: $id, title: $title, author: $author, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class _$BookSummaryCopyWith<$Res>
    implements $BookSummaryCopyWith<$Res> {
  factory _$BookSummaryCopyWith(
          _BookSummary value, $Res Function(_BookSummary) _then) =
      __$BookSummaryCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String title, String author, String thumbnailUrl});
}

/// @nodoc
class __$BookSummaryCopyWithImpl<$Res> implements _$BookSummaryCopyWith<$Res> {
  __$BookSummaryCopyWithImpl(this._self, this._then);

  final _BookSummary _self;
  final $Res Function(_BookSummary) _then;

  /// Create a copy of BookSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_BookSummary(
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
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
