import Flutter
import UIKit
import KakaoSDKCommon
import KakaoSDKAuth

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  guard let kakaoKey = Bundle.main.object(forInfoDictionaryKey: "KakaoNativeAppKey") as? String else {
    fatalError("KakaoNativeAppKey가 Info.plist에 없습니다.")
  }
  KakaoSDK.initSDK(appKey: kakaoKey)  // 가장 먼저 호출
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(_ app: UIApplication, open url: URL,
    options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
      if AuthApi.isKakaoTalkLoginUrl(url) {
          return AuthController.handleOpenUrl(url: url)
      }
      return super.application(app, open: url, options: options)
  }
}
