// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatParticipantResponse {
  int get totalParticipantCount;
  List<ChatParticipantItemResponse> get participants;

  /// Create a copy of ChatParticipantResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatParticipantResponseCopyWith<ChatParticipantResponse> get copyWith =>
      _$ChatParticipantResponseCopyWithImpl<ChatParticipantResponse>(
          this as ChatParticipantResponse, _$identity);

  /// Serializes this ChatParticipantResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatParticipantResponse &&
            (identical(other.totalParticipantCount, totalParticipantCount) ||
                other.totalParticipantCount == totalParticipantCount) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalParticipantCount,
      const DeepCollectionEquality().hash(participants));

  @override
  String toString() {
    return 'ChatParticipantResponse(totalParticipantCount: $totalParticipantCount, participants: $participants)';
  }
}

/// @nodoc
abstract mixin class $ChatParticipantResponseCopyWith<$Res> {
  factory $ChatParticipantResponseCopyWith(ChatParticipantResponse value,
          $Res Function(ChatParticipantResponse) _then) =
      _$ChatParticipantResponseCopyWithImpl;
  @useResult
  $Res call(
      {int totalParticipantCount,
      List<ChatParticipantItemResponse> participants});
}

/// @nodoc
class _$ChatParticipantResponseCopyWithImpl<$Res>
    implements $ChatParticipantResponseCopyWith<$Res> {
  _$ChatParticipantResponseCopyWithImpl(this._self, this._then);

  final ChatParticipantResponse _self;
  final $Res Function(ChatParticipantResponse) _then;

  /// Create a copy of ChatParticipantResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalParticipantCount = null,
    Object? participants = null,
  }) {
    return _then(_self.copyWith(
      totalParticipantCount: null == totalParticipantCount
          ? _self.totalParticipantCount
          : totalParticipantCount // ignore: cast_nullable_to_non_nullable
              as int,
      participants: null == participants
          ? _self.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChatParticipantItemResponse>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatParticipantResponse].
extension ChatParticipantResponsePatterns on ChatParticipantResponse {
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
    TResult Function(_ChatParticipantResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantResponse() when $default != null:
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
    TResult Function(_ChatParticipantResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantResponse():
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
    TResult? Function(_ChatParticipantResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantResponse() when $default != null:
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
    TResult Function(int totalParticipantCount,
            List<ChatParticipantItemResponse> participants)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantResponse() when $default != null:
        return $default(_that.totalParticipantCount, _that.participants);
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
    TResult Function(int totalParticipantCount,
            List<ChatParticipantItemResponse> participants)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantResponse():
        return $default(_that.totalParticipantCount, _that.participants);
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
    TResult? Function(int totalParticipantCount,
            List<ChatParticipantItemResponse> participants)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatParticipantResponse() when $default != null:
        return $default(_that.totalParticipantCount, _that.participants);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatParticipantResponse implements ChatParticipantResponse {
  const _ChatParticipantResponse(
      {this.totalParticipantCount = 0,
      final List<ChatParticipantItemResponse> participants = const []})
      : _participants = participants;
  factory _ChatParticipantResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantResponseFromJson(json);

  @override
  @JsonKey()
  final int totalParticipantCount;
  final List<ChatParticipantItemResponse> _participants;
  @override
  @JsonKey()
  List<ChatParticipantItemResponse> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  /// Create a copy of ChatParticipantResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatParticipantResponseCopyWith<_ChatParticipantResponse> get copyWith =>
      __$ChatParticipantResponseCopyWithImpl<_ChatParticipantResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatParticipantResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatParticipantResponse &&
            (identical(other.totalParticipantCount, totalParticipantCount) ||
                other.totalParticipantCount == totalParticipantCount) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalParticipantCount,
      const DeepCollectionEquality().hash(_participants));

  @override
  String toString() {
    return 'ChatParticipantResponse(totalParticipantCount: $totalParticipantCount, participants: $participants)';
  }
}

/// @nodoc
abstract mixin class _$ChatParticipantResponseCopyWith<$Res>
    implements $ChatParticipantResponseCopyWith<$Res> {
  factory _$ChatParticipantResponseCopyWith(_ChatParticipantResponse value,
          $Res Function(_ChatParticipantResponse) _then) =
      __$ChatParticipantResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int totalParticipantCount,
      List<ChatParticipantItemResponse> participants});
}

/// @nodoc
class __$ChatParticipantResponseCopyWithImpl<$Res>
    implements _$ChatParticipantResponseCopyWith<$Res> {
  __$ChatParticipantResponseCopyWithImpl(this._self, this._then);

  final _ChatParticipantResponse _self;
  final $Res Function(_ChatParticipantResponse) _then;

  /// Create a copy of ChatParticipantResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalParticipantCount = null,
    Object? participants = null,
  }) {
    return _then(_ChatParticipantResponse(
      totalParticipantCount: null == totalParticipantCount
          ? _self.totalParticipantCount
          : totalParticipantCount // ignore: cast_nullable_to_non_nullable
              as int,
      participants: null == participants
          ? _self._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChatParticipantItemResponse>,
    ));
  }
}

// dart format on
