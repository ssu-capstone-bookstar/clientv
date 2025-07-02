// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_reply_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryReplyResponse {
  int get commentId;
  String get content;
  MinimumMemberProfile get writer;
  DateTime get createdAt;

  /// Create a copy of DiaryReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryReplyResponseCopyWith<DiaryReplyResponse> get copyWith =>
      _$DiaryReplyResponseCopyWithImpl<DiaryReplyResponse>(
          this as DiaryReplyResponse, _$identity);

  /// Serializes this DiaryReplyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryReplyResponse &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, commentId, content, writer, createdAt);

  @override
  String toString() {
    return 'DiaryReplyResponse(commentId: $commentId, content: $content, writer: $writer, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $DiaryReplyResponseCopyWith<$Res> {
  factory $DiaryReplyResponseCopyWith(
          DiaryReplyResponse value, $Res Function(DiaryReplyResponse) _then) =
      _$DiaryReplyResponseCopyWithImpl;
  @useResult
  $Res call(
      {int commentId,
      String content,
      MinimumMemberProfile writer,
      DateTime createdAt});

  $MinimumMemberProfileCopyWith<$Res> get writer;
}

/// @nodoc
class _$DiaryReplyResponseCopyWithImpl<$Res>
    implements $DiaryReplyResponseCopyWith<$Res> {
  _$DiaryReplyResponseCopyWithImpl(this._self, this._then);

  final DiaryReplyResponse _self;
  final $Res Function(DiaryReplyResponse) _then;

  /// Create a copy of DiaryReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? content = null,
    Object? writer = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      commentId: null == commentId
          ? _self.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      writer: null == writer
          ? _self.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as MinimumMemberProfile,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of DiaryReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumMemberProfileCopyWith<$Res> get writer {
    return $MinimumMemberProfileCopyWith<$Res>(_self.writer, (value) {
      return _then(_self.copyWith(writer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DiaryReplyResponse implements DiaryReplyResponse {
  const _DiaryReplyResponse(
      {this.commentId = 0,
      this.content = '',
      required this.writer,
      required this.createdAt});
  factory _DiaryReplyResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryReplyResponseFromJson(json);

  @override
  @JsonKey()
  final int commentId;
  @override
  @JsonKey()
  final String content;
  @override
  final MinimumMemberProfile writer;
  @override
  final DateTime createdAt;

  /// Create a copy of DiaryReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryReplyResponseCopyWith<_DiaryReplyResponse> get copyWith =>
      __$DiaryReplyResponseCopyWithImpl<_DiaryReplyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryReplyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryReplyResponse &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, commentId, content, writer, createdAt);

  @override
  String toString() {
    return 'DiaryReplyResponse(commentId: $commentId, content: $content, writer: $writer, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$DiaryReplyResponseCopyWith<$Res>
    implements $DiaryReplyResponseCopyWith<$Res> {
  factory _$DiaryReplyResponseCopyWith(
          _DiaryReplyResponse value, $Res Function(_DiaryReplyResponse) _then) =
      __$DiaryReplyResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int commentId,
      String content,
      MinimumMemberProfile writer,
      DateTime createdAt});

  @override
  $MinimumMemberProfileCopyWith<$Res> get writer;
}

/// @nodoc
class __$DiaryReplyResponseCopyWithImpl<$Res>
    implements _$DiaryReplyResponseCopyWith<$Res> {
  __$DiaryReplyResponseCopyWithImpl(this._self, this._then);

  final _DiaryReplyResponse _self;
  final $Res Function(_DiaryReplyResponse) _then;

  /// Create a copy of DiaryReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? commentId = null,
    Object? content = null,
    Object? writer = null,
    Object? createdAt = null,
  }) {
    return _then(_DiaryReplyResponse(
      commentId: null == commentId
          ? _self.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      writer: null == writer
          ? _self.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as MinimumMemberProfile,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of DiaryReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumMemberProfileCopyWith<$Res> get writer {
    return $MinimumMemberProfileCopyWith<$Res>(_self.writer, (value) {
      return _then(_self.copyWith(writer: value));
    });
  }
}

// dart format on
