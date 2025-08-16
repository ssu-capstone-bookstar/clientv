// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportRequest {
  int? get readingDiaryId;
  int? get reportedMemberId;
  int? get diaryCommentId;
  int? get chatMessageId;
  ReportDomain get reportDomain;
  ReportType get reportType;
  String? get content;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportRequestCopyWith<ReportRequest> get copyWith =>
      _$ReportRequestCopyWithImpl<ReportRequest>(
          this as ReportRequest, _$identity);

  /// Serializes this ReportRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportRequest &&
            (identical(other.readingDiaryId, readingDiaryId) ||
                other.readingDiaryId == readingDiaryId) &&
            (identical(other.reportedMemberId, reportedMemberId) ||
                other.reportedMemberId == reportedMemberId) &&
            (identical(other.diaryCommentId, diaryCommentId) ||
                other.diaryCommentId == diaryCommentId) &&
            (identical(other.chatMessageId, chatMessageId) ||
                other.chatMessageId == chatMessageId) &&
            (identical(other.reportDomain, reportDomain) ||
                other.reportDomain == reportDomain) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, readingDiaryId, reportedMemberId,
      diaryCommentId, chatMessageId, reportDomain, reportType, content);

  @override
  String toString() {
    return 'ReportRequest(readingDiaryId: $readingDiaryId, reportedMemberId: $reportedMemberId, diaryCommentId: $diaryCommentId, chatMessageId: $chatMessageId, reportDomain: $reportDomain, reportType: $reportType, content: $content)';
  }
}

/// @nodoc
abstract mixin class $ReportRequestCopyWith<$Res> {
  factory $ReportRequestCopyWith(
          ReportRequest value, $Res Function(ReportRequest) _then) =
      _$ReportRequestCopyWithImpl;
  @useResult
  $Res call(
      {int? readingDiaryId,
      int? reportedMemberId,
      int? diaryCommentId,
      int? chatMessageId,
      ReportDomain reportDomain,
      ReportType reportType,
      String? content});
}

/// @nodoc
class _$ReportRequestCopyWithImpl<$Res>
    implements $ReportRequestCopyWith<$Res> {
  _$ReportRequestCopyWithImpl(this._self, this._then);

  final ReportRequest _self;
  final $Res Function(ReportRequest) _then;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readingDiaryId = freezed,
    Object? reportedMemberId = freezed,
    Object? diaryCommentId = freezed,
    Object? chatMessageId = freezed,
    Object? reportDomain = null,
    Object? reportType = null,
    Object? content = freezed,
  }) {
    return _then(_self.copyWith(
      readingDiaryId: freezed == readingDiaryId
          ? _self.readingDiaryId
          : readingDiaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      reportedMemberId: freezed == reportedMemberId
          ? _self.reportedMemberId
          : reportedMemberId // ignore: cast_nullable_to_non_nullable
              as int?,
      diaryCommentId: freezed == diaryCommentId
          ? _self.diaryCommentId
          : diaryCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessageId: freezed == chatMessageId
          ? _self.chatMessageId
          : chatMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      reportDomain: null == reportDomain
          ? _self.reportDomain
          : reportDomain // ignore: cast_nullable_to_non_nullable
              as ReportDomain,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportRequest].
extension ReportRequestPatterns on ReportRequest {
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
    TResult Function(_ReportRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportRequest() when $default != null:
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
    TResult Function(_ReportRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportRequest():
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
    TResult? Function(_ReportRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportRequest() when $default != null:
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
            int? readingDiaryId,
            int? reportedMemberId,
            int? diaryCommentId,
            int? chatMessageId,
            ReportDomain reportDomain,
            ReportType reportType,
            String? content)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportRequest() when $default != null:
        return $default(
            _that.readingDiaryId,
            _that.reportedMemberId,
            _that.diaryCommentId,
            _that.chatMessageId,
            _that.reportDomain,
            _that.reportType,
            _that.content);
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
            int? readingDiaryId,
            int? reportedMemberId,
            int? diaryCommentId,
            int? chatMessageId,
            ReportDomain reportDomain,
            ReportType reportType,
            String? content)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportRequest():
        return $default(
            _that.readingDiaryId,
            _that.reportedMemberId,
            _that.diaryCommentId,
            _that.chatMessageId,
            _that.reportDomain,
            _that.reportType,
            _that.content);
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
            int? readingDiaryId,
            int? reportedMemberId,
            int? diaryCommentId,
            int? chatMessageId,
            ReportDomain reportDomain,
            ReportType reportType,
            String? content)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportRequest() when $default != null:
        return $default(
            _that.readingDiaryId,
            _that.reportedMemberId,
            _that.diaryCommentId,
            _that.chatMessageId,
            _that.reportDomain,
            _that.reportType,
            _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReportRequest implements ReportRequest {
  const _ReportRequest(
      {this.readingDiaryId,
      this.reportedMemberId,
      this.diaryCommentId,
      this.chatMessageId,
      required this.reportDomain,
      required this.reportType,
      this.content});
  factory _ReportRequest.fromJson(Map<String, dynamic> json) =>
      _$ReportRequestFromJson(json);

  @override
  final int? readingDiaryId;
  @override
  final int? reportedMemberId;
  @override
  final int? diaryCommentId;
  @override
  final int? chatMessageId;
  @override
  final ReportDomain reportDomain;
  @override
  final ReportType reportType;
  @override
  final String? content;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportRequestCopyWith<_ReportRequest> get copyWith =>
      __$ReportRequestCopyWithImpl<_ReportRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportRequest &&
            (identical(other.readingDiaryId, readingDiaryId) ||
                other.readingDiaryId == readingDiaryId) &&
            (identical(other.reportedMemberId, reportedMemberId) ||
                other.reportedMemberId == reportedMemberId) &&
            (identical(other.diaryCommentId, diaryCommentId) ||
                other.diaryCommentId == diaryCommentId) &&
            (identical(other.chatMessageId, chatMessageId) ||
                other.chatMessageId == chatMessageId) &&
            (identical(other.reportDomain, reportDomain) ||
                other.reportDomain == reportDomain) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, readingDiaryId, reportedMemberId,
      diaryCommentId, chatMessageId, reportDomain, reportType, content);

  @override
  String toString() {
    return 'ReportRequest(readingDiaryId: $readingDiaryId, reportedMemberId: $reportedMemberId, diaryCommentId: $diaryCommentId, chatMessageId: $chatMessageId, reportDomain: $reportDomain, reportType: $reportType, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$ReportRequestCopyWith<$Res>
    implements $ReportRequestCopyWith<$Res> {
  factory _$ReportRequestCopyWith(
          _ReportRequest value, $Res Function(_ReportRequest) _then) =
      __$ReportRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? readingDiaryId,
      int? reportedMemberId,
      int? diaryCommentId,
      int? chatMessageId,
      ReportDomain reportDomain,
      ReportType reportType,
      String? content});
}

/// @nodoc
class __$ReportRequestCopyWithImpl<$Res>
    implements _$ReportRequestCopyWith<$Res> {
  __$ReportRequestCopyWithImpl(this._self, this._then);

  final _ReportRequest _self;
  final $Res Function(_ReportRequest) _then;

  /// Create a copy of ReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? readingDiaryId = freezed,
    Object? reportedMemberId = freezed,
    Object? diaryCommentId = freezed,
    Object? chatMessageId = freezed,
    Object? reportDomain = null,
    Object? reportType = null,
    Object? content = freezed,
  }) {
    return _then(_ReportRequest(
      readingDiaryId: freezed == readingDiaryId
          ? _self.readingDiaryId
          : readingDiaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      reportedMemberId: freezed == reportedMemberId
          ? _self.reportedMemberId
          : reportedMemberId // ignore: cast_nullable_to_non_nullable
              as int?,
      diaryCommentId: freezed == diaryCommentId
          ? _self.diaryCommentId
          : diaryCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessageId: freezed == chatMessageId
          ? _self.chatMessageId
          : chatMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      reportDomain: null == reportDomain
          ? _self.reportDomain
          : reportDomain // ignore: cast_nullable_to_non_nullable
              as ReportDomain,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
