// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSearchHistoryResponse {
  int get id;
  String get searchedAt;
  int get searchedMemberId;
  String get searchedMemberNickName;
  String get searchedMemberProfileImage;

  /// Create a copy of UserSearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSearchHistoryResponseCopyWith<UserSearchHistoryResponse> get copyWith =>
      _$UserSearchHistoryResponseCopyWithImpl<UserSearchHistoryResponse>(
          this as UserSearchHistoryResponse, _$identity);

  /// Serializes this UserSearchHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSearchHistoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.searchedAt, searchedAt) ||
                other.searchedAt == searchedAt) &&
            (identical(other.searchedMemberId, searchedMemberId) ||
                other.searchedMemberId == searchedMemberId) &&
            (identical(other.searchedMemberNickName, searchedMemberNickName) ||
                other.searchedMemberNickName == searchedMemberNickName) &&
            (identical(other.searchedMemberProfileImage,
                    searchedMemberProfileImage) ||
                other.searchedMemberProfileImage ==
                    searchedMemberProfileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, searchedAt, searchedMemberId,
      searchedMemberNickName, searchedMemberProfileImage);

  @override
  String toString() {
    return 'UserSearchHistoryResponse(id: $id, searchedAt: $searchedAt, searchedMemberId: $searchedMemberId, searchedMemberNickName: $searchedMemberNickName, searchedMemberProfileImage: $searchedMemberProfileImage)';
  }
}

/// @nodoc
abstract mixin class $UserSearchHistoryResponseCopyWith<$Res> {
  factory $UserSearchHistoryResponseCopyWith(UserSearchHistoryResponse value,
          $Res Function(UserSearchHistoryResponse) _then) =
      _$UserSearchHistoryResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String searchedAt,
      int searchedMemberId,
      String searchedMemberNickName,
      String searchedMemberProfileImage});
}

/// @nodoc
class _$UserSearchHistoryResponseCopyWithImpl<$Res>
    implements $UserSearchHistoryResponseCopyWith<$Res> {
  _$UserSearchHistoryResponseCopyWithImpl(this._self, this._then);

  final UserSearchHistoryResponse _self;
  final $Res Function(UserSearchHistoryResponse) _then;

  /// Create a copy of UserSearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? searchedAt = null,
    Object? searchedMemberId = null,
    Object? searchedMemberNickName = null,
    Object? searchedMemberProfileImage = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      searchedAt: null == searchedAt
          ? _self.searchedAt
          : searchedAt // ignore: cast_nullable_to_non_nullable
              as String,
      searchedMemberId: null == searchedMemberId
          ? _self.searchedMemberId
          : searchedMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      searchedMemberNickName: null == searchedMemberNickName
          ? _self.searchedMemberNickName
          : searchedMemberNickName // ignore: cast_nullable_to_non_nullable
              as String,
      searchedMemberProfileImage: null == searchedMemberProfileImage
          ? _self.searchedMemberProfileImage
          : searchedMemberProfileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserSearchHistoryResponse].
extension UserSearchHistoryResponsePatterns on UserSearchHistoryResponse {
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
    TResult Function(_UserSearchHistoryResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserSearchHistoryResponse() when $default != null:
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
    TResult Function(_UserSearchHistoryResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSearchHistoryResponse():
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
    TResult? Function(_UserSearchHistoryResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSearchHistoryResponse() when $default != null:
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
    TResult Function(int id, String searchedAt, int searchedMemberId,
            String searchedMemberNickName, String searchedMemberProfileImage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserSearchHistoryResponse() when $default != null:
        return $default(_that.id, _that.searchedAt, _that.searchedMemberId,
            _that.searchedMemberNickName, _that.searchedMemberProfileImage);
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
    TResult Function(int id, String searchedAt, int searchedMemberId,
            String searchedMemberNickName, String searchedMemberProfileImage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSearchHistoryResponse():
        return $default(_that.id, _that.searchedAt, _that.searchedMemberId,
            _that.searchedMemberNickName, _that.searchedMemberProfileImage);
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
    TResult? Function(int id, String searchedAt, int searchedMemberId,
            String searchedMemberNickName, String searchedMemberProfileImage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSearchHistoryResponse() when $default != null:
        return $default(_that.id, _that.searchedAt, _that.searchedMemberId,
            _that.searchedMemberNickName, _that.searchedMemberProfileImage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserSearchHistoryResponse implements UserSearchHistoryResponse {
  const _UserSearchHistoryResponse(
      {required this.id,
      required this.searchedAt,
      required this.searchedMemberId,
      required this.searchedMemberNickName,
      required this.searchedMemberProfileImage});
  factory _UserSearchHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSearchHistoryResponseFromJson(json);

  @override
  final int id;
  @override
  final String searchedAt;
  @override
  final int searchedMemberId;
  @override
  final String searchedMemberNickName;
  @override
  final String searchedMemberProfileImage;

  /// Create a copy of UserSearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserSearchHistoryResponseCopyWith<_UserSearchHistoryResponse>
      get copyWith =>
          __$UserSearchHistoryResponseCopyWithImpl<_UserSearchHistoryResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserSearchHistoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSearchHistoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.searchedAt, searchedAt) ||
                other.searchedAt == searchedAt) &&
            (identical(other.searchedMemberId, searchedMemberId) ||
                other.searchedMemberId == searchedMemberId) &&
            (identical(other.searchedMemberNickName, searchedMemberNickName) ||
                other.searchedMemberNickName == searchedMemberNickName) &&
            (identical(other.searchedMemberProfileImage,
                    searchedMemberProfileImage) ||
                other.searchedMemberProfileImage ==
                    searchedMemberProfileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, searchedAt, searchedMemberId,
      searchedMemberNickName, searchedMemberProfileImage);

  @override
  String toString() {
    return 'UserSearchHistoryResponse(id: $id, searchedAt: $searchedAt, searchedMemberId: $searchedMemberId, searchedMemberNickName: $searchedMemberNickName, searchedMemberProfileImage: $searchedMemberProfileImage)';
  }
}

/// @nodoc
abstract mixin class _$UserSearchHistoryResponseCopyWith<$Res>
    implements $UserSearchHistoryResponseCopyWith<$Res> {
  factory _$UserSearchHistoryResponseCopyWith(_UserSearchHistoryResponse value,
          $Res Function(_UserSearchHistoryResponse) _then) =
      __$UserSearchHistoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String searchedAt,
      int searchedMemberId,
      String searchedMemberNickName,
      String searchedMemberProfileImage});
}

/// @nodoc
class __$UserSearchHistoryResponseCopyWithImpl<$Res>
    implements _$UserSearchHistoryResponseCopyWith<$Res> {
  __$UserSearchHistoryResponseCopyWithImpl(this._self, this._then);

  final _UserSearchHistoryResponse _self;
  final $Res Function(_UserSearchHistoryResponse) _then;

  /// Create a copy of UserSearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? searchedAt = null,
    Object? searchedMemberId = null,
    Object? searchedMemberNickName = null,
    Object? searchedMemberProfileImage = null,
  }) {
    return _then(_UserSearchHistoryResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      searchedAt: null == searchedAt
          ? _self.searchedAt
          : searchedAt // ignore: cast_nullable_to_non_nullable
              as String,
      searchedMemberId: null == searchedMemberId
          ? _self.searchedMemberId
          : searchedMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      searchedMemberNickName: null == searchedMemberNickName
          ? _self.searchedMemberNickName
          : searchedMemberNickName // ignore: cast_nullable_to_non_nullable
              as String,
      searchedMemberProfileImage: null == searchedMemberProfileImage
          ? _self.searchedMemberProfileImage
          : searchedMemberProfileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
