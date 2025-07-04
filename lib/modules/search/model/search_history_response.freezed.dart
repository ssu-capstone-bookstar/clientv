// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchHistoryResponse {
  String get queries;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchHistoryResponseCopyWith<SearchHistoryResponse> get copyWith =>
      _$SearchHistoryResponseCopyWithImpl<SearchHistoryResponse>(
          this as SearchHistoryResponse, _$identity);

  /// Serializes this SearchHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchHistoryResponse &&
            (identical(other.queries, queries) || other.queries == queries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, queries);

  @override
  String toString() {
    return 'SearchHistoryResponse(queries: $queries)';
  }
}

/// @nodoc
abstract mixin class $SearchHistoryResponseCopyWith<$Res> {
  factory $SearchHistoryResponseCopyWith(SearchHistoryResponse value,
          $Res Function(SearchHistoryResponse) _then) =
      _$SearchHistoryResponseCopyWithImpl;
  @useResult
  $Res call({String queries});
}

/// @nodoc
class _$SearchHistoryResponseCopyWithImpl<$Res>
    implements $SearchHistoryResponseCopyWith<$Res> {
  _$SearchHistoryResponseCopyWithImpl(this._self, this._then);

  final SearchHistoryResponse _self;
  final $Res Function(SearchHistoryResponse) _then;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_self.copyWith(
      queries: null == queries
          ? _self.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SearchHistoryResponse implements SearchHistoryResponse {
  const _SearchHistoryResponse({this.queries = ''});
  factory _SearchHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryResponseFromJson(json);

  @override
  @JsonKey()
  final String queries;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchHistoryResponseCopyWith<_SearchHistoryResponse> get copyWith =>
      __$SearchHistoryResponseCopyWithImpl<_SearchHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchHistoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchHistoryResponse &&
            (identical(other.queries, queries) || other.queries == queries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, queries);

  @override
  String toString() {
    return 'SearchHistoryResponse(queries: $queries)';
  }
}

/// @nodoc
abstract mixin class _$SearchHistoryResponseCopyWith<$Res>
    implements $SearchHistoryResponseCopyWith<$Res> {
  factory _$SearchHistoryResponseCopyWith(_SearchHistoryResponse value,
          $Res Function(_SearchHistoryResponse) _then) =
      __$SearchHistoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String queries});
}

/// @nodoc
class __$SearchHistoryResponseCopyWithImpl<$Res>
    implements _$SearchHistoryResponseCopyWith<$Res> {
  __$SearchHistoryResponseCopyWithImpl(this._self, this._then);

  final _SearchHistoryResponse _self;
  final $Res Function(_SearchHistoryResponse) _then;

  /// Create a copy of SearchHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? queries = null,
  }) {
    return _then(_SearchHistoryResponse(
      queries: null == queries
          ? _self.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
