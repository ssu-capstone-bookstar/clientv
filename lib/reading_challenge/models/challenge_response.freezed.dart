// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChallengeResponse {
  int get challengeId;
  BookSummary get book;
  int get currentPage;
  int get totalPages;
  double get progressPercent;
  bool get completed;
  bool get abandoned;
  DateTime? get lastReadAt;

  /// Create a copy of ChallengeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeResponseCopyWith<ChallengeResponse> get copyWith =>
      _$ChallengeResponseCopyWithImpl<ChallengeResponse>(
          this as ChallengeResponse, _$identity);

  /// Serializes this ChallengeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChallengeResponse &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.abandoned, abandoned) ||
                other.abandoned == abandoned) &&
            (identical(other.lastReadAt, lastReadAt) ||
                other.lastReadAt == lastReadAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, challengeId, book, currentPage,
      totalPages, progressPercent, completed, abandoned, lastReadAt);

  @override
  String toString() {
    return 'ChallengeResponse(challengeId: $challengeId, book: $book, currentPage: $currentPage, totalPages: $totalPages, progressPercent: $progressPercent, completed: $completed, abandoned: $abandoned, lastReadAt: $lastReadAt)';
  }
}

/// @nodoc
abstract mixin class $ChallengeResponseCopyWith<$Res> {
  factory $ChallengeResponseCopyWith(
          ChallengeResponse value, $Res Function(ChallengeResponse) _then) =
      _$ChallengeResponseCopyWithImpl;
  @useResult
  $Res call(
      {int challengeId,
      BookSummary book,
      int currentPage,
      int totalPages,
      double progressPercent,
      bool completed,
      bool abandoned,
      DateTime? lastReadAt});

  $BookSummaryCopyWith<$Res> get book;
}

/// @nodoc
class _$ChallengeResponseCopyWithImpl<$Res>
    implements $ChallengeResponseCopyWith<$Res> {
  _$ChallengeResponseCopyWithImpl(this._self, this._then);

  final ChallengeResponse _self;
  final $Res Function(ChallengeResponse) _then;

  /// Create a copy of ChallengeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? book = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? progressPercent = null,
    Object? completed = null,
    Object? abandoned = null,
    Object? lastReadAt = freezed,
  }) {
    return _then(_self.copyWith(
      challengeId: null == challengeId
          ? _self.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as int,
      book: null == book
          ? _self.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookSummary,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercent: null == progressPercent
          ? _self.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as double,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      abandoned: null == abandoned
          ? _self.abandoned
          : abandoned // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReadAt: freezed == lastReadAt
          ? _self.lastReadAt
          : lastReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of ChallengeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookSummaryCopyWith<$Res> get book {
    return $BookSummaryCopyWith<$Res>(_self.book, (value) {
      return _then(_self.copyWith(book: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChallengeResponse implements ChallengeResponse {
  const _ChallengeResponse(
      {this.challengeId = 0,
      required this.book,
      this.currentPage = 0,
      this.totalPages = 0,
      this.progressPercent = 0.0,
      this.completed = false,
      this.abandoned = false,
      this.lastReadAt});
  factory _ChallengeResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeResponseFromJson(json);

  @override
  @JsonKey()
  final int challengeId;
  @override
  final BookSummary book;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final double progressPercent;
  @override
  @JsonKey()
  final bool completed;
  @override
  @JsonKey()
  final bool abandoned;
  @override
  final DateTime? lastReadAt;

  /// Create a copy of ChallengeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeResponseCopyWith<_ChallengeResponse> get copyWith =>
      __$ChallengeResponseCopyWithImpl<_ChallengeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChallengeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChallengeResponse &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.abandoned, abandoned) ||
                other.abandoned == abandoned) &&
            (identical(other.lastReadAt, lastReadAt) ||
                other.lastReadAt == lastReadAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, challengeId, book, currentPage,
      totalPages, progressPercent, completed, abandoned, lastReadAt);

  @override
  String toString() {
    return 'ChallengeResponse(challengeId: $challengeId, book: $book, currentPage: $currentPage, totalPages: $totalPages, progressPercent: $progressPercent, completed: $completed, abandoned: $abandoned, lastReadAt: $lastReadAt)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeResponseCopyWith<$Res>
    implements $ChallengeResponseCopyWith<$Res> {
  factory _$ChallengeResponseCopyWith(
          _ChallengeResponse value, $Res Function(_ChallengeResponse) _then) =
      __$ChallengeResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int challengeId,
      BookSummary book,
      int currentPage,
      int totalPages,
      double progressPercent,
      bool completed,
      bool abandoned,
      DateTime? lastReadAt});

  @override
  $BookSummaryCopyWith<$Res> get book;
}

/// @nodoc
class __$ChallengeResponseCopyWithImpl<$Res>
    implements _$ChallengeResponseCopyWith<$Res> {
  __$ChallengeResponseCopyWithImpl(this._self, this._then);

  final _ChallengeResponse _self;
  final $Res Function(_ChallengeResponse) _then;

  /// Create a copy of ChallengeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? challengeId = null,
    Object? book = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? progressPercent = null,
    Object? completed = null,
    Object? abandoned = null,
    Object? lastReadAt = freezed,
  }) {
    return _then(_ChallengeResponse(
      challengeId: null == challengeId
          ? _self.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as int,
      book: null == book
          ? _self.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookSummary,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercent: null == progressPercent
          ? _self.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as double,
      completed: null == completed
          ? _self.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      abandoned: null == abandoned
          ? _self.abandoned
          : abandoned // ignore: cast_nullable_to_non_nullable
              as bool,
      lastReadAt: freezed == lastReadAt
          ? _self.lastReadAt
          : lastReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of ChallengeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookSummaryCopyWith<$Res> get book {
    return $BookSummaryCopyWith<$Res>(_self.book, (value) {
      return _then(_self.copyWith(book: value));
    });
  }
}

// dart format on
