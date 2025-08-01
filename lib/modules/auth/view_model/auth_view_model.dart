import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/storage/secure_storage.dart';
import '../model/auth_response.dart';
import '../model/login_request.dart';
import '../repository/auth_repository.dart';
import '../repository/social_login_service.dart';
import 'auth_state.dart';

part 'auth_view_model.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository = ref.read(authRepositoryProvider);
  late final SocialLoginService _socialLoginService = SocialLoginService();
  late final SecureStorageRepository _secureStorageRepository =
      ref.read(secureStorageRepositoryProvider);

  @override
  Future<AuthState> build() async {
    state = const AsyncLoading();

    try {
      await refreshToken();
    } catch (e, t) {
      state = AsyncError(e, t);
    }

    return state.value ?? AuthIdle();
  }

  Future<void> login(ProviderType providerType) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final String? idToken = await _getIdToken(providerType);

      if (idToken == null) {
        return AuthFailed(errorMsg: '', errorCode: -1);
      }

      final request =
          LoginRequest(providerType: providerType, idToken: idToken);

      final response = await _authRepository.login(request);

      final authData = response.data;

      // Debug: Print the received auth data
      print('=== DEBUG: Auth Response Data ===');
      print('memberId: ${authData.memberId}');
      print('nickName: ${authData.nickName}');
      print('profileImage: ${authData.profileImage}');
      print('providerType: ${authData.providerType}');
      print('email: ${authData.email}');
      print('accessToken: ${authData.accessToken.substring(0, 20)}...');
      print('refreshToken: ${authData.refreshToken.substring(0, 20)}...');
      print('================================');

      await _secureStorageRepository.saveTokens(
        accessToken: authData.accessToken,
        refreshToken: authData.refreshToken,
      );

      return AuthSuccess(
          memberId: authData.memberId,
          nickName: authData.nickName,
          profileImage: authData.profileImage,
          providerType: authData.providerType,
          email: authData.email);
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
    state = AsyncData(AuthIdle());
  }

  Future<void> withdraw() async {
    try {
      await _authRepository.withdraw();
      await _secureStorageRepository.deleteTokens();
      state = AsyncData(AuthWithdrawCompleted());
    } catch (e) {
      rethrow;
    }
  }

  Future<void> forceSignOut() async {
    print('=== FORCE SIGNOUT: Clearing all tokens ===');
    await _secureStorageRepository.deleteTokens();
    state = AsyncData(AuthIdle());
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

    try {
      final authDataResponse =
          await _authRepository.renewToken('Bearer $oldRefreshToken');
      final authData = authDataResponse.data;

      if (authData == null) {
        await signOut();

        return null;
      }

      // Debug: Print the received auth data from refresh token
      print('=== DEBUG: Refresh Token Response Data ===');
      print('memberId: ${authData.memberId}');
      print('nickName: ${authData.nickName}');
      print('profileImage: ${authData.profileImage}');
      print('providerType: ${authData.providerType}');
      print('email: ${authData.email}');
      print('accessToken: ${authData.accessToken}');
      print('refreshToken: ${authData.refreshToken}');
      print('==========================================');

      await _secureStorageRepository.saveTokens(
        accessToken: authData.accessToken,
        refreshToken: authData.refreshToken,
      );

      // Handle cases where server might not return email and providerType yet
      final email = authData.email.isNotEmpty ? authData.email : '이메일 정보 없음';
      final providerType =
          authData.providerType.isNotEmpty ? authData.providerType : '연동 상태';

      state = AsyncData(
        AuthSuccess(
          memberId: authData.memberId,
          nickName: authData.nickName,
          profileImage: authData.profileImage,
          providerType: providerType,
          email: email,
        ),
      );

      return authData;
    } catch (e, _) {
      await signOut();

      return null;
    }
  }

  AuthSuccess? getUser() {
    return state.when(
      data: (data) {
        if (data is AuthSuccess) return data;
        return null;
      },
      loading: () => null,
      error: (e, t) => null,
    );
  }
}
