// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryCommentResponse {
  int get commentId;
  String get content;
  MinimumMemberProfile get writer;
  DateTime get createdAt;
  List<DiaryReplyResponse> get replies;

  /// Create a copy of DiaryCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiaryCommentResponseCopyWith<DiaryCommentResponse> get copyWith =>
      _$DiaryCommentResponseCopyWithImpl<DiaryCommentResponse>(
          this as DiaryCommentResponse, _$identity);

  /// Serializes this DiaryCommentResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiaryCommentResponse &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.replies, replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, content, writer,
      createdAt, const DeepCollectionEquality().hash(replies));

  @override
  String toString() {
    return 'DiaryCommentResponse(commentId: $commentId, content: $content, writer: $writer, createdAt: $createdAt, replies: $replies)';
  }
}

/// @nodoc
abstract mixin class $DiaryCommentResponseCopyWith<$Res> {
  factory $DiaryCommentResponseCopyWith(DiaryCommentResponse value,
          $Res Function(DiaryCommentResponse) _then) =
      _$DiaryCommentResponseCopyWithImpl;
  @useResult
  $Res call(
      {int commentId,
      String content,
      MinimumMemberProfile writer,
      DateTime createdAt,
      List<DiaryReplyResponse> replies});

  $MinimumMemberProfileCopyWith<$Res> get writer;
}

/// @nodoc
class _$DiaryCommentResponseCopyWithImpl<$Res>
    implements $DiaryCommentResponseCopyWith<$Res> {
  _$DiaryCommentResponseCopyWithImpl(this._self, this._then);

  final DiaryCommentResponse _self;
  final $Res Function(DiaryCommentResponse) _then;

  /// Create a copy of DiaryCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? content = null,
    Object? writer = null,
    Object? createdAt = null,
    Object? replies = null,
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
      replies: null == replies
          ? _self.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<DiaryReplyResponse>,
    ));
  }

  /// Create a copy of DiaryCommentResponse
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
class _DiaryCommentResponse implements DiaryCommentResponse {
  const _DiaryCommentResponse(
      {this.commentId = 0,
      this.content = '',
      required this.writer,
      required this.createdAt,
      final List<DiaryReplyResponse> replies = const []})
      : _replies = replies;
  factory _DiaryCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$DiaryCommentResponseFromJson(json);

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
  final List<DiaryReplyResponse> _replies;
  @override
  @JsonKey()
  List<DiaryReplyResponse> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  /// Create a copy of DiaryCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiaryCommentResponseCopyWith<_DiaryCommentResponse> get copyWith =>
      __$DiaryCommentResponseCopyWithImpl<_DiaryCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiaryCommentResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiaryCommentResponse &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, content, writer,
      createdAt, const DeepCollectionEquality().hash(_replies));

  @override
  String toString() {
    return 'DiaryCommentResponse(commentId: $commentId, content: $content, writer: $writer, createdAt: $createdAt, replies: $replies)';
  }
}

/// @nodoc
abstract mixin class _$DiaryCommentResponseCopyWith<$Res>
    implements $DiaryCommentResponseCopyWith<$Res> {
  factory _$DiaryCommentResponseCopyWith(_DiaryCommentResponse value,
          $Res Function(_DiaryCommentResponse) _then) =
      __$DiaryCommentResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int commentId,
      String content,
      MinimumMemberProfile writer,
      DateTime createdAt,
      List<DiaryReplyResponse> replies});

  @override
  $MinimumMemberProfileCopyWith<$Res> get writer;
}

/// @nodoc
class __$DiaryCommentResponseCopyWithImpl<$Res>
    implements _$DiaryCommentResponseCopyWith<$Res> {
  __$DiaryCommentResponseCopyWithImpl(this._self, this._then);

  final _DiaryCommentResponse _self;
  final $Res Function(_DiaryCommentResponse) _then;

  /// Create a copy of DiaryCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? commentId = null,
    Object? content = null,
    Object? writer = null,
    Object? createdAt = null,
    Object? replies = null,
  }) {
    return _then(_DiaryCommentResponse(
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
      replies: null == replies
          ? _self._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<DiaryReplyResponse>,
    ));
  }

  /// Create a copy of DiaryCommentResponse
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
