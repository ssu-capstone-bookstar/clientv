// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_diary_thumbnail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyDiaryThumbnail {
  int get diaryId;
  Thumbnail get firstImage;
  double? get score;

  /// Create a copy of MyDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyDiaryThumbnailCopyWith<MyDiaryThumbnail> get copyWith =>
      _$MyDiaryThumbnailCopyWithImpl<MyDiaryThumbnail>(
          this as MyDiaryThumbnail, _$identity);

  /// Serializes this MyDiaryThumbnail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyDiaryThumbnail &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, firstImage, score);

  @override
  String toString() {
    return 'MyDiaryThumbnail(diaryId: $diaryId, firstImage: $firstImage, score: $score)';
  }
}

/// @nodoc
abstract mixin class $MyDiaryThumbnailCopyWith<$Res> {
  factory $MyDiaryThumbnailCopyWith(
          MyDiaryThumbnail value, $Res Function(MyDiaryThumbnail) _then) =
      _$MyDiaryThumbnailCopyWithImpl;
  @useResult
  $Res call({int diaryId, Thumbnail firstImage, double? score});

  $ThumbnailCopyWith<$Res> get firstImage;
}

/// @nodoc
class _$MyDiaryThumbnailCopyWithImpl<$Res>
    implements $MyDiaryThumbnailCopyWith<$Res> {
  _$MyDiaryThumbnailCopyWithImpl(this._self, this._then);

  final MyDiaryThumbnail _self;
  final $Res Function(MyDiaryThumbnail) _then;

  /// Create a copy of MyDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? firstImage = null,
    Object? score = freezed,
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
      score: freezed == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of MyDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get firstImage {
    return $ThumbnailCopyWith<$Res>(_self.firstImage, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MyDiaryThumbnail].
extension MyDiaryThumbnailPatterns on MyDiaryThumbnail {
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
    TResult Function(_MyDiaryThumbnail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyDiaryThumbnail() when $default != null:
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
    TResult Function(_MyDiaryThumbnail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryThumbnail():
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
    TResult? Function(_MyDiaryThumbnail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryThumbnail() when $default != null:
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
    TResult Function(int diaryId, Thumbnail firstImage, double? score)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyDiaryThumbnail() when $default != null:
        return $default(_that.diaryId, _that.firstImage, _that.score);
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
    TResult Function(int diaryId, Thumbnail firstImage, double? score) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryThumbnail():
        return $default(_that.diaryId, _that.firstImage, _that.score);
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
    TResult? Function(int diaryId, Thumbnail firstImage, double? score)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyDiaryThumbnail() when $default != null:
        return $default(_that.diaryId, _that.firstImage, _that.score);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MyDiaryThumbnail implements MyDiaryThumbnail {
  const _MyDiaryThumbnail(
      {required this.diaryId, required this.firstImage, required this.score});
  factory _MyDiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$MyDiaryThumbnailFromJson(json);

  @override
  final int diaryId;
  @override
  final Thumbnail firstImage;
  @override
  final double? score;

  /// Create a copy of MyDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyDiaryThumbnailCopyWith<_MyDiaryThumbnail> get copyWith =>
      __$MyDiaryThumbnailCopyWithImpl<_MyDiaryThumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyDiaryThumbnailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyDiaryThumbnail &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, firstImage, score);

  @override
  String toString() {
    return 'MyDiaryThumbnail(diaryId: $diaryId, firstImage: $firstImage, score: $score)';
  }
}

/// @nodoc
abstract mixin class _$MyDiaryThumbnailCopyWith<$Res>
    implements $MyDiaryThumbnailCopyWith<$Res> {
  factory _$MyDiaryThumbnailCopyWith(
          _MyDiaryThumbnail value, $Res Function(_MyDiaryThumbnail) _then) =
      __$MyDiaryThumbnailCopyWithImpl;
  @override
  @useResult
  $Res call({int diaryId, Thumbnail firstImage, double? score});

  @override
  $ThumbnailCopyWith<$Res> get firstImage;
}

/// @nodoc
class __$MyDiaryThumbnailCopyWithImpl<$Res>
    implements _$MyDiaryThumbnailCopyWith<$Res> {
  __$MyDiaryThumbnailCopyWithImpl(this._self, this._then);

  final _MyDiaryThumbnail _self;
  final $Res Function(_MyDiaryThumbnail) _then;

  /// Create a copy of MyDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? firstImage = null,
    Object? score = freezed,
  }) {
    return _then(_MyDiaryThumbnail(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: null == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      score: freezed == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of MyDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get firstImage {
    return $ThumbnailCopyWith<$Res>(_self.firstImage, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

// dart format on
