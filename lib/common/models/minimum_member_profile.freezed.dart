// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minimum_member_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MinimumMemberProfile {
  String get nickName;
  String get profileImage;

  /// Create a copy of MinimumMemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MinimumMemberProfileCopyWith<MinimumMemberProfile> get copyWith =>
      _$MinimumMemberProfileCopyWithImpl<MinimumMemberProfile>(
          this as MinimumMemberProfile, _$identity);

  /// Serializes this MinimumMemberProfile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinimumMemberProfile &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName, profileImage);

  @override
  String toString() {
    return 'MinimumMemberProfile(nickName: $nickName, profileImage: $profileImage)';
  }
}

/// @nodoc
abstract mixin class $MinimumMemberProfileCopyWith<$Res> {
  factory $MinimumMemberProfileCopyWith(MinimumMemberProfile value,
          $Res Function(MinimumMemberProfile) _then) =
      _$MinimumMemberProfileCopyWithImpl;
  @useResult
  $Res call({String nickName, String profileImage});
}

/// @nodoc
class _$MinimumMemberProfileCopyWithImpl<$Res>
    implements $MinimumMemberProfileCopyWith<$Res> {
  _$MinimumMemberProfileCopyWithImpl(this._self, this._then);

  final MinimumMemberProfile _self;
  final $Res Function(MinimumMemberProfile) _then;

  /// Create a copy of MinimumMemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? profileImage = null,
  }) {
    return _then(_self.copyWith(
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _self.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MinimumMemberProfile].
extension MinimumMemberProfilePatterns on MinimumMemberProfile {
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
    TResult Function(_MinimumMemberProfile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MinimumMemberProfile() when $default != null:
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
    TResult Function(_MinimumMemberProfile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MinimumMemberProfile():
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
    TResult? Function(_MinimumMemberProfile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MinimumMemberProfile() when $default != null:
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
    TResult Function(String nickName, String profileImage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MinimumMemberProfile() when $default != null:
        return $default(_that.nickName, _that.profileImage);
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
    TResult Function(String nickName, String profileImage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MinimumMemberProfile():
        return $default(_that.nickName, _that.profileImage);
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
    TResult? Function(String nickName, String profileImage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MinimumMemberProfile() when $default != null:
        return $default(_that.nickName, _that.profileImage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MinimumMemberProfile implements MinimumMemberProfile {
  const _MinimumMemberProfile({this.nickName = '', this.profileImage = ''});
  factory _MinimumMemberProfile.fromJson(Map<String, dynamic> json) =>
      _$MinimumMemberProfileFromJson(json);

  @override
  @JsonKey()
  final String nickName;
  @override
  @JsonKey()
  final String profileImage;

  /// Create a copy of MinimumMemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MinimumMemberProfileCopyWith<_MinimumMemberProfile> get copyWith =>
      __$MinimumMemberProfileCopyWithImpl<_MinimumMemberProfile>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MinimumMemberProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinimumMemberProfile &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName, profileImage);

  @override
  String toString() {
    return 'MinimumMemberProfile(nickName: $nickName, profileImage: $profileImage)';
  }
}

/// @nodoc
abstract mixin class _$MinimumMemberProfileCopyWith<$Res>
    implements $MinimumMemberProfileCopyWith<$Res> {
  factory _$MinimumMemberProfileCopyWith(_MinimumMemberProfile value,
          $Res Function(_MinimumMemberProfile) _then) =
      __$MinimumMemberProfileCopyWithImpl;
  @override
  @useResult
  $Res call({String nickName, String profileImage});
}

/// @nodoc
class __$MinimumMemberProfileCopyWithImpl<$Res>
    implements _$MinimumMemberProfileCopyWith<$Res> {
  __$MinimumMemberProfileCopyWithImpl(this._self, this._then);

  final _MinimumMemberProfile _self;
  final $Res Function(_MinimumMemberProfile) _then;

  /// Create a copy of MinimumMemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nickName = null,
    Object? profileImage = null,
  }) {
    return _then(_MinimumMemberProfile(
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _self.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
