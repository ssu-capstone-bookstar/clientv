import 'dart:async';

import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/storage/secure_storage.dart';
import '../../user/view_model/user_provider.dart';
import '../model/auth_response.dart';
import '../model/auth_status.dart';
import '../model/login_request.dart';
import '../repository/auth_repository.dart';
import '../repository/social_login_service.dart';

part 'auth_view_model.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository = ref.read(authRepositoryProvider);
  late final SocialLoginService _socialLoginService = SocialLoginService();
  late final SecureStorageRepository _secureStorageRepository = ref.read(secureStorageRepositoryProvider);

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
        // return AuthStatus.unauthenticated;

        return AuthFailed(errorMsg: '', errorCode: -1);
      }
      final request = LoginRequest(providerType: providerType, idToken: idToken);
      final response = await _authRepository.login(request);

      final authData = response.data;

      await _secureStorageRepository.saveTokens(
        accessToken: authData.accessToken,
        refreshToken: authData.refreshToken,
      );
      // ref.read(userProvider.notifier).setUser(authData);
      // return AuthStatus.authenticated;

      return AuthSuccess(memberId: authData.memberId, nickName: authData.nickName, profileImage: authData.profileImage);
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
    // ref.read(userProvider.notifier).clearUser();
    // state = const AsyncValue.data(AuthStatus.unauthenticated);

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
      final authDataResponse = await _authRepository.renewToken('Bearer $oldRefreshToken');

      final authData = authDataResponse.data;

      await _secureStorageRepository.saveTokens(
        accessToken: authData.accessToken,
        refreshToken: authData.refreshToken,
      );

      state = AsyncData(
        AuthSuccess(
          memberId: authData.memberId,
          nickName: authData.nickName,
          profileImage: authData.profileImage,
        ),
      );

      return authData;
    } catch (e, t) {
      await signOut();

      return null;
    }
  }
}
