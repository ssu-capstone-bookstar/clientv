import 'package:freezed_annotation/freezed_annotation.dart';

part 'ably_token_response.freezed.dart';
part 'ably_token_response.g.dart';

@freezed
abstract class AblyTokenResponse with _$AblyTokenResponse {
  const factory AblyTokenResponse({
    @Default('') String accessToken,
  }) = _AblyTokenResponse;

  factory AblyTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AblyTokenResponseFromJson(json);
}
