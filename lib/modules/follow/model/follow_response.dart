import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_response.freezed.dart';
part 'follow_response.g.dart';

@freezed
abstract class FollowResponse with _$FollowResponse {
  const factory FollowResponse({
    @Default(0) int id,
    required int memberId,
    required String nickname,
    required String profileImageUrl,
  }) = _FollowResponse;

  factory FollowResponse.fromJson(Map<String, dynamic> json) => _$FollowResponseFromJson(json);
}
