// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  String get messageId;
  MinimumMemberProfile get sender;
  String get content;
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
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, messageId, sender, content, createdAt);

  @override
  String toString() {
    return 'ChatMessageResponse(messageId: $messageId, sender: $sender, content: $content, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ChatMessageResponseCopyWith<$Res> {
  factory $ChatMessageResponseCopyWith(
          ChatMessageResponse value, $Res Function(ChatMessageResponse) _then) =
      _$ChatMessageResponseCopyWithImpl;
  @useResult
  $Res call(
      {String messageId,
      MinimumMemberProfile sender,
      String content,
      String createdAt});

  $MinimumMemberProfileCopyWith<$Res> get sender;
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
    Object? messageId = null,
    Object? sender = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MinimumMemberProfile,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumMemberProfileCopyWith<$Res> get sender {
    return $MinimumMemberProfileCopyWith<$Res>(_self.sender, (value) {
      return _then(_self.copyWith(sender: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatMessageResponse implements ChatMessageResponse {
  const _ChatMessageResponse(
      {this.messageId = '',
      required this.sender,
      this.content = '',
      this.createdAt = ''});
  factory _ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageResponseFromJson(json);

  @override
  @JsonKey()
  final String messageId;
  @override
  final MinimumMemberProfile sender;
  @override
  @JsonKey()
  final String content;
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
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, messageId, sender, content, createdAt);

  @override
  String toString() {
    return 'ChatMessageResponse(messageId: $messageId, sender: $sender, content: $content, createdAt: $createdAt)';
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
      {String messageId,
      MinimumMemberProfile sender,
      String content,
      String createdAt});

  @override
  $MinimumMemberProfileCopyWith<$Res> get sender;
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
    Object? messageId = null,
    Object? sender = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_ChatMessageResponse(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MinimumMemberProfile,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumMemberProfileCopyWith<$Res> get sender {
    return $MinimumMemberProfileCopyWith<$Res>(_self.sender, (value) {
      return _then(_self.copyWith(sender: value));
    });
  }
}

// dart format on
