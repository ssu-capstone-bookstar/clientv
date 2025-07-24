// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentRequest {
  int? get parentCommentId;
  String get content;

  /// Create a copy of CommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommentRequestCopyWith<CommentRequest> get copyWith =>
      _$CommentRequestCopyWithImpl<CommentRequest>(
          this as CommentRequest, _$identity);

  /// Serializes this CommentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommentRequest &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentCommentId, content);

  @override
  String toString() {
    return 'CommentRequest(parentCommentId: $parentCommentId, content: $content)';
  }
}

/// @nodoc
abstract mixin class $CommentRequestCopyWith<$Res> {
  factory $CommentRequestCopyWith(
          CommentRequest value, $Res Function(CommentRequest) _then) =
      _$CommentRequestCopyWithImpl;
  @useResult
  $Res call({int? parentCommentId, String content});
}

/// @nodoc
class _$CommentRequestCopyWithImpl<$Res>
    implements $CommentRequestCopyWith<$Res> {
  _$CommentRequestCopyWithImpl(this._self, this._then);

  final CommentRequest _self;
  final $Res Function(CommentRequest) _then;

  /// Create a copy of CommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCommentId = freezed,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      parentCommentId: freezed == parentCommentId
          ? _self.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CommentRequest].
extension CommentRequestPatterns on CommentRequest {
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
    TResult Function(_CommentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommentRequest() when $default != null:
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
    TResult Function(_CommentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentRequest():
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
    TResult? Function(_CommentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentRequest() when $default != null:
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
    TResult Function(int? parentCommentId, String content)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommentRequest() when $default != null:
        return $default(_that.parentCommentId, _that.content);
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
    TResult Function(int? parentCommentId, String content) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentRequest():
        return $default(_that.parentCommentId, _that.content);
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
    TResult? Function(int? parentCommentId, String content)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentRequest() when $default != null:
        return $default(_that.parentCommentId, _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CommentRequest implements CommentRequest {
  const _CommentRequest({this.parentCommentId, required this.content});
  factory _CommentRequest.fromJson(Map<String, dynamic> json) =>
      _$CommentRequestFromJson(json);

  @override
  final int? parentCommentId;
  @override
  final String content;

  /// Create a copy of CommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommentRequestCopyWith<_CommentRequest> get copyWith =>
      __$CommentRequestCopyWithImpl<_CommentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CommentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentRequest &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentCommentId, content);

  @override
  String toString() {
    return 'CommentRequest(parentCommentId: $parentCommentId, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$CommentRequestCopyWith<$Res>
    implements $CommentRequestCopyWith<$Res> {
  factory _$CommentRequestCopyWith(
          _CommentRequest value, $Res Function(_CommentRequest) _then) =
      __$CommentRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int? parentCommentId, String content});
}

/// @nodoc
class __$CommentRequestCopyWithImpl<$Res>
    implements _$CommentRequestCopyWith<$Res> {
  __$CommentRequestCopyWithImpl(this._self, this._then);

  final _CommentRequest _self;
  final $Res Function(_CommentRequest) _then;

  /// Create a copy of CommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? parentCommentId = freezed,
    Object? content = null,
  }) {
    return _then(_CommentRequest(
      parentCommentId: freezed == parentCommentId
          ? _self.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
