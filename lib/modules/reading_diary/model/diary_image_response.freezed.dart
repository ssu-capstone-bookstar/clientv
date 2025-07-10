// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryImageResponse {
  int get id;
  String get imageUrl;
  int get sequence;

  /// Create a copy of DiaryImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryImageResponseCopyWith<DiaryImageResponse> get copyWith =>
      _$DiaryImageResponseCopyWithImpl<DiaryImageResponse>(
          this as DiaryImageResponse, _$identity);

  /// Serializes this DiaryImageResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryImageResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, sequence);

  @override
  String toString() {
    return 'DiaryImageResponse(id: $id, imageUrl: $imageUrl, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class $DiaryImageResponseCopyWith<$Res> {
  factory $DiaryImageResponseCopyWith(
          DiaryImageResponse value, $Res Function(DiaryImageResponse) _then) =
      _$DiaryImageResponseCopyWithImpl;
  @useResult
  $Res call({int id, String imageUrl, int sequence});
}

/// @nodoc
class _$DiaryImageResponseCopyWithImpl<$Res>
    implements $DiaryImageResponseCopyWith<$Res> {
  _$DiaryImageResponseCopyWithImpl(this._self, this._then);

  final DiaryImageResponse _self;
  final $Res Function(DiaryImageResponse) _then;

  /// Create a copy of DiaryImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? sequence = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiaryImageResponse].
extension DiaryImageResponsePatterns on DiaryImageResponse {
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
    TResult Function(_DiaryImageResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryImageResponse() when $default != null:
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
    TResult Function(_DiaryImageResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImageResponse():
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
    TResult? Function(_DiaryImageResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImageResponse() when $default != null:
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
    TResult Function(int id, String imageUrl, int sequence)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiaryImageResponse() when $default != null:
        return $default(_that.id, _that.imageUrl, _that.sequence);
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
    TResult Function(int id, String imageUrl, int sequence) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImageResponse():
        return $default(_that.id, _that.imageUrl, _that.sequence);
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
    TResult? Function(int id, String imageUrl, int sequence)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiaryImageResponse() when $default != null:
        return $default(_that.id, _that.imageUrl, _that.sequence);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryImageResponse implements DiaryImageResponse {
  const _DiaryImageResponse(
      {this.id = 0, this.imageUrl = '', this.sequence = 0});
  factory _DiaryImageResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryImageResponseFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final int sequence;

  /// Create a copy of DiaryImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryImageResponseCopyWith<_DiaryImageResponse> get copyWith =>
      __$DiaryImageResponseCopyWithImpl<_DiaryImageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryImageResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryImageResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, sequence);

  @override
  String toString() {
    return 'DiaryImageResponse(id: $id, imageUrl: $imageUrl, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class _$DiaryImageResponseCopyWith<$Res>
    implements $DiaryImageResponseCopyWith<$Res> {
  factory _$DiaryImageResponseCopyWith(
          _DiaryImageResponse value, $Res Function(_DiaryImageResponse) _then) =
      __$DiaryImageResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String imageUrl, int sequence});
}

/// @nodoc
class __$DiaryImageResponseCopyWithImpl<$Res>
    implements _$DiaryImageResponseCopyWith<$Res> {
  __$DiaryImageResponseCopyWithImpl(this._self, this._then);

  final _DiaryImageResponse _self;
  final $Res Function(_DiaryImageResponse) _then;

  /// Create a copy of DiaryImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? sequence = null,
  }) {
    return _then(_DiaryImageResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
