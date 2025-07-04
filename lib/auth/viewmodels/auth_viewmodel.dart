import 'dart:async';

import 'package:book/auth/models/auth_response.dart';
import 'package:book/auth/models/auth_status.dart';
import 'package:book/auth/models/login_request.dart';
import 'package:book/auth/services/auth_repository.dart';
import 'package:book/auth/services/social_login_service.dart';
import 'package:book/common/components/secure_storage.dart';
import 'package:book/user/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository;
  late final SocialLoginService _socialLoginService;
  late final SecureStorageRepository _secureStorageRepository;

  @override
  Future<AuthStatus> build() async {
    _authRepository = ref.watch(authRepositoryProvider);
    _socialLoginService = SocialLoginService();
    _secureStorageRepository = ref.watch(secureStorageRepositoryProvider);

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

      // accessToken, memberId 디버그 출력
      debugPrint(
          '[LOGIN] accessToken: ${authData.accessToken}, memberId: ${authData.memberId}');

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

    final authData =
        await _authRepository.renewToken('Bearer $oldRefreshToken');

    if (authData.data == null) {
      await signOut();
      return null;
    }

    await _secureStorageRepository.saveTokens(
      accessToken: authData.data!.accessToken,
      refreshToken: authData.data!.refreshToken,
    );
    // accessToken, memberId 디버그 출력
    debugPrint(
        '[AUTO LOGIN] accessToken: ${authData.data!.accessToken}, memberId: ${authData.data!.memberId}');
    ref.read(userProvider.notifier).setUser(authData.data!);
    return authData.data;
  }
}
