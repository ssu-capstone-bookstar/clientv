import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/local/storage/secure_storage.dart';
import '../../user/providers/user_provider.dart';
import '../models/auth_response.dart';
import '../models/auth_status.dart';
import '../models/login_request.dart';
import '../services/auth_repository.dart';
import '../services/social_login_service.dart';

part 'auth_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository = ref.read(authRepositoryProvider);
  late final SocialLoginService _socialLoginService = SocialLoginService();
  late final SecureStorageRepository _secureStorageRepository =
      ref.read(secureStorageRepositoryProvider);

  @override
  Future<AuthStatus> build() async {
    final storedRefreshToken = await _secureStorageRepository.getRefreshToken();
    if (storedRefreshToken != null) {
      final newAuthData = await refreshToken();
      if (newAuthData != null) {
        return AuthStatus.authenticated;
      }
    }
    return AuthStatus.unauthenticated;
  }

  Future<void> login(ProviderType providerType) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final String? idToken = await _getIdToken(providerType);
      if (idToken == null) {
        return AuthStatus.unauthenticated;
      }
      final request =
          LoginRequest(providerType: providerType, idToken: idToken);
      final response = await _authRepository.login(request);

      final authData = response.data;

      await _secureStorageRepository.saveTokens(
        accessToken: authData.accessToken,
        refreshToken: authData.refreshToken,
      );
      ref.read(userProvider.notifier).setUser(authData);
      return AuthStatus.authenticated;
    });
  }

  Future<String?> _getIdToken(ProviderType providerType) {
    switch (providerType) {
      case ProviderType.kakao:
        return _socialLoginService.loginWithKakao();
      case ProviderType.google:
        return _socialLoginService.loginWithGoogle();
      case ProviderType.apple:
        return _socialLoginService.loginWithApple();
    }
  }

  Future<void> signOut() async {
    await _secureStorageRepository.deleteTokens();
    ref.read(userProvider.notifier).clearUser();
    state = const AsyncValue.data(AuthStatus.unauthenticated);
  }

  Future<({String? accessToken, String? refreshToken})> getTokens() async {
    final accessToken = await _secureStorageRepository.getAccessToken();
    final refreshToken = await _secureStorageRepository.getRefreshToken();
    return (accessToken: accessToken, refreshToken: refreshToken);
  }

  Future<AuthResponse?> refreshToken() async {
    final oldRefreshToken = await _secureStorageRepository.getRefreshToken();
    if (oldRefreshToken == null) {
      await signOut();
      return null;
    }

    final authDataResponse =
        await _authRepository.renewToken('Bearer $oldRefreshToken');

    final authData = authDataResponse.data;
    if (authData == null) {
      await signOut();
      return null;
    }

    await _secureStorageRepository.saveTokens(
      accessToken: authData.accessToken,
      refreshToken: authData.refreshToken,
    );
    ref.read(userProvider.notifier).setUser(authData);
    return authData;
  }
}
