import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@riverpod
SocialLoginService socialLoginService(Ref ref) {
  return SocialLoginService();
}

class SocialLoginService {
  Future<String?> loginWithKakao() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();
      OAuthToken token;
      if (isInstalled) {
        try {
          token = await UserApi.instance.loginWithKakaoTalk();
        } catch (e) {
          if (e is PlatformException) {
            token = await UserApi.instance.loginWithKakaoAccount();
          } else {
            debugPrint('카카오 로그인 에러: $e');
            return '';
          }
        }
      } else {
        token = await UserApi.instance.loginWithKakaoAccount();
      }
      return token.idToken ?? '';
    } catch (error) {
      debugPrint('알 수 없는 카카오 에러: $error');
    }
  }

  Future<String?> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        return googleAuth.idToken;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<String?> loginWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      return credential.identityToken;
    } catch (e) {
      return null;
    }
  }
}
