// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrapped_diary_thumbnail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScrappedDiaryThumbnailResponse {
  int get scrapId;
  int get diaryId;
  ScrappedDiaryFirstImage? get firstImage;

  /// Create a copy of ScrappedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScrappedDiaryThumbnailResponseCopyWith<ScrappedDiaryThumbnailResponse>
      get copyWith => _$ScrappedDiaryThumbnailResponseCopyWithImpl<
              ScrappedDiaryThumbnailResponse>(
          this as ScrappedDiaryThumbnailResponse, _$identity);

  /// Serializes this ScrappedDiaryThumbnailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScrappedDiaryThumbnailResponse &&
            (identical(other.scrapId, scrapId) || other.scrapId == scrapId) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scrapId, diaryId, firstImage);

  @override
  String toString() {
    return 'ScrappedDiaryThumbnailResponse(scrapId: $scrapId, diaryId: $diaryId, firstImage: $firstImage)';
  }
}

/// @nodoc
abstract mixin class $ScrappedDiaryThumbnailResponseCopyWith<$Res> {
  factory $ScrappedDiaryThumbnailResponseCopyWith(
          ScrappedDiaryThumbnailResponse value,
          $Res Function(ScrappedDiaryThumbnailResponse) _then) =
      _$ScrappedDiaryThumbnailResponseCopyWithImpl;
  @useResult
  $Res call({int scrapId, int diaryId, ScrappedDiaryFirstImage? firstImage});

  $ScrappedDiaryFirstImageCopyWith<$Res>? get firstImage;
}

/// @nodoc
class _$ScrappedDiaryThumbnailResponseCopyWithImpl<$Res>
    implements $ScrappedDiaryThumbnailResponseCopyWith<$Res> {
  _$ScrappedDiaryThumbnailResponseCopyWithImpl(this._self, this._then);

  final ScrappedDiaryThumbnailResponse _self;
  final $Res Function(ScrappedDiaryThumbnailResponse) _then;

  /// Create a copy of ScrappedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrapId = null,
    Object? diaryId = null,
    Object? firstImage = freezed,
  }) {
    return _then(_self.copyWith(
      scrapId: null == scrapId
          ? _self.scrapId
          : scrapId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: freezed == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as ScrappedDiaryFirstImage?,
    ));
  }

  /// Create a copy of ScrappedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrappedDiaryFirstImageCopyWith<$Res>? get firstImage {
    if (_self.firstImage == null) {
      return null;
    }

    return $ScrappedDiaryFirstImageCopyWith<$Res>(_self.firstImage!, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ScrappedDiaryThumbnailResponse].
extension ScrappedDiaryThumbnailResponsePatterns
    on ScrappedDiaryThumbnailResponse {
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
    TResult Function(_ScrappedDiaryThumbnailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryThumbnailResponse() when $default != null:
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
    TResult Function(_ScrappedDiaryThumbnailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryThumbnailResponse():
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
    TResult? Function(_ScrappedDiaryThumbnailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryThumbnailResponse() when $default != null:
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
            int scrapId, int diaryId, ScrappedDiaryFirstImage? firstImage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryThumbnailResponse() when $default != null:
        return $default(_that.scrapId, _that.diaryId, _that.firstImage);
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
            int scrapId, int diaryId, ScrappedDiaryFirstImage? firstImage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryThumbnailResponse():
        return $default(_that.scrapId, _that.diaryId, _that.firstImage);
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
            int scrapId, int diaryId, ScrappedDiaryFirstImage? firstImage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryThumbnailResponse() when $default != null:
        return $default(_that.scrapId, _that.diaryId, _that.firstImage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ScrappedDiaryThumbnailResponse
    implements ScrappedDiaryThumbnailResponse {
  const _ScrappedDiaryThumbnailResponse(
      {this.scrapId = 0, this.diaryId = 0, this.firstImage = null});
  factory _ScrappedDiaryThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$ScrappedDiaryThumbnailResponseFromJson(json);

  @override
  @JsonKey()
  final int scrapId;
  @override
  @JsonKey()
  final int diaryId;
  @override
  @JsonKey()
  final ScrappedDiaryFirstImage? firstImage;

  /// Create a copy of ScrappedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScrappedDiaryThumbnailResponseCopyWith<_ScrappedDiaryThumbnailResponse>
      get copyWith => __$ScrappedDiaryThumbnailResponseCopyWithImpl<
          _ScrappedDiaryThumbnailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScrappedDiaryThumbnailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScrappedDiaryThumbnailResponse &&
            (identical(other.scrapId, scrapId) || other.scrapId == scrapId) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scrapId, diaryId, firstImage);

  @override
  String toString() {
    return 'ScrappedDiaryThumbnailResponse(scrapId: $scrapId, diaryId: $diaryId, firstImage: $firstImage)';
  }
}

/// @nodoc
abstract mixin class _$ScrappedDiaryThumbnailResponseCopyWith<$Res>
    implements $ScrappedDiaryThumbnailResponseCopyWith<$Res> {
  factory _$ScrappedDiaryThumbnailResponseCopyWith(
          _ScrappedDiaryThumbnailResponse value,
          $Res Function(_ScrappedDiaryThumbnailResponse) _then) =
      __$ScrappedDiaryThumbnailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int scrapId, int diaryId, ScrappedDiaryFirstImage? firstImage});

  @override
  $ScrappedDiaryFirstImageCopyWith<$Res>? get firstImage;
}

/// @nodoc
class __$ScrappedDiaryThumbnailResponseCopyWithImpl<$Res>
    implements _$ScrappedDiaryThumbnailResponseCopyWith<$Res> {
  __$ScrappedDiaryThumbnailResponseCopyWithImpl(this._self, this._then);

  final _ScrappedDiaryThumbnailResponse _self;
  final $Res Function(_ScrappedDiaryThumbnailResponse) _then;

  /// Create a copy of ScrappedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scrapId = null,
    Object? diaryId = null,
    Object? firstImage = freezed,
  }) {
    return _then(_ScrappedDiaryThumbnailResponse(
      scrapId: null == scrapId
          ? _self.scrapId
          : scrapId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: freezed == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as ScrappedDiaryFirstImage?,
    ));
  }

  /// Create a copy of ScrappedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrappedDiaryFirstImageCopyWith<$Res>? get firstImage {
    if (_self.firstImage == null) {
      return null;
    }

    return $ScrappedDiaryFirstImageCopyWith<$Res>(_self.firstImage!, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// @nodoc
mixin _$ScrappedDiaryFirstImage {
  String get imageUrl;

  /// Create a copy of ScrappedDiaryFirstImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScrappedDiaryFirstImageCopyWith<ScrappedDiaryFirstImage> get copyWith =>
      _$ScrappedDiaryFirstImageCopyWithImpl<ScrappedDiaryFirstImage>(
          this as ScrappedDiaryFirstImage, _$identity);

  /// Serializes this ScrappedDiaryFirstImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScrappedDiaryFirstImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @override
  String toString() {
    return 'ScrappedDiaryFirstImage(imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $ScrappedDiaryFirstImageCopyWith<$Res> {
  factory $ScrappedDiaryFirstImageCopyWith(ScrappedDiaryFirstImage value,
          $Res Function(ScrappedDiaryFirstImage) _then) =
      _$ScrappedDiaryFirstImageCopyWithImpl;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class _$ScrappedDiaryFirstImageCopyWithImpl<$Res>
    implements $ScrappedDiaryFirstImageCopyWith<$Res> {
  _$ScrappedDiaryFirstImageCopyWithImpl(this._self, this._then);

  final ScrappedDiaryFirstImage _self;
  final $Res Function(ScrappedDiaryFirstImage) _then;

  /// Create a copy of ScrappedDiaryFirstImage
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

/// Adds pattern-matching-related methods to [ScrappedDiaryFirstImage].
extension ScrappedDiaryFirstImagePatterns on ScrappedDiaryFirstImage {
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
    TResult Function(_ScrappedDiaryFirstImage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFirstImage() when $default != null:
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
    TResult Function(_ScrappedDiaryFirstImage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFirstImage():
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
    TResult? Function(_ScrappedDiaryFirstImage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScrappedDiaryFirstImage() when $default != null:
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
      case _ScrappedDiaryFirstImage() when $default != null:
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
      case _ScrappedDiaryFirstImage():
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
      case _ScrappedDiaryFirstImage() when $default != null:
        return $default(_that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ScrappedDiaryFirstImage implements ScrappedDiaryFirstImage {
  const _ScrappedDiaryFirstImage({this.imageUrl = ''});
  factory _ScrappedDiaryFirstImage.fromJson(Map<String, dynamic> json) =>
      _$ScrappedDiaryFirstImageFromJson(json);

  @override
  @JsonKey()
  final String imageUrl;

  /// Create a copy of ScrappedDiaryFirstImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScrappedDiaryFirstImageCopyWith<_ScrappedDiaryFirstImage> get copyWith =>
      __$ScrappedDiaryFirstImageCopyWithImpl<_ScrappedDiaryFirstImage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScrappedDiaryFirstImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScrappedDiaryFirstImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @override
  String toString() {
    return 'ScrappedDiaryFirstImage(imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$ScrappedDiaryFirstImageCopyWith<$Res>
    implements $ScrappedDiaryFirstImageCopyWith<$Res> {
  factory _$ScrappedDiaryFirstImageCopyWith(_ScrappedDiaryFirstImage value,
          $Res Function(_ScrappedDiaryFirstImage) _then) =
      __$ScrappedDiaryFirstImageCopyWithImpl;
  @override
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$ScrappedDiaryFirstImageCopyWithImpl<$Res>
    implements _$ScrappedDiaryFirstImageCopyWith<$Res> {
  __$ScrappedDiaryFirstImageCopyWithImpl(this._self, this._then);

  final _ScrappedDiaryFirstImage _self;
  final $Res Function(_ScrappedDiaryFirstImage) _then;

  /// Create a copy of ScrappedDiaryFirstImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_ScrappedDiaryFirstImage(
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
