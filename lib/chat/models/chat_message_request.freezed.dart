// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageRequest {
  String? get content;
  MessageType get messageType;
  String? get fileUrl;

  /// Create a copy of ChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMessageRequestCopyWith<ChatMessageRequest> get copyWith =>
      _$ChatMessageRequestCopyWithImpl<ChatMessageRequest>(
          this as ChatMessageRequest, _$identity);

  /// Serializes this ChatMessageRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatMessageRequest &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, messageType, fileUrl);

  @override
  String toString() {
    return 'ChatMessageRequest(content: $content, messageType: $messageType, fileUrl: $fileUrl)';
  }
}

/// @nodoc
abstract mixin class $ChatMessageRequestCopyWith<$Res> {
  factory $ChatMessageRequestCopyWith(
          ChatMessageRequest value, $Res Function(ChatMessageRequest) _then) =
      _$ChatMessageRequestCopyWithImpl;
  @useResult
  $Res call({String? content, MessageType messageType, String? fileUrl});
}

/// @nodoc
class _$ChatMessageRequestCopyWithImpl<$Res>
    implements $ChatMessageRequestCopyWith<$Res> {
  _$ChatMessageRequestCopyWithImpl(this._self, this._then);

  final ChatMessageRequest _self;
  final $Res Function(ChatMessageRequest) _then;

  /// Create a copy of ChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? messageType = null,
    Object? fileUrl = freezed,
  }) {
    return _then(_self.copyWith(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      fileUrl: freezed == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatMessageRequest].
extension ChatMessageRequestPatterns on ChatMessageRequest {
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
    TResult Function(_ChatMessageRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMessageRequest() when $default != null:
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
    TResult Function(_ChatMessageRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageRequest():
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
    TResult? Function(_ChatMessageRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageRequest() when $default != null:
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
    TResult Function(String? content, MessageType messageType, String? fileUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMessageRequest() when $default != null:
        return $default(_that.content, _that.messageType, _that.fileUrl);
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
    TResult Function(String? content, MessageType messageType, String? fileUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageRequest():
        return $default(_that.content, _that.messageType, _that.fileUrl);
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
            String? content, MessageType messageType, String? fileUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageRequest() when $default != null:
        return $default(_that.content, _that.messageType, _that.fileUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatMessageRequest implements ChatMessageRequest {
  const _ChatMessageRequest(
      {this.content, required this.messageType, this.fileUrl});
  factory _ChatMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageRequestFromJson(json);

  @override
  final String? content;
  @override
  final MessageType messageType;
  @override
  final String? fileUrl;

  /// Create a copy of ChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatMessageRequestCopyWith<_ChatMessageRequest> get copyWith =>
      __$ChatMessageRequestCopyWithImpl<_ChatMessageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMessageRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatMessageRequest &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, messageType, fileUrl);

  @override
  String toString() {
    return 'ChatMessageRequest(content: $content, messageType: $messageType, fileUrl: $fileUrl)';
  }
}

/// @nodoc
abstract mixin class _$ChatMessageRequestCopyWith<$Res>
    implements $ChatMessageRequestCopyWith<$Res> {
  factory _$ChatMessageRequestCopyWith(
          _ChatMessageRequest value, $Res Function(_ChatMessageRequest) _then) =
      __$ChatMessageRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? content, MessageType messageType, String? fileUrl});
}

/// @nodoc
class __$ChatMessageRequestCopyWithImpl<$Res>
    implements _$ChatMessageRequestCopyWith<$Res> {
  __$ChatMessageRequestCopyWithImpl(this._self, this._then);

  final _ChatMessageRequest _self;
  final $Res Function(_ChatMessageRequest) _then;

  /// Create a copy of ChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = freezed,
    Object? messageType = null,
    Object? fileUrl = freezed,
  }) {
    return _then(_ChatMessageRequest(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      fileUrl: freezed == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
