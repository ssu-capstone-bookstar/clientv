// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSearchHistoryResponse _$UserSearchHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _UserSearchHistoryResponse(
      id: (json['id'] as num).toInt(),
      searchedAt: json['searchedAt'] as String,
      searchedMemberId: (json['searchedMemberId'] as num).toInt(),
      searchedMemberNickName: json['searchedMemberNickName'] as String,
      searchedMemberProfileImage: json['searchedMemberProfileImage'] as String,
    );

Map<String, dynamic> _$UserSearchHistoryResponseToJson(
        _UserSearchHistoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'searchedAt': instance.searchedAt,
      'searchedMemberId': instance.searchedMemberId,
      'searchedMemberNickName': instance.searchedMemberNickName,
      'searchedMemberProfileImage': instance.searchedMemberProfileImage,
    };
