// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_recommend_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YoutubeRecommendResponse {
  String get videoId;
  String get title;
  String get channelName;
  String get thumbnailUrl;

  /// Create a copy of YoutubeRecommendResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $YoutubeRecommendResponseCopyWith<YoutubeRecommendResponse> get copyWith =>
      _$YoutubeRecommendResponseCopyWithImpl<YoutubeRecommendResponse>(
          this as YoutubeRecommendResponse, _$identity);

  /// Serializes this YoutubeRecommendResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is YoutubeRecommendResponse &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, videoId, title, channelName, thumbnailUrl);

  @override
  String toString() {
    return 'YoutubeRecommendResponse(videoId: $videoId, title: $title, channelName: $channelName, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class $YoutubeRecommendResponseCopyWith<$Res> {
  factory $YoutubeRecommendResponseCopyWith(YoutubeRecommendResponse value,
          $Res Function(YoutubeRecommendResponse) _then) =
      _$YoutubeRecommendResponseCopyWithImpl;
  @useResult
  $Res call(
      {String videoId, String title, String channelName, String thumbnailUrl});
}

/// @nodoc
class _$YoutubeRecommendResponseCopyWithImpl<$Res>
    implements $YoutubeRecommendResponseCopyWith<$Res> {
  _$YoutubeRecommendResponseCopyWithImpl(this._self, this._then);

  final YoutubeRecommendResponse _self;
  final $Res Function(YoutubeRecommendResponse) _then;

  /// Create a copy of YoutubeRecommendResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? title = null,
    Object? channelName = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_self.copyWith(
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _self.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [YoutubeRecommendResponse].
extension YoutubeRecommendResponsePatterns on YoutubeRecommendResponse {
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
    TResult Function(_YoutubeRecommendResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _YoutubeRecommendResponse() when $default != null:
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
    TResult Function(_YoutubeRecommendResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeRecommendResponse():
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
    TResult? Function(_YoutubeRecommendResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeRecommendResponse() when $default != null:
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
    TResult Function(String videoId, String title, String channelName,
            String thumbnailUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _YoutubeRecommendResponse() when $default != null:
        return $default(
            _that.videoId, _that.title, _that.channelName, _that.thumbnailUrl);
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
    TResult Function(String videoId, String title, String channelName,
            String thumbnailUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeRecommendResponse():
        return $default(
            _that.videoId, _that.title, _that.channelName, _that.thumbnailUrl);
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
    TResult? Function(String videoId, String title, String channelName,
            String thumbnailUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeRecommendResponse() when $default != null:
        return $default(
            _that.videoId, _that.title, _that.channelName, _that.thumbnailUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _YoutubeRecommendResponse implements YoutubeRecommendResponse {
  const _YoutubeRecommendResponse(
      {this.videoId = '',
      this.title = '',
      this.channelName = '',
      this.thumbnailUrl = ''});
  factory _YoutubeRecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$YoutubeRecommendResponseFromJson(json);

  @override
  @JsonKey()
  final String videoId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String channelName;
  @override
  @JsonKey()
  final String thumbnailUrl;

  /// Create a copy of YoutubeRecommendResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$YoutubeRecommendResponseCopyWith<_YoutubeRecommendResponse> get copyWith =>
      __$YoutubeRecommendResponseCopyWithImpl<_YoutubeRecommendResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$YoutubeRecommendResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YoutubeRecommendResponse &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, videoId, title, channelName, thumbnailUrl);

  @override
  String toString() {
    return 'YoutubeRecommendResponse(videoId: $videoId, title: $title, channelName: $channelName, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class _$YoutubeRecommendResponseCopyWith<$Res>
    implements $YoutubeRecommendResponseCopyWith<$Res> {
  factory _$YoutubeRecommendResponseCopyWith(_YoutubeRecommendResponse value,
          $Res Function(_YoutubeRecommendResponse) _then) =
      __$YoutubeRecommendResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String videoId, String title, String channelName, String thumbnailUrl});
}

/// @nodoc
class __$YoutubeRecommendResponseCopyWithImpl<$Res>
    implements _$YoutubeRecommendResponseCopyWith<$Res> {
  __$YoutubeRecommendResponseCopyWithImpl(this._self, this._then);

  final _YoutubeRecommendResponse _self;
  final $Res Function(_YoutubeRecommendResponse) _then;

  /// Create a copy of YoutubeRecommendResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videoId = null,
    Object? title = null,
    Object? channelName = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_YoutubeRecommendResponse(
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _self.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
