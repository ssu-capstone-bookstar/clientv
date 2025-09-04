import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_response.freezed.dart';
part 'search_user_response.g.dart';

@freezed
abstract class SearchUserResponse
    with _$SearchUserResponse {
  const factory SearchUserResponse({
    required int memberId,
    required String nickName,
    required String profileImg,
  }) = _SearchUserResponse;

  factory SearchUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchUserResponseFromJson(json);
}
