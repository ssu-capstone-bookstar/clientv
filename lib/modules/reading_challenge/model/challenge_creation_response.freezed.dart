// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChallengeCreationResponse {
  int get challengeId;
  BookSummary get book;
  int get currentPage;
  int get totalPages;
  double get progressPercent;
  bool get completed;
  bool get abandoned;
  DateTime? get lastReadAt;
  int get progressId;

  /// Create a copy of ChallengeCreationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeCreationResponseCopyWith<ChallengeCreationResponse> get copyWith =>
      _$ChallengeCreationResponseCopyWithImpl<ChallengeCreationResponse>(
          this as ChallengeCreationResponse, _$identity);

  /// Serializes this ChallengeCreationResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChallengeCreationResponse &&
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
                other.lastReadAt == lastReadAt) &&
            (identical(other.progressId, progressId) ||
                other.progressId == progressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      challengeId,
      book,
      currentPage,
      totalPages,
      progressPercent,
      completed,
      abandoned,
      lastReadAt,
      progressId);

  @override
  String toString() {
    return 'ChallengeCreationResponse(challengeId: $challengeId, book: $book, currentPage: $currentPage, totalPages: $totalPages, progressPercent: $progressPercent, completed: $completed, abandoned: $abandoned, lastReadAt: $lastReadAt, progressId: $progressId)';
  }
}

/// @nodoc
abstract mixin class $ChallengeCreationResponseCopyWith<$Res> {
  factory $ChallengeCreationResponseCopyWith(ChallengeCreationResponse value,
          $Res Function(ChallengeCreationResponse) _then) =
      _$ChallengeCreationResponseCopyWithImpl;
  @useResult
  $Res call(
      {int challengeId,
      BookSummary book,
      int currentPage,
      int totalPages,
      double progressPercent,
      bool completed,
      bool abandoned,
      DateTime? lastReadAt,
      int progressId});

  $BookSummaryCopyWith<$Res> get book;
}

/// @nodoc
class _$ChallengeCreationResponseCopyWithImpl<$Res>
    implements $ChallengeCreationResponseCopyWith<$Res> {
  _$ChallengeCreationResponseCopyWithImpl(this._self, this._then);

  final ChallengeCreationResponse _self;
  final $Res Function(ChallengeCreationResponse) _then;

  /// Create a copy of ChallengeCreationResponse
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
    Object? progressId = null,
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
      progressId: null == progressId
          ? _self.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ChallengeCreationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookSummaryCopyWith<$Res> get book {
    return $BookSummaryCopyWith<$Res>(_self.book, (value) {
      return _then(_self.copyWith(book: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChallengeCreationResponse].
extension ChallengeCreationResponsePatterns on ChallengeCreationResponse {
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
    TResult Function(_ChallengeCreationResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeCreationResponse() when $default != null:
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
    TResult Function(_ChallengeCreationResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeCreationResponse():
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
    TResult? Function(_ChallengeCreationResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeCreationResponse() when $default != null:
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
            int challengeId,
            BookSummary book,
            int currentPage,
            int totalPages,
            double progressPercent,
            bool completed,
            bool abandoned,
            DateTime? lastReadAt,
            int progressId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeCreationResponse() when $default != null:
        return $default(
            _that.challengeId,
            _that.book,
            _that.currentPage,
            _that.totalPages,
            _that.progressPercent,
            _that.completed,
            _that.abandoned,
            _that.lastReadAt,
            _that.progressId);
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
            int challengeId,
            BookSummary book,
            int currentPage,
            int totalPages,
            double progressPercent,
            bool completed,
            bool abandoned,
            DateTime? lastReadAt,
            int progressId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeCreationResponse():
        return $default(
            _that.challengeId,
            _that.book,
            _that.currentPage,
            _that.totalPages,
            _that.progressPercent,
            _that.completed,
            _that.abandoned,
            _that.lastReadAt,
            _that.progressId);
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
            int challengeId,
            BookSummary book,
            int currentPage,
            int totalPages,
            double progressPercent,
            bool completed,
            bool abandoned,
            DateTime? lastReadAt,
            int progressId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeCreationResponse() when $default != null:
        return $default(
            _that.challengeId,
            _that.book,
            _that.currentPage,
            _that.totalPages,
            _that.progressPercent,
            _that.completed,
            _that.abandoned,
            _that.lastReadAt,
            _that.progressId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChallengeCreationResponse implements ChallengeCreationResponse {
  const _ChallengeCreationResponse(
      {this.challengeId = 0,
      required this.book,
      this.currentPage = 0,
      this.totalPages = 0,
      this.progressPercent = 0.0,
      this.completed = false,
      this.abandoned = false,
      this.lastReadAt,
      required this.progressId});
  factory _ChallengeCreationResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeCreationResponseFromJson(json);

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
  @override
  final int progressId;

  /// Create a copy of ChallengeCreationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeCreationResponseCopyWith<_ChallengeCreationResponse>
      get copyWith =>
          __$ChallengeCreationResponseCopyWithImpl<_ChallengeCreationResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChallengeCreationResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChallengeCreationResponse &&
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
                other.lastReadAt == lastReadAt) &&
            (identical(other.progressId, progressId) ||
                other.progressId == progressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      challengeId,
      book,
      currentPage,
      totalPages,
      progressPercent,
      completed,
      abandoned,
      lastReadAt,
      progressId);

  @override
  String toString() {
    return 'ChallengeCreationResponse(challengeId: $challengeId, book: $book, currentPage: $currentPage, totalPages: $totalPages, progressPercent: $progressPercent, completed: $completed, abandoned: $abandoned, lastReadAt: $lastReadAt, progressId: $progressId)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeCreationResponseCopyWith<$Res>
    implements $ChallengeCreationResponseCopyWith<$Res> {
  factory _$ChallengeCreationResponseCopyWith(_ChallengeCreationResponse value,
          $Res Function(_ChallengeCreationResponse) _then) =
      __$ChallengeCreationResponseCopyWithImpl;
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
      DateTime? lastReadAt,
      int progressId});

  @override
  $BookSummaryCopyWith<$Res> get book;
}

/// @nodoc
class __$ChallengeCreationResponseCopyWithImpl<$Res>
    implements _$ChallengeCreationResponseCopyWith<$Res> {
  __$ChallengeCreationResponseCopyWithImpl(this._self, this._then);

  final _ChallengeCreationResponse _self;
  final $Res Function(_ChallengeCreationResponse) _then;

  /// Create a copy of ChallengeCreationResponse
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
    Object? progressId = null,
  }) {
    return _then(_ChallengeCreationResponse(
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
      progressId: null == progressId
          ? _self.progressId
          : progressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ChallengeCreationResponse
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
