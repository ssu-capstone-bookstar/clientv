// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoomResponse {
  int get id;
  String get name;
  ChatRoomCategory get category;
  int get participantCount;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatRoomResponseCopyWith<ChatRoomResponse> get copyWith =>
      _$ChatRoomResponseCopyWithImpl<ChatRoomResponse>(
          this as ChatRoomResponse, _$identity);

  /// Serializes this ChatRoomResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatRoomResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, category, participantCount);

  @override
  String toString() {
    return 'ChatRoomResponse(id: $id, name: $name, category: $category, participantCount: $participantCount)';
  }
}

/// @nodoc
abstract mixin class $ChatRoomResponseCopyWith<$Res> {
  factory $ChatRoomResponseCopyWith(
          ChatRoomResponse value, $Res Function(ChatRoomResponse) _then) =
      _$ChatRoomResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id, String name, ChatRoomCategory category, int participantCount});
}

/// @nodoc
class _$ChatRoomResponseCopyWithImpl<$Res>
    implements $ChatRoomResponseCopyWith<$Res> {
  _$ChatRoomResponseCopyWithImpl(this._self, this._then);

  final ChatRoomResponse _self;
  final $Res Function(ChatRoomResponse) _then;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? participantCount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as ChatRoomCategory,
      participantCount: null == participantCount
          ? _self.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatRoomResponse].
extension ChatRoomResponsePatterns on ChatRoomResponse {
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
    TResult Function(_ChatRoomResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatRoomResponse() when $default != null:
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
    TResult Function(_ChatRoomResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomResponse():
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
    TResult? Function(_ChatRoomResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomResponse() when $default != null:
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
    TResult Function(int id, String name, ChatRoomCategory category,
            int participantCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatRoomResponse() when $default != null:
        return $default(
            _that.id, _that.name, _that.category, _that.participantCount);
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
    TResult Function(int id, String name, ChatRoomCategory category,
            int participantCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomResponse():
        return $default(
            _that.id, _that.name, _that.category, _that.participantCount);
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
    TResult? Function(int id, String name, ChatRoomCategory category,
            int participantCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomResponse() when $default != null:
        return $default(
            _that.id, _that.name, _that.category, _that.participantCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatRoomResponse implements ChatRoomResponse {
  const _ChatRoomResponse(
      {required this.id,
      required this.name,
      required this.category,
      required this.participantCount});
  factory _ChatRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final ChatRoomCategory category;
  @override
  final int participantCount;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatRoomResponseCopyWith<_ChatRoomResponse> get copyWith =>
      __$ChatRoomResponseCopyWithImpl<_ChatRoomResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatRoomResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoomResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, category, participantCount);

  @override
  String toString() {
    return 'ChatRoomResponse(id: $id, name: $name, category: $category, participantCount: $participantCount)';
  }
}

/// @nodoc
abstract mixin class _$ChatRoomResponseCopyWith<$Res>
    implements $ChatRoomResponseCopyWith<$Res> {
  factory _$ChatRoomResponseCopyWith(
          _ChatRoomResponse value, $Res Function(_ChatRoomResponse) _then) =
      __$ChatRoomResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id, String name, ChatRoomCategory category, int participantCount});
}

/// @nodoc
class __$ChatRoomResponseCopyWithImpl<$Res>
    implements _$ChatRoomResponseCopyWith<$Res> {
  __$ChatRoomResponseCopyWithImpl(this._self, this._then);

  final _ChatRoomResponse _self;
  final $Res Function(_ChatRoomResponse) _then;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? participantCount = null,
  }) {
    return _then(_ChatRoomResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as ChatRoomCategory,
      participantCount: null == participantCount
          ? _self.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
