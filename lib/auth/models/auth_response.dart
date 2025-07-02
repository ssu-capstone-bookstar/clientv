import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required int memberId,
    @Default('') String nickName,
    @Default('') String profileImage,
    required String accessToken,
    required String refreshToken,
    required DateTime accessTokenExpiration,
    required DateTime refreshTokenExpiration,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
