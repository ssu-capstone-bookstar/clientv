import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_history_response.freezed.dart';
part 'user_search_history_response.g.dart';

@freezed
abstract class UserSearchHistoryResponse
    with _$UserSearchHistoryResponse {
  const factory UserSearchHistoryResponse({
    required int id,
    required String searchedAt,
    required int searchedMemberId,
    required String searchedMemberNickName,
    required String searchedMemberProfileImage,
  }) = _UserSearchHistoryResponse;

  factory UserSearchHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSearchHistoryResponseFromJson(json);
}
