import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../modules/auth/view_model/auth_view_model.dart';

part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
Dio dioClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL']!,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 30),
      contentType: 'application/json',
    ),
  );

  dio.interceptors.add(CustomInterceptor(ref));

  return dio;
}

@Riverpod(keepAlive: true)
Dio baseDio(Ref ref) {
  return Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL']!,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 30),
      contentType: 'application/json',
    ),
  );
}

class CustomInterceptor extends Interceptor {
  final Ref _ref;

  CustomInterceptor(this._ref);

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path == '/api/v1/auth/login') {
      return super.onRequest(options, handler);
    }

    final tokens = await _ref.read(authViewModelProvider.notifier).getTokens();
    if (tokens.accessToken != null) {
      options.headers['Authorization'] = 'Bearer ${tokens.accessToken}';
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && err.requestOptions.path != '/api/v1/auth/renew') {
      final newAuthData = await _ref.read(authViewModelProvider.notifier).refreshToken();

      if (newAuthData != null) {
        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer ${newAuthData.accessToken}';

        try {
          final response = await _ref.read(baseDioProvider).fetch(options);
          return handler.resolve(response);
        } on DioException catch (e) {
          return handler.next(e);
        }
      }
    }
    super.onError(err, handler);
  }
}
