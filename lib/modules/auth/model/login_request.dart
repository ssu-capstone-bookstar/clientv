import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum ProviderType {
  kakao,
  google,
  apple,
}

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required ProviderType providerType,
    required String idToken,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}
