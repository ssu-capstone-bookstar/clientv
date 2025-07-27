// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_diary_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportDiaryRequest {
  int get readingDiaryId;
  ReportType get reportType;
  String get content;

  /// Create a copy of ReportDiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDiaryRequestCopyWith<ReportDiaryRequest> get copyWith =>
      _$ReportDiaryRequestCopyWithImpl<ReportDiaryRequest>(
          this as ReportDiaryRequest, _$identity);

  /// Serializes this ReportDiaryRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDiaryRequest &&
            (identical(other.readingDiaryId, readingDiaryId) ||
                other.readingDiaryId == readingDiaryId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readingDiaryId, reportType, content);

  @override
  String toString() {
    return 'ReportDiaryRequest(readingDiaryId: $readingDiaryId, reportType: $reportType, content: $content)';
  }
}

/// @nodoc
abstract mixin class $ReportDiaryRequestCopyWith<$Res> {
  factory $ReportDiaryRequestCopyWith(
          ReportDiaryRequest value, $Res Function(ReportDiaryRequest) _then) =
      _$ReportDiaryRequestCopyWithImpl;
  @useResult
  $Res call({int readingDiaryId, ReportType reportType, String content});
}

/// @nodoc
class _$ReportDiaryRequestCopyWithImpl<$Res>
    implements $ReportDiaryRequestCopyWith<$Res> {
  _$ReportDiaryRequestCopyWithImpl(this._self, this._then);

  final ReportDiaryRequest _self;
  final $Res Function(ReportDiaryRequest) _then;

  /// Create a copy of ReportDiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readingDiaryId = null,
    Object? reportType = null,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      readingDiaryId: null == readingDiaryId
          ? _self.readingDiaryId
          : readingDiaryId // ignore: cast_nullable_to_non_nullable
              as int,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportDiaryRequest].
extension ReportDiaryRequestPatterns on ReportDiaryRequest {
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
    TResult Function(_ReportDiaryRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportDiaryRequest() when $default != null:
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
    TResult Function(_ReportDiaryRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDiaryRequest():
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
    TResult? Function(_ReportDiaryRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDiaryRequest() when $default != null:
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
    TResult Function(int readingDiaryId, ReportType reportType, String content)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportDiaryRequest() when $default != null:
        return $default(_that.readingDiaryId, _that.reportType, _that.content);
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
    TResult Function(int readingDiaryId, ReportType reportType, String content)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDiaryRequest():
        return $default(_that.readingDiaryId, _that.reportType, _that.content);
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
            int readingDiaryId, ReportType reportType, String content)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDiaryRequest() when $default != null:
        return $default(_that.readingDiaryId, _that.reportType, _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReportDiaryRequest implements ReportDiaryRequest {
  const _ReportDiaryRequest(
      {required this.readingDiaryId,
      required this.reportType,
      required this.content});
  factory _ReportDiaryRequest.fromJson(Map<String, dynamic> json) =>
      _$ReportDiaryRequestFromJson(json);

  @override
  final int readingDiaryId;
  @override
  final ReportType reportType;
  @override
  final String content;

  /// Create a copy of ReportDiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportDiaryRequestCopyWith<_ReportDiaryRequest> get copyWith =>
      __$ReportDiaryRequestCopyWithImpl<_ReportDiaryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportDiaryRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportDiaryRequest &&
            (identical(other.readingDiaryId, readingDiaryId) ||
                other.readingDiaryId == readingDiaryId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readingDiaryId, reportType, content);

  @override
  String toString() {
    return 'ReportDiaryRequest(readingDiaryId: $readingDiaryId, reportType: $reportType, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$ReportDiaryRequestCopyWith<$Res>
    implements $ReportDiaryRequestCopyWith<$Res> {
  factory _$ReportDiaryRequestCopyWith(
          _ReportDiaryRequest value, $Res Function(_ReportDiaryRequest) _then) =
      __$ReportDiaryRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int readingDiaryId, ReportType reportType, String content});
}

/// @nodoc
class __$ReportDiaryRequestCopyWithImpl<$Res>
    implements _$ReportDiaryRequestCopyWith<$Res> {
  __$ReportDiaryRequestCopyWithImpl(this._self, this._then);

  final _ReportDiaryRequest _self;
  final $Res Function(_ReportDiaryRequest) _then;

  /// Create a copy of ReportDiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? readingDiaryId = null,
    Object? reportType = null,
    Object? content = null,
  }) {
    return _then(_ReportDiaryRequest(
      readingDiaryId: null == readingDiaryId
          ? _self.readingDiaryId
          : readingDiaryId // ignore: cast_nullable_to_non_nullable
              as int,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
