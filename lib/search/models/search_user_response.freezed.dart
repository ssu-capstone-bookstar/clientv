// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchUserResponse {
  int get memberId;
  String get nickName;
  String get profileImg;

  /// Create a copy of SearchUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchUserResponseCopyWith<SearchUserResponse> get copyWith =>
      _$SearchUserResponseCopyWithImpl<SearchUserResponse>(
          this as SearchUserResponse, _$identity);

  /// Serializes this SearchUserResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchUserResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, nickName, profileImg);

  @override
  String toString() {
    return 'SearchUserResponse(memberId: $memberId, nickName: $nickName, profileImg: $profileImg)';
  }
}

/// @nodoc
abstract mixin class $SearchUserResponseCopyWith<$Res> {
  factory $SearchUserResponseCopyWith(
          SearchUserResponse value, $Res Function(SearchUserResponse) _then) =
      _$SearchUserResponseCopyWithImpl;
  @useResult
  $Res call({int memberId, String nickName, String profileImg});
}

/// @nodoc
class _$SearchUserResponseCopyWithImpl<$Res>
    implements $SearchUserResponseCopyWith<$Res> {
  _$SearchUserResponseCopyWithImpl(this._self, this._then);

  final SearchUserResponse _self;
  final $Res Function(SearchUserResponse) _then;

  /// Create a copy of SearchUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImg = null,
  }) {
    return _then(_self.copyWith(
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: null == profileImg
          ? _self.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SearchUserResponse implements SearchUserResponse {
  const _SearchUserResponse(
      {this.memberId = 0, this.nickName = '', this.profileImg = ''});
  factory _SearchUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchUserResponseFromJson(json);

  @override
  @JsonKey()
  final int memberId;
  @override
  @JsonKey()
  final String nickName;
  @override
  @JsonKey()
  final String profileImg;

  /// Create a copy of SearchUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchUserResponseCopyWith<_SearchUserResponse> get copyWith =>
      __$SearchUserResponseCopyWithImpl<_SearchUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchUserResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchUserResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, nickName, profileImg);

  @override
  String toString() {
    return 'SearchUserResponse(memberId: $memberId, nickName: $nickName, profileImg: $profileImg)';
  }
}

/// @nodoc
abstract mixin class _$SearchUserResponseCopyWith<$Res>
    implements $SearchUserResponseCopyWith<$Res> {
  factory _$SearchUserResponseCopyWith(
          _SearchUserResponse value, $Res Function(_SearchUserResponse) _then) =
      __$SearchUserResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int memberId, String nickName, String profileImg});
}

/// @nodoc
class __$SearchUserResponseCopyWithImpl<$Res>
    implements _$SearchUserResponseCopyWith<$Res> {
  __$SearchUserResponseCopyWithImpl(this._self, this._then);

  final _SearchUserResponse _self;
  final $Res Function(_SearchUserResponse) _then;

  /// Create a copy of SearchUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImg = null,
  }) {
    return _then(_SearchUserResponse(
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: null == profileImg
          ? _self.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
