// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_challenge_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingChallengeRequest {
  int get bookId;
  int get totalPages;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadingChallengeRequestCopyWith<ReadingChallengeRequest> get copyWith =>
      _$ReadingChallengeRequestCopyWithImpl<ReadingChallengeRequest>(
          this as ReadingChallengeRequest, _$identity);

  /// Serializes this ReadingChallengeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadingChallengeRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, totalPages);

  @override
  String toString() {
    return 'ReadingChallengeRequest(bookId: $bookId, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class $ReadingChallengeRequestCopyWith<$Res> {
  factory $ReadingChallengeRequestCopyWith(ReadingChallengeRequest value,
          $Res Function(ReadingChallengeRequest) _then) =
      _$ReadingChallengeRequestCopyWithImpl;
  @useResult
  $Res call({int bookId, int totalPages});
}

/// @nodoc
class _$ReadingChallengeRequestCopyWithImpl<$Res>
    implements $ReadingChallengeRequestCopyWith<$Res> {
  _$ReadingChallengeRequestCopyWithImpl(this._self, this._then);

  final ReadingChallengeRequest _self;
  final $Res Function(ReadingChallengeRequest) _then;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? totalPages = null,
  }) {
    return _then(_self.copyWith(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReadingChallengeRequest implements ReadingChallengeRequest {
  const _ReadingChallengeRequest(
      {required this.bookId, required this.totalPages});
  factory _ReadingChallengeRequest.fromJson(Map<String, dynamic> json) =>
      _$ReadingChallengeRequestFromJson(json);

  @override
  final int bookId;
  @override
  final int totalPages;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadingChallengeRequestCopyWith<_ReadingChallengeRequest> get copyWith =>
      __$ReadingChallengeRequestCopyWithImpl<_ReadingChallengeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReadingChallengeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadingChallengeRequest &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, totalPages);

  @override
  String toString() {
    return 'ReadingChallengeRequest(bookId: $bookId, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class _$ReadingChallengeRequestCopyWith<$Res>
    implements $ReadingChallengeRequestCopyWith<$Res> {
  factory _$ReadingChallengeRequestCopyWith(_ReadingChallengeRequest value,
          $Res Function(_ReadingChallengeRequest) _then) =
      __$ReadingChallengeRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int bookId, int totalPages});
}

/// @nodoc
class __$ReadingChallengeRequestCopyWithImpl<$Res>
    implements _$ReadingChallengeRequestCopyWith<$Res> {
  __$ReadingChallengeRequestCopyWithImpl(this._self, this._then);

  final _ReadingChallengeRequest _self;
  final $Res Function(_ReadingChallengeRequest) _then;

  /// Create a copy of ReadingChallengeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = null,
    Object? totalPages = null,
  }) {
    return _then(_ReadingChallengeRequest(
      bookId: null == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
