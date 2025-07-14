// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatParticipantItemResponse {
  int get memberId;
  String get nickName;
  String get profileImageUrl;

  /// Create a copy of ChatParticipantItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatParticipantItemResponseCopyWith<ChatParticipantItemResponse>
      get copyWith => _$ChatParticipantItemResponseCopyWithImpl<
              ChatParticipantItemResponse>(
          this as ChatParticipantItemResponse, _$identity);

  /// Serializes this ChatParticipantItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatParticipantItemResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, memberId, nickName, profileImageUrl);

  @override
  String toString() {
    return 'ChatParticipantItemResponse(memberId: $memberId, nickName: $nickName, profileImageUrl: $profileImageUrl)';
  }
}

/// @nodoc
abstract mixin class $ChatParticipantItemResponseCopyWith<$Res> {
  factory $ChatParticipantItemResponseCopyWith(
          ChatParticipantItemResponse value,
          $Res Function(ChatParticipantItemResponse) _then) =
      _$ChatParticipantItemResponseCopyWithImpl;
  @useResult
  $Res call({int memberId, String nickName, String profileImageUrl});
}

/// @nodoc
class _$ChatParticipantItemResponseCopyWithImpl<$Res>
    implements $ChatParticipantItemResponseCopyWith<$Res> {
  _$ChatParticipantItemResponseCopyWithImpl(this._self, this._then);

  final ChatParticipantItemResponse _self;
  final $Res Function(ChatParticipantItemResponse) _then;

  /// Create a copy of ChatParticipantItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImageUrl = null,
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
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatParticipantItemResponse].
extension ChatParticipantItemResponsePatterns on ChatParticipantItemResponse {
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
    TResult Function(_ChatParticipantItemResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantItemResponse() when $default != null:
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
    TResult Function(_ChatParticipantItemResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantItemResponse():
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
    TResult? Function(_ChatParticipantItemResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantItemResponse() when $default != null:
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
    TResult Function(int memberId, String nickName, String profileImageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantItemResponse() when $default != null:
        return $default(_that.memberId, _that.nickName, _that.profileImageUrl);
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
    TResult Function(int memberId, String nickName, String profileImageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantItemResponse():
        return $default(_that.memberId, _that.nickName, _that.profileImageUrl);
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
    TResult? Function(int memberId, String nickName, String profileImageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantItemResponse() when $default != null:
        return $default(_that.memberId, _that.nickName, _that.profileImageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatParticipantItemResponse implements ChatParticipantItemResponse {
  const _ChatParticipantItemResponse(
      {this.memberId = 0, this.nickName = "", this.profileImageUrl = ""});
  factory _ChatParticipantItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantItemResponseFromJson(json);

  @override
  @JsonKey()
  final int memberId;
  @override
  @JsonKey()
  final String nickName;
  @override
  @JsonKey()
  final String profileImageUrl;

  /// Create a copy of ChatParticipantItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatParticipantItemResponseCopyWith<_ChatParticipantItemResponse>
      get copyWith => __$ChatParticipantItemResponseCopyWithImpl<
          _ChatParticipantItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatParticipantItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatParticipantItemResponse &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, memberId, nickName, profileImageUrl);

  @override
  String toString() {
    return 'ChatParticipantItemResponse(memberId: $memberId, nickName: $nickName, profileImageUrl: $profileImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$ChatParticipantItemResponseCopyWith<$Res>
    implements $ChatParticipantItemResponseCopyWith<$Res> {
  factory _$ChatParticipantItemResponseCopyWith(
          _ChatParticipantItemResponse value,
          $Res Function(_ChatParticipantItemResponse) _then) =
      __$ChatParticipantItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int memberId, String nickName, String profileImageUrl});
}

/// @nodoc
class __$ChatParticipantItemResponseCopyWithImpl<$Res>
    implements _$ChatParticipantItemResponseCopyWith<$Res> {
  __$ChatParticipantItemResponseCopyWithImpl(this._self, this._then);

  final _ChatParticipantItemResponse _self;
  final $Res Function(_ChatParticipantItemResponse) _then;

  /// Create a copy of ChatParticipantItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? memberId = null,
    Object? nickName = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_ChatParticipantItemResponse(
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
