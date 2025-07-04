// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_diary_thumbnail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelatedDiaryThumbnail {
  int get diaryId;
  Thumbnail get firstImage;
  double? get score;

  /// Create a copy of RelatedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelatedDiaryThumbnailCopyWith<RelatedDiaryThumbnail> get copyWith =>
      _$RelatedDiaryThumbnailCopyWithImpl<RelatedDiaryThumbnail>(
          this as RelatedDiaryThumbnail, _$identity);

  /// Serializes this RelatedDiaryThumbnail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelatedDiaryThumbnail &&
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
    return 'RelatedDiaryThumbnail(diaryId: $diaryId, firstImage: $firstImage, score: $score)';
  }
}

/// @nodoc
abstract mixin class $RelatedDiaryThumbnailCopyWith<$Res> {
  factory $RelatedDiaryThumbnailCopyWith(RelatedDiaryThumbnail value,
          $Res Function(RelatedDiaryThumbnail) _then) =
      _$RelatedDiaryThumbnailCopyWithImpl;
  @useResult
  $Res call({int diaryId, Thumbnail firstImage, double? score});

  $ThumbnailCopyWith<$Res> get firstImage;
}

/// @nodoc
class _$RelatedDiaryThumbnailCopyWithImpl<$Res>
    implements $RelatedDiaryThumbnailCopyWith<$Res> {
  _$RelatedDiaryThumbnailCopyWithImpl(this._self, this._then);

  final RelatedDiaryThumbnail _self;
  final $Res Function(RelatedDiaryThumbnail) _then;

  /// Create a copy of RelatedDiaryThumbnail
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

  /// Create a copy of RelatedDiaryThumbnail
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
@JsonSerializable()
class _RelatedDiaryThumbnail implements RelatedDiaryThumbnail {
  const _RelatedDiaryThumbnail(
      {required this.diaryId, required this.firstImage, required this.score});
  factory _RelatedDiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$RelatedDiaryThumbnailFromJson(json);

  @override
  final int diaryId;
  @override
  final Thumbnail firstImage;
  @override
  final double? score;

  /// Create a copy of RelatedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RelatedDiaryThumbnailCopyWith<_RelatedDiaryThumbnail> get copyWith =>
      __$RelatedDiaryThumbnailCopyWithImpl<_RelatedDiaryThumbnail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RelatedDiaryThumbnailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelatedDiaryThumbnail &&
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
    return 'RelatedDiaryThumbnail(diaryId: $diaryId, firstImage: $firstImage, score: $score)';
  }
}

/// @nodoc
abstract mixin class _$RelatedDiaryThumbnailCopyWith<$Res>
    implements $RelatedDiaryThumbnailCopyWith<$Res> {
  factory _$RelatedDiaryThumbnailCopyWith(_RelatedDiaryThumbnail value,
          $Res Function(_RelatedDiaryThumbnail) _then) =
      __$RelatedDiaryThumbnailCopyWithImpl;
  @override
  @useResult
  $Res call({int diaryId, Thumbnail firstImage, double? score});

  @override
  $ThumbnailCopyWith<$Res> get firstImage;
}

/// @nodoc
class __$RelatedDiaryThumbnailCopyWithImpl<$Res>
    implements _$RelatedDiaryThumbnailCopyWith<$Res> {
  __$RelatedDiaryThumbnailCopyWithImpl(this._self, this._then);

  final _RelatedDiaryThumbnail _self;
  final $Res Function(_RelatedDiaryThumbnail) _then;

  /// Create a copy of RelatedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryId = null,
    Object? firstImage = null,
    Object? score = freezed,
  }) {
    return _then(_RelatedDiaryThumbnail(
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

  /// Create a copy of RelatedDiaryThumbnail
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
