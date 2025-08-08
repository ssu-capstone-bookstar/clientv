import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
            debugPrint('[ERROR] loginWithKakao: $e');
            return null;
          }
        }
      } else {
        token = await UserApi.instance.loginWithKakaoAccount();
      }
      return token.idToken ?? '';
    } catch (e) {
      debugPrint('[ERROR] loginWithKakao: $e');
      return null;
    }
  }

  Future<String?> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // final credential = GoogleAuthProvider.credential(
      //   accessToken: googleAuth?.accessToken,
      //   idToken: googleAuth?.idToken,
      // );

      return googleAuth?.idToken;

    } catch (e) {
      debugPrint('[ERROR] loginWithGoogle: $e');

      return null;
    }
  }

  Future<String?> loginWithApple() async {
    try {
      final appleProvider = AppleAuthProvider();

      final userCredential = await FirebaseAuth.instance.signInWithProvider(appleProvider);

      return userCredential.user?.getIdToken();
    } catch (e) {
      debugPrint('[ERROR] loginWithApple: $e');

      return null;
    }
  }
}
