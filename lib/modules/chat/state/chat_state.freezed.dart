// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatState {
  List<ChatRoomResponse> get myChatRooms;
  CursorPageResponse<ChatMessageResponse> get chatHistory;
  ChatParticipantResponse get chatParticipants;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatStateCopyWith<ChatState> get copyWith =>
      _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatState &&
            const DeepCollectionEquality()
                .equals(other.myChatRooms, myChatRooms) &&
            (identical(other.chatHistory, chatHistory) ||
                other.chatHistory == chatHistory) &&
            (identical(other.chatParticipants, chatParticipants) ||
                other.chatParticipants == chatParticipants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myChatRooms),
      chatHistory,
      chatParticipants);

  @override
  String toString() {
    return 'ChatState(myChatRooms: $myChatRooms, chatHistory: $chatHistory, chatParticipants: $chatParticipants)';
  }
}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) =
      _$ChatStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ChatRoomResponse> myChatRooms,
      CursorPageResponse<ChatMessageResponse> chatHistory,
      ChatParticipantResponse chatParticipants});

  $CursorPageResponseCopyWith<ChatMessageResponse, $Res> get chatHistory;
  $ChatParticipantResponseCopyWith<$Res> get chatParticipants;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myChatRooms = null,
    Object? chatHistory = null,
    Object? chatParticipants = null,
  }) {
    return _then(_self.copyWith(
      myChatRooms: null == myChatRooms
          ? _self.myChatRooms
          : myChatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomResponse>,
      chatHistory: null == chatHistory
          ? _self.chatHistory
          : chatHistory // ignore: cast_nullable_to_non_nullable
              as CursorPageResponse<ChatMessageResponse>,
      chatParticipants: null == chatParticipants
          ? _self.chatParticipants
          : chatParticipants // ignore: cast_nullable_to_non_nullable
              as ChatParticipantResponse,
    ));
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CursorPageResponseCopyWith<ChatMessageResponse, $Res> get chatHistory {
    return $CursorPageResponseCopyWith<ChatMessageResponse, $Res>(
        _self.chatHistory, (value) {
      return _then(_self.copyWith(chatHistory: value));
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatParticipantResponseCopyWith<$Res> get chatParticipants {
    return $ChatParticipantResponseCopyWith<$Res>(_self.chatParticipants,
        (value) {
      return _then(_self.copyWith(chatParticipants: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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
    TResult Function(_ChatState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
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
    TResult Function(_ChatState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState():
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
    TResult? Function(_ChatState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
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
    TResult Function(
            List<ChatRoomResponse> myChatRooms,
            CursorPageResponse<ChatMessageResponse> chatHistory,
            ChatParticipantResponse chatParticipants)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
        return $default(
            _that.myChatRooms, _that.chatHistory, _that.chatParticipants);
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
    TResult Function(
            List<ChatRoomResponse> myChatRooms,
            CursorPageResponse<ChatMessageResponse> chatHistory,
            ChatParticipantResponse chatParticipants)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState():
        return $default(
            _that.myChatRooms, _that.chatHistory, _that.chatParticipants);
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
    TResult? Function(
            List<ChatRoomResponse> myChatRooms,
            CursorPageResponse<ChatMessageResponse> chatHistory,
            ChatParticipantResponse chatParticipants)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
        return $default(
            _that.myChatRooms, _that.chatHistory, _that.chatParticipants);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChatState implements ChatState {
  const _ChatState(
      {final List<ChatRoomResponse> myChatRooms = const [],
      this.chatHistory = const CursorPageResponse(data: [], hasNext: false),
      this.chatParticipants = const ChatParticipantResponse()})
      : _myChatRooms = myChatRooms;

  final List<ChatRoomResponse> _myChatRooms;
  @override
  @JsonKey()
  List<ChatRoomResponse> get myChatRooms {
    if (_myChatRooms is EqualUnmodifiableListView) return _myChatRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myChatRooms);
  }

  @override
  @JsonKey()
  final CursorPageResponse<ChatMessageResponse> chatHistory;
  @override
  @JsonKey()
  final ChatParticipantResponse chatParticipants;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatState &&
            const DeepCollectionEquality()
                .equals(other._myChatRooms, _myChatRooms) &&
            (identical(other.chatHistory, chatHistory) ||
                other.chatHistory == chatHistory) &&
            (identical(other.chatParticipants, chatParticipants) ||
                other.chatParticipants == chatParticipants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_myChatRooms),
      chatHistory,
      chatParticipants);

  @override
  String toString() {
    return 'ChatState(myChatRooms: $myChatRooms, chatHistory: $chatHistory, chatParticipants: $chatParticipants)';
  }
}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) _then) =
      __$ChatStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ChatRoomResponse> myChatRooms,
      CursorPageResponse<ChatMessageResponse> chatHistory,
      ChatParticipantResponse chatParticipants});

  @override
  $CursorPageResponseCopyWith<ChatMessageResponse, $Res> get chatHistory;
  @override
  $ChatParticipantResponseCopyWith<$Res> get chatParticipants;
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? myChatRooms = null,
    Object? chatHistory = null,
    Object? chatParticipants = null,
  }) {
    return _then(_ChatState(
      myChatRooms: null == myChatRooms
          ? _self._myChatRooms
          : myChatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomResponse>,
      chatHistory: null == chatHistory
          ? _self.chatHistory
          : chatHistory // ignore: cast_nullable_to_non_nullable
              as CursorPageResponse<ChatMessageResponse>,
      chatParticipants: null == chatParticipants
          ? _self.chatParticipants
          : chatParticipants // ignore: cast_nullable_to_non_nullable
              as ChatParticipantResponse,
    ));
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CursorPageResponseCopyWith<ChatMessageResponse, $Res> get chatHistory {
    return $CursorPageResponseCopyWith<ChatMessageResponse, $Res>(
        _self.chatHistory, (value) {
      return _then(_self.copyWith(chatHistory: value));
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatParticipantResponseCopyWith<$Res> get chatParticipants {
    return $ChatParticipantResponseCopyWith<$Res>(_self.chatParticipants,
        (value) {
      return _then(_self.copyWith(chatParticipants: value));
    });
  }
}

// dart format on
