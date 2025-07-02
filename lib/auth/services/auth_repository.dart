import 'package:book/auth/models/auth_response.dart';
import 'package:book/auth/models/login_request.dart';
import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/response_form.dart';
import 'package:book/common/models/status_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  final dio = ref.watch(baseDioProvider);
  return AuthRepository(dio);
}

@RestApi(baseUrl: '/api/v1/auth')
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;

  @POST('/login')
  Future<ResponseForm<AuthResponse>> login(@Body() LoginRequest request);

  @DELETE('/withdraw')
  Future<ResponseForm<void>> withdraw();

  @POST('/renew')
  Future<AuthResponse> renewToken(@Header('Authorization') String refreshToken);

  @POST('/login/accesstoken')
  Future<ResponseForm<dynamic>> loginByAccessToken(
      @Header('Authorization') String accessToken);
}
