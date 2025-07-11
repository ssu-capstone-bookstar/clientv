// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_thumbnail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryThumbnail {
  int get diaryId;
  Thumbnail get firstImage;

  /// Create a copy of DiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryThumbnailCopyWith<DiaryThumbnail> get copyWith =>
      _$DiaryThumbnailCopyWithImpl<DiaryThumbnail>(
          this as DiaryThumbnail, _$identity);

  /// Serializes this DiaryThumbnail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryThumbnail &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, firstImage);

  @override
  String toString() {
    return 'DiaryThumbnail(diaryId: $diaryId, firstImage: $firstImage)';
  }
}

/// @nodoc
abstract mixin class $DiaryThumbnailCopyWith<$Res> {
  factory $DiaryThumbnailCopyWith(
          DiaryThumbnail value, $Res Function(DiaryThumbnail) _then) =
      _$DiaryThumbnailCopyWithImpl;
  @useResult
  $Res call({int diaryId, Thumbnail firstImage});

  $ThumbnailCopyWith<$Res> get firstImage;
}

/// @nodoc
class _$DiaryThumbnailCopyWithImpl<$Res>
    implements $DiaryThumbnailCopyWith<$Res> {
  _$DiaryThumbnailCopyWithImpl(this._self, this._then);

  final DiaryThumbnail _self;
  final $Res Function(DiaryThumbnail) _then;

  /// Create a copy of DiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? firstImage = null,
  }) {
    return _then(_self.copyWith(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: null == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }

  /// Create a copy of DiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get firstImage {
    return $ThumbnailCopyWith<$Res>(_self.firstImage, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DiaryThumbnail].
extension DiaryThumbnailPatterns on DiaryThumbnail {
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
    TResult Function(_DiaryThumbnail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryThumbnail() when $default != null:
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
    TResult Function(_DiaryThumbnail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryThumbnail():
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
    TResult? Function(_DiaryThumbnail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryThumbnail() when $default != null:
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
    TResult Function(int diaryId, Thumbnail firstImage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryThumbnail() when $default != null:
        return $default(_that.diaryId, _that.firstImage);
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
    TResult Function(int diaryId, Thumbnail firstImage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryThumbnail():
        return $default(_that.diaryId, _that.firstImage);
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
    TResult? Function(int diaryId, Thumbnail firstImage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryThumbnail() when $default != null:
        return $default(_that.diaryId, _that.firstImage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryThumbnail implements DiaryThumbnail {
  const _DiaryThumbnail({required this.diaryId, required this.firstImage});
  factory _DiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$DiaryThumbnailFromJson(json);

  @override
  final int diaryId;
  @override
  final Thumbnail firstImage;

  /// Create a copy of DiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryThumbnailCopyWith<_DiaryThumbnail> get copyWith =>
      __$DiaryThumbnailCopyWithImpl<_DiaryThumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryThumbnailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryThumbnail &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, firstImage);

  @override
  String toString() {
    return 'DiaryThumbnail(diaryId: $diaryId, firstImage: $firstImage)';
  }
}

/// @nodoc
abstract mixin class _$DiaryThumbnailCopyWith<$Res>
    implements $DiaryThumbnailCopyWith<$Res> {
  factory _$DiaryThumbnailCopyWith(
          _DiaryThumbnail value, $Res Function(_DiaryThumbnail) _then) =
      __$DiaryThumbnailCopyWithImpl;
  @override
  @useResult
  $Res call({int diaryId, Thumbnail firstImage});

  @override
  $ThumbnailCopyWith<$Res> get firstImage;
}

/// @nodoc
class __$DiaryThumbnailCopyWithImpl<$Res>
    implements _$DiaryThumbnailCopyWith<$Res> {
  __$DiaryThumbnailCopyWithImpl(this._self, this._then);

  final _DiaryThumbnail _self;
  final $Res Function(_DiaryThumbnail) _then;

  /// Create a copy of DiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? firstImage = null,
  }) {
    return _then(_DiaryThumbnail(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: null == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }

  /// Create a copy of DiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get firstImage {
    return $ThumbnailCopyWith<$Res>(_self.firstImage, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// @nodoc
mixin _$Thumbnail {
  String get imageUrl;

  /// Create a copy of Thumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<Thumbnail> get copyWith =>
      _$ThumbnailCopyWithImpl<Thumbnail>(this as Thumbnail, _$identity);

  /// Serializes this Thumbnail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Thumbnail &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @override
  String toString() {
    return 'Thumbnail(imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $ThumbnailCopyWith<$Res> {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) _then) =
      _$ThumbnailCopyWithImpl;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class _$ThumbnailCopyWithImpl<$Res> implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._self, this._then);

  final Thumbnail _self;
  final $Res Function(Thumbnail) _then;

  /// Create a copy of Thumbnail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_self.copyWith(
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Thumbnail].
extension ThumbnailPatterns on Thumbnail {
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
    TResult Function(_Thumbnail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Thumbnail() when $default != null:
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
    TResult Function(_Thumbnail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Thumbnail():
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
    TResult? Function(_Thumbnail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Thumbnail() when $default != null:
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
    TResult Function(String imageUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Thumbnail() when $default != null:
        return $default(_that.imageUrl);
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
    TResult Function(String imageUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Thumbnail():
        return $default(_that.imageUrl);
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
    TResult? Function(String imageUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Thumbnail() when $default != null:
        return $default(_that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Thumbnail implements Thumbnail {
  const _Thumbnail({this.imageUrl = ''});
  factory _Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  @override
  @JsonKey()
  final String imageUrl;

  /// Create a copy of Thumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThumbnailCopyWith<_Thumbnail> get copyWith =>
      __$ThumbnailCopyWithImpl<_Thumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThumbnailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Thumbnail &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @override
  String toString() {
    return 'Thumbnail(imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$ThumbnailCopyWith<$Res>
    implements $ThumbnailCopyWith<$Res> {
  factory _$ThumbnailCopyWith(
          _Thumbnail value, $Res Function(_Thumbnail) _then) =
      __$ThumbnailCopyWithImpl;
  @override
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$ThumbnailCopyWithImpl<$Res> implements _$ThumbnailCopyWith<$Res> {
  __$ThumbnailCopyWithImpl(this._self, this._then);

  final _Thumbnail _self;
  final $Res Function(_Thumbnail) _then;

  /// Create a copy of Thumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_Thumbnail(
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
