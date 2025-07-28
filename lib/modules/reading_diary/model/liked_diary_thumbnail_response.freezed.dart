// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_diary_thumbnail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikedDiaryThumbnailResponse {
  StatusResponse get statusResponse;
  LikedDiaryThumbnailData get data;

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryThumbnailResponseCopyWith<LikedDiaryThumbnailResponse>
      get copyWith => _$LikedDiaryThumbnailResponseCopyWithImpl<
              LikedDiaryThumbnailResponse>(
          this as LikedDiaryThumbnailResponse, _$identity);

  /// Serializes this LikedDiaryThumbnailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryThumbnailResponse &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusResponse, data);

  @override
  String toString() {
    return 'LikedDiaryThumbnailResponse(statusResponse: $statusResponse, data: $data)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryThumbnailResponseCopyWith<$Res> {
  factory $LikedDiaryThumbnailResponseCopyWith(
          LikedDiaryThumbnailResponse value,
          $Res Function(LikedDiaryThumbnailResponse) _then) =
      _$LikedDiaryThumbnailResponseCopyWithImpl;
  @useResult
  $Res call({StatusResponse statusResponse, LikedDiaryThumbnailData data});

  $StatusResponseCopyWith<$Res> get statusResponse;
  $LikedDiaryThumbnailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LikedDiaryThumbnailResponseCopyWithImpl<$Res>
    implements $LikedDiaryThumbnailResponseCopyWith<$Res> {
  _$LikedDiaryThumbnailResponseCopyWithImpl(this._self, this._then);

  final LikedDiaryThumbnailResponse _self;
  final $Res Function(LikedDiaryThumbnailResponse) _then;

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusResponse = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      statusResponse: null == statusResponse
          ? _self.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikedDiaryThumbnailData,
    ));
  }

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<$Res> get statusResponse {
    return $StatusResponseCopyWith<$Res>(_self.statusResponse, (value) {
      return _then(_self.copyWith(statusResponse: value));
    });
  }

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikedDiaryThumbnailDataCopyWith<$Res> get data {
    return $LikedDiaryThumbnailDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryThumbnailResponse].
extension LikedDiaryThumbnailResponsePatterns on LikedDiaryThumbnailResponse {
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
    TResult Function(_LikedDiaryThumbnailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailResponse() when $default != null:
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
    TResult Function(_LikedDiaryThumbnailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailResponse():
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
    TResult? Function(_LikedDiaryThumbnailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailResponse() when $default != null:
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
            StatusResponse statusResponse, LikedDiaryThumbnailData data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailResponse() when $default != null:
        return $default(_that.statusResponse, _that.data);
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
            StatusResponse statusResponse, LikedDiaryThumbnailData data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailResponse():
        return $default(_that.statusResponse, _that.data);
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
            StatusResponse statusResponse, LikedDiaryThumbnailData data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailResponse() when $default != null:
        return $default(_that.statusResponse, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryThumbnailResponse implements LikedDiaryThumbnailResponse {
  const _LikedDiaryThumbnailResponse(
      {required this.statusResponse, required this.data});
  factory _LikedDiaryThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryThumbnailResponseFromJson(json);

  @override
  final StatusResponse statusResponse;
  @override
  final LikedDiaryThumbnailData data;

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryThumbnailResponseCopyWith<_LikedDiaryThumbnailResponse>
      get copyWith => __$LikedDiaryThumbnailResponseCopyWithImpl<
          _LikedDiaryThumbnailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryThumbnailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryThumbnailResponse &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusResponse, data);

  @override
  String toString() {
    return 'LikedDiaryThumbnailResponse(statusResponse: $statusResponse, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryThumbnailResponseCopyWith<$Res>
    implements $LikedDiaryThumbnailResponseCopyWith<$Res> {
  factory _$LikedDiaryThumbnailResponseCopyWith(
          _LikedDiaryThumbnailResponse value,
          $Res Function(_LikedDiaryThumbnailResponse) _then) =
      __$LikedDiaryThumbnailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({StatusResponse statusResponse, LikedDiaryThumbnailData data});

  @override
  $StatusResponseCopyWith<$Res> get statusResponse;
  @override
  $LikedDiaryThumbnailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LikedDiaryThumbnailResponseCopyWithImpl<$Res>
    implements _$LikedDiaryThumbnailResponseCopyWith<$Res> {
  __$LikedDiaryThumbnailResponseCopyWithImpl(this._self, this._then);

  final _LikedDiaryThumbnailResponse _self;
  final $Res Function(_LikedDiaryThumbnailResponse) _then;

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statusResponse = null,
    Object? data = null,
  }) {
    return _then(_LikedDiaryThumbnailResponse(
      statusResponse: null == statusResponse
          ? _self.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikedDiaryThumbnailData,
    ));
  }

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<$Res> get statusResponse {
    return $StatusResponseCopyWith<$Res>(_self.statusResponse, (value) {
      return _then(_self.copyWith(statusResponse: value));
    });
  }

  /// Create a copy of LikedDiaryThumbnailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikedDiaryThumbnailDataCopyWith<$Res> get data {
    return $LikedDiaryThumbnailDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$StatusResponse {
  String get resultCode;
  String get resultMessage;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StatusResponseCopyWith<StatusResponse> get copyWith =>
      _$StatusResponseCopyWithImpl<StatusResponse>(
          this as StatusResponse, _$identity);

  /// Serializes this StatusResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StatusResponse &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMessage, resultMessage) ||
                other.resultMessage == resultMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, resultCode, resultMessage);

  @override
  String toString() {
    return 'StatusResponse(resultCode: $resultCode, resultMessage: $resultMessage)';
  }
}

/// @nodoc
abstract mixin class $StatusResponseCopyWith<$Res> {
  factory $StatusResponseCopyWith(
          StatusResponse value, $Res Function(StatusResponse) _then) =
      _$StatusResponseCopyWithImpl;
  @useResult
  $Res call({String resultCode, String resultMessage});
}

/// @nodoc
class _$StatusResponseCopyWithImpl<$Res>
    implements $StatusResponseCopyWith<$Res> {
  _$StatusResponseCopyWithImpl(this._self, this._then);

  final StatusResponse _self;
  final $Res Function(StatusResponse) _then;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMessage = null,
  }) {
    return _then(_self.copyWith(
      resultCode: null == resultCode
          ? _self.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMessage: null == resultMessage
          ? _self.resultMessage
          : resultMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StatusResponse].
extension StatusResponsePatterns on StatusResponse {
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
    TResult Function(_StatusResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatusResponse() when $default != null:
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
    TResult Function(_StatusResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusResponse():
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
    TResult? Function(_StatusResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusResponse() when $default != null:
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
    TResult Function(String resultCode, String resultMessage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatusResponse() when $default != null:
        return $default(_that.resultCode, _that.resultMessage);
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
    TResult Function(String resultCode, String resultMessage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusResponse():
        return $default(_that.resultCode, _that.resultMessage);
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
    TResult? Function(String resultCode, String resultMessage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusResponse() when $default != null:
        return $default(_that.resultCode, _that.resultMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StatusResponse implements StatusResponse {
  const _StatusResponse(
      {required this.resultCode, required this.resultMessage});
  factory _StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);

  @override
  final String resultCode;
  @override
  final String resultMessage;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatusResponseCopyWith<_StatusResponse> get copyWith =>
      __$StatusResponseCopyWithImpl<_StatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatusResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusResponse &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMessage, resultMessage) ||
                other.resultMessage == resultMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, resultCode, resultMessage);

  @override
  String toString() {
    return 'StatusResponse(resultCode: $resultCode, resultMessage: $resultMessage)';
  }
}

/// @nodoc
abstract mixin class _$StatusResponseCopyWith<$Res>
    implements $StatusResponseCopyWith<$Res> {
  factory _$StatusResponseCopyWith(
          _StatusResponse value, $Res Function(_StatusResponse) _then) =
      __$StatusResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String resultCode, String resultMessage});
}

/// @nodoc
class __$StatusResponseCopyWithImpl<$Res>
    implements _$StatusResponseCopyWith<$Res> {
  __$StatusResponseCopyWithImpl(this._self, this._then);

  final _StatusResponse _self;
  final $Res Function(_StatusResponse) _then;

  /// Create a copy of StatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resultCode = null,
    Object? resultMessage = null,
  }) {
    return _then(_StatusResponse(
      resultCode: null == resultCode
          ? _self.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMessage: null == resultMessage
          ? _self.resultMessage
          : resultMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LikedDiaryThumbnailData {
  List<LikedDiaryThumbnail> get data;
  int get nextCursor;
  bool get hasNext;

  /// Create a copy of LikedDiaryThumbnailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryThumbnailDataCopyWith<LikedDiaryThumbnailData> get copyWith =>
      _$LikedDiaryThumbnailDataCopyWithImpl<LikedDiaryThumbnailData>(
          this as LikedDiaryThumbnailData, _$identity);

  /// Serializes this LikedDiaryThumbnailData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryThumbnailData &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), nextCursor, hasNext);

  @override
  String toString() {
    return 'LikedDiaryThumbnailData(data: $data, nextCursor: $nextCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryThumbnailDataCopyWith<$Res> {
  factory $LikedDiaryThumbnailDataCopyWith(LikedDiaryThumbnailData value,
          $Res Function(LikedDiaryThumbnailData) _then) =
      _$LikedDiaryThumbnailDataCopyWithImpl;
  @useResult
  $Res call({List<LikedDiaryThumbnail> data, int nextCursor, bool hasNext});
}

/// @nodoc
class _$LikedDiaryThumbnailDataCopyWithImpl<$Res>
    implements $LikedDiaryThumbnailDataCopyWith<$Res> {
  _$LikedDiaryThumbnailDataCopyWithImpl(this._self, this._then);

  final LikedDiaryThumbnailData _self;
  final $Res Function(LikedDiaryThumbnailData) _then;

  /// Create a copy of LikedDiaryThumbnailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextCursor = null,
    Object? hasNext = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryThumbnail>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryThumbnailData].
extension LikedDiaryThumbnailDataPatterns on LikedDiaryThumbnailData {
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
    TResult Function(_LikedDiaryThumbnailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailData() when $default != null:
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
    TResult Function(_LikedDiaryThumbnailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailData():
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
    TResult? Function(_LikedDiaryThumbnailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailData() when $default != null:
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
            List<LikedDiaryThumbnail> data, int nextCursor, bool hasNext)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailData() when $default != null:
        return $default(_that.data, _that.nextCursor, _that.hasNext);
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
            List<LikedDiaryThumbnail> data, int nextCursor, bool hasNext)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailData():
        return $default(_that.data, _that.nextCursor, _that.hasNext);
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
            List<LikedDiaryThumbnail> data, int nextCursor, bool hasNext)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnailData() when $default != null:
        return $default(_that.data, _that.nextCursor, _that.hasNext);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryThumbnailData implements LikedDiaryThumbnailData {
  const _LikedDiaryThumbnailData(
      {required final List<LikedDiaryThumbnail> data,
      required this.nextCursor,
      required this.hasNext})
      : _data = data;
  factory _LikedDiaryThumbnailData.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryThumbnailDataFromJson(json);

  final List<LikedDiaryThumbnail> _data;
  @override
  List<LikedDiaryThumbnail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int nextCursor;
  @override
  final bool hasNext;

  /// Create a copy of LikedDiaryThumbnailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryThumbnailDataCopyWith<_LikedDiaryThumbnailData> get copyWith =>
      __$LikedDiaryThumbnailDataCopyWithImpl<_LikedDiaryThumbnailData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryThumbnailDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryThumbnailData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), nextCursor, hasNext);

  @override
  String toString() {
    return 'LikedDiaryThumbnailData(data: $data, nextCursor: $nextCursor, hasNext: $hasNext)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryThumbnailDataCopyWith<$Res>
    implements $LikedDiaryThumbnailDataCopyWith<$Res> {
  factory _$LikedDiaryThumbnailDataCopyWith(_LikedDiaryThumbnailData value,
          $Res Function(_LikedDiaryThumbnailData) _then) =
      __$LikedDiaryThumbnailDataCopyWithImpl;
  @override
  @useResult
  $Res call({List<LikedDiaryThumbnail> data, int nextCursor, bool hasNext});
}

/// @nodoc
class __$LikedDiaryThumbnailDataCopyWithImpl<$Res>
    implements _$LikedDiaryThumbnailDataCopyWith<$Res> {
  __$LikedDiaryThumbnailDataCopyWithImpl(this._self, this._then);

  final _LikedDiaryThumbnailData _self;
  final $Res Function(_LikedDiaryThumbnailData) _then;

  /// Create a copy of LikedDiaryThumbnailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? nextCursor = null,
    Object? hasNext = null,
  }) {
    return _then(_LikedDiaryThumbnailData(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LikedDiaryThumbnail>,
      nextCursor: null == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$LikedDiaryThumbnail {
  int get diaryLikeId;
  int get diaryId;
  DiaryImage get firstImage;

  /// Create a copy of LikedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikedDiaryThumbnailCopyWith<LikedDiaryThumbnail> get copyWith =>
      _$LikedDiaryThumbnailCopyWithImpl<LikedDiaryThumbnail>(
          this as LikedDiaryThumbnail, _$identity);

  /// Serializes this LikedDiaryThumbnail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedDiaryThumbnail &&
            (identical(other.diaryLikeId, diaryLikeId) ||
                other.diaryLikeId == diaryLikeId) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diaryLikeId, diaryId, firstImage);

  @override
  String toString() {
    return 'LikedDiaryThumbnail(diaryLikeId: $diaryLikeId, diaryId: $diaryId, firstImage: $firstImage)';
  }
}

/// @nodoc
abstract mixin class $LikedDiaryThumbnailCopyWith<$Res> {
  factory $LikedDiaryThumbnailCopyWith(
          LikedDiaryThumbnail value, $Res Function(LikedDiaryThumbnail) _then) =
      _$LikedDiaryThumbnailCopyWithImpl;
  @useResult
  $Res call({int diaryLikeId, int diaryId, DiaryImage firstImage});

  $DiaryImageCopyWith<$Res> get firstImage;
}

/// @nodoc
class _$LikedDiaryThumbnailCopyWithImpl<$Res>
    implements $LikedDiaryThumbnailCopyWith<$Res> {
  _$LikedDiaryThumbnailCopyWithImpl(this._self, this._then);

  final LikedDiaryThumbnail _self;
  final $Res Function(LikedDiaryThumbnail) _then;

  /// Create a copy of LikedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryLikeId = null,
    Object? diaryId = null,
    Object? firstImage = null,
  }) {
    return _then(_self.copyWith(
      diaryLikeId: null == diaryLikeId
          ? _self.diaryLikeId
          : diaryLikeId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: null == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as DiaryImage,
    ));
  }

  /// Create a copy of LikedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiaryImageCopyWith<$Res> get firstImage {
    return $DiaryImageCopyWith<$Res>(_self.firstImage, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LikedDiaryThumbnail].
extension LikedDiaryThumbnailPatterns on LikedDiaryThumbnail {
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
    TResult Function(_LikedDiaryThumbnail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnail() when $default != null:
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
    TResult Function(_LikedDiaryThumbnail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnail():
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
    TResult? Function(_LikedDiaryThumbnail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnail() when $default != null:
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
    TResult Function(int diaryLikeId, int diaryId, DiaryImage firstImage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnail() when $default != null:
        return $default(_that.diaryLikeId, _that.diaryId, _that.firstImage);
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
    TResult Function(int diaryLikeId, int diaryId, DiaryImage firstImage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnail():
        return $default(_that.diaryLikeId, _that.diaryId, _that.firstImage);
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
    TResult? Function(int diaryLikeId, int diaryId, DiaryImage firstImage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikedDiaryThumbnail() when $default != null:
        return $default(_that.diaryLikeId, _that.diaryId, _that.firstImage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikedDiaryThumbnail implements LikedDiaryThumbnail {
  const _LikedDiaryThumbnail(
      {required this.diaryLikeId,
      required this.diaryId,
      required this.firstImage});
  factory _LikedDiaryThumbnail.fromJson(Map<String, dynamic> json) =>
      _$LikedDiaryThumbnailFromJson(json);

  @override
  final int diaryLikeId;
  @override
  final int diaryId;
  @override
  final DiaryImage firstImage;

  /// Create a copy of LikedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikedDiaryThumbnailCopyWith<_LikedDiaryThumbnail> get copyWith =>
      __$LikedDiaryThumbnailCopyWithImpl<_LikedDiaryThumbnail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikedDiaryThumbnailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedDiaryThumbnail &&
            (identical(other.diaryLikeId, diaryLikeId) ||
                other.diaryLikeId == diaryLikeId) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diaryLikeId, diaryId, firstImage);

  @override
  String toString() {
    return 'LikedDiaryThumbnail(diaryLikeId: $diaryLikeId, diaryId: $diaryId, firstImage: $firstImage)';
  }
}

/// @nodoc
abstract mixin class _$LikedDiaryThumbnailCopyWith<$Res>
    implements $LikedDiaryThumbnailCopyWith<$Res> {
  factory _$LikedDiaryThumbnailCopyWith(_LikedDiaryThumbnail value,
          $Res Function(_LikedDiaryThumbnail) _then) =
      __$LikedDiaryThumbnailCopyWithImpl;
  @override
  @useResult
  $Res call({int diaryLikeId, int diaryId, DiaryImage firstImage});

  @override
  $DiaryImageCopyWith<$Res> get firstImage;
}

/// @nodoc
class __$LikedDiaryThumbnailCopyWithImpl<$Res>
    implements _$LikedDiaryThumbnailCopyWith<$Res> {
  __$LikedDiaryThumbnailCopyWithImpl(this._self, this._then);

  final _LikedDiaryThumbnail _self;
  final $Res Function(_LikedDiaryThumbnail) _then;

  /// Create a copy of LikedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diaryLikeId = null,
    Object? diaryId = null,
    Object? firstImage = null,
  }) {
    return _then(_LikedDiaryThumbnail(
      diaryLikeId: null == diaryLikeId
          ? _self.diaryLikeId
          : diaryLikeId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstImage: null == firstImage
          ? _self.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as DiaryImage,
    ));
  }

  /// Create a copy of LikedDiaryThumbnail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiaryImageCopyWith<$Res> get firstImage {
    return $DiaryImageCopyWith<$Res>(_self.firstImage, (value) {
      return _then(_self.copyWith(firstImage: value));
    });
  }
}

/// @nodoc
mixin _$DiaryImage {
  String get imageUrl;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryImageCopyWith<DiaryImage> get copyWith =>
      _$DiaryImageCopyWithImpl<DiaryImage>(this as DiaryImage, _$identity);

  /// Serializes this DiaryImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @override
  String toString() {
    return 'DiaryImage(imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $DiaryImageCopyWith<$Res> {
  factory $DiaryImageCopyWith(
          DiaryImage value, $Res Function(DiaryImage) _then) =
      _$DiaryImageCopyWithImpl;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class _$DiaryImageCopyWithImpl<$Res> implements $DiaryImageCopyWith<$Res> {
  _$DiaryImageCopyWithImpl(this._self, this._then);

  final DiaryImage _self;
  final $Res Function(DiaryImage) _then;

  /// Create a copy of DiaryImage
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

/// Adds pattern-matching-related methods to [DiaryImage].
extension DiaryImagePatterns on DiaryImage {
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
    TResult Function(_DiaryImage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryImage() when $default != null:
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
    TResult Function(_DiaryImage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImage():
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
    TResult? Function(_DiaryImage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImage() when $default != null:
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
      case _DiaryImage() when $default != null:
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
      case _DiaryImage():
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
      case _DiaryImage() when $default != null:
        return $default(_that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryImage implements DiaryImage {
  const _DiaryImage({required this.imageUrl});
  factory _DiaryImage.fromJson(Map<String, dynamic> json) =>
      _$DiaryImageFromJson(json);

  @override
  final String imageUrl;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryImageCopyWith<_DiaryImage> get copyWith =>
      __$DiaryImageCopyWithImpl<_DiaryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @override
  String toString() {
    return 'DiaryImage(imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$DiaryImageCopyWith<$Res>
    implements $DiaryImageCopyWith<$Res> {
  factory _$DiaryImageCopyWith(
          _DiaryImage value, $Res Function(_DiaryImage) _then) =
      __$DiaryImageCopyWithImpl;
  @override
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$DiaryImageCopyWithImpl<$Res> implements _$DiaryImageCopyWith<$Res> {
  __$DiaryImageCopyWithImpl(this._self, this._then);

  final _DiaryImage _self;
  final $Res Function(_DiaryImage) _then;

  /// Create a copy of DiaryImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_DiaryImage(
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
