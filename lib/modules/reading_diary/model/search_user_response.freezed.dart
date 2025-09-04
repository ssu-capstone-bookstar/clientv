// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [SearchUserResponse].
extension SearchUserResponsePatterns on SearchUserResponse {
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
    TResult Function(_SearchUserResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchUserResponse() when $default != null:
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
    TResult Function(_SearchUserResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserResponse():
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
    TResult? Function(_SearchUserResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserResponse() when $default != null:
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
    TResult Function(int memberId, String nickName, String profileImg)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchUserResponse() when $default != null:
        return $default(_that.memberId, _that.nickName, _that.profileImg);
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
    TResult Function(int memberId, String nickName, String profileImg) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserResponse():
        return $default(_that.memberId, _that.nickName, _that.profileImg);
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
    TResult? Function(int memberId, String nickName, String profileImg)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchUserResponse() when $default != null:
        return $default(_that.memberId, _that.nickName, _that.profileImg);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchUserResponse implements SearchUserResponse {
  const _SearchUserResponse(
      {required this.memberId,
      required this.nickName,
      required this.profileImg});
  factory _SearchUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchUserResponseFromJson(json);

  @override
  final int memberId;
  @override
  final String nickName;
  @override
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
