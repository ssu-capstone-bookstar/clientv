import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/response_form.dart';
import '../model/auth_response.dart';
import '../model/login_request.dart';

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
  Future<ResponseForm<AuthResponse>> renewToken(@Header('Authorization') String refreshToken);

  @POST('/login/accesstoken')
  Future<ResponseForm<dynamic>> loginByAccessToken(@Header('Authorization') String accessToken);
}
