import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_response.freezed.dart';
part 'search_user_response.g.dart';

@freezed
abstract class SearchUserResponse with _$SearchUserResponse {
  const factory SearchUserResponse({
    @Default(0) int memberId,
    @Default('') String nickName,
    @Default('') String profileImg,
  }) = _SearchUserResponse;

  factory SearchUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchUserResponseFromJson(json);
}
