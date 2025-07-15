// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageResponse {
  int get id;
  int get senderId;
  String get senderName;
  String get content;
  MessageType get messageType;
  String? get fileUrl;
  String get createdAt;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMessageResponseCopyWith<ChatMessageResponse> get copyWith =>
      _$ChatMessageResponseCopyWithImpl<ChatMessageResponse>(
          this as ChatMessageResponse, _$identity);

  /// Serializes this ChatMessageResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatMessageResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, senderName,
      content, messageType, fileUrl, createdAt);

  @override
  String toString() {
    return 'ChatMessageResponse(id: $id, senderId: $senderId, senderName: $senderName, content: $content, messageType: $messageType, fileUrl: $fileUrl, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ChatMessageResponseCopyWith<$Res> {
  factory $ChatMessageResponseCopyWith(
          ChatMessageResponse value, $Res Function(ChatMessageResponse) _then) =
      _$ChatMessageResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int senderId,
      String senderName,
      String content,
      MessageType messageType,
      String? fileUrl,
      String createdAt});
}

/// @nodoc
class _$ChatMessageResponseCopyWithImpl<$Res>
    implements $ChatMessageResponseCopyWith<$Res> {
  _$ChatMessageResponseCopyWithImpl(this._self, this._then);

  final ChatMessageResponse _self;
  final $Res Function(ChatMessageResponse) _then;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? senderName = null,
    Object? content = null,
    Object? messageType = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      senderName: null == senderName
          ? _self.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      fileUrl: freezed == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatMessageResponse].
extension ChatMessageResponsePatterns on ChatMessageResponse {
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
    TResult Function(_ChatMessageResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMessageResponse() when $default != null:
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
    TResult Function(_ChatMessageResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageResponse():
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
    TResult? Function(_ChatMessageResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageResponse() when $default != null:
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
    TResult Function(int id, int senderId, String senderName, String content,
            MessageType messageType, String? fileUrl, String createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMessageResponse() when $default != null:
        return $default(_that.id, _that.senderId, _that.senderName,
            _that.content, _that.messageType, _that.fileUrl, _that.createdAt);
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
    TResult Function(int id, int senderId, String senderName, String content,
            MessageType messageType, String? fileUrl, String createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageResponse():
        return $default(_that.id, _that.senderId, _that.senderName,
            _that.content, _that.messageType, _that.fileUrl, _that.createdAt);
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
    TResult? Function(int id, int senderId, String senderName, String content,
            MessageType messageType, String? fileUrl, String createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageResponse() when $default != null:
        return $default(_that.id, _that.senderId, _that.senderName,
            _that.content, _that.messageType, _that.fileUrl, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatMessageResponse implements ChatMessageResponse {
  const _ChatMessageResponse(
      {this.id = 0,
      this.senderId = 0,
      this.senderName = '',
      this.content = '',
      this.messageType = MessageType.text,
      this.fileUrl,
      this.createdAt = ''});
  factory _ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageResponseFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int senderId;
  @override
  @JsonKey()
  final String senderName;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final MessageType messageType;
  @override
  final String? fileUrl;
  @override
  @JsonKey()
  final String createdAt;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatMessageResponseCopyWith<_ChatMessageResponse> get copyWith =>
      __$ChatMessageResponseCopyWithImpl<_ChatMessageResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMessageResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatMessageResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, senderName,
      content, messageType, fileUrl, createdAt);

  @override
  String toString() {
    return 'ChatMessageResponse(id: $id, senderId: $senderId, senderName: $senderName, content: $content, messageType: $messageType, fileUrl: $fileUrl, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ChatMessageResponseCopyWith<$Res>
    implements $ChatMessageResponseCopyWith<$Res> {
  factory _$ChatMessageResponseCopyWith(_ChatMessageResponse value,
          $Res Function(_ChatMessageResponse) _then) =
      __$ChatMessageResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int senderId,
      String senderName,
      String content,
      MessageType messageType,
      String? fileUrl,
      String createdAt});
}

/// @nodoc
class __$ChatMessageResponseCopyWithImpl<$Res>
    implements _$ChatMessageResponseCopyWith<$Res> {
  __$ChatMessageResponseCopyWithImpl(this._self, this._then);

  final _ChatMessageResponse _self;
  final $Res Function(_ChatMessageResponse) _then;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? senderName = null,
    Object? content = null,
    Object? messageType = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_ChatMessageResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      senderName: null == senderName
          ? _self.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      fileUrl: freezed == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
