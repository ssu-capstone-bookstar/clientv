// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  int get diaryId;
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
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, content);

  @override
  String toString() {
    return 'CommentRequest(diaryId: $diaryId, content: $content)';
  }
}

/// @nodoc
abstract mixin class $CommentRequestCopyWith<$Res> {
  factory $CommentRequestCopyWith(
          CommentRequest value, $Res Function(CommentRequest) _then) =
      _$CommentRequestCopyWithImpl;
  @useResult
  $Res call({int diaryId, String content});
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
    Object? diaryId = null,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CommentRequest implements CommentRequest {
  const _CommentRequest({this.diaryId = 0, required this.content});
  factory _CommentRequest.fromJson(Map<String, dynamic> json) =>
      _$CommentRequestFromJson(json);

  @override
  @JsonKey()
  final int diaryId;
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
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, content);

  @override
  String toString() {
    return 'CommentRequest(diaryId: $diaryId, content: $content)';
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
  $Res call({int diaryId, String content});
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
    Object? diaryId = null,
    Object? content = null,
  }) {
    return _then(_CommentRequest(
      diaryId: null == diaryId
          ? _self.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
