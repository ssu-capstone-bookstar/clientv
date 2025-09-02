import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

enum MemberRole {
  USER,
  ADMIN,
  CRAWLER,
}

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required int memberId,
    @Default('') String nickName,
    @Default('') String profileImage,
    @Default('') String providerType,
    @Default('') String email,
    required String accessToken,
    required String refreshToken,
    required DateTime accessTokenExpiration,
    required DateTime refreshTokenExpiration,
    required MemberRole memberRole,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
