import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// 백그라운드 메시지 핸들러 (top-level 함수여야 함)
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("_firebaseMessagingBackgroundHandler: ${message.notification?.title}");
  FCMService.showNotification(message);
}

/// Firebase Cloud Messaging(FCM) 서비스
///
/// FCM 토큰 관리, 푸시 알림 수신/표시, 알림 클릭 처리를 담당합니다._firebaseMessagingBackgroundHandler
class FCMService {
  /// FCM 토큰 (서버로 전송하여 푸시 알림을 받을 수 있음)
  static String? fcmToken;

  /// 로컬 알림 플러그인 인스턴스
  static final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  /// Android 알림 채널 ID
  static const String _channelId = 'high_importance_channel';

  /// Android 알림 채널 이름
  static const String _channelName = 'High Importance Notifications';

  /// Android 알림 채널 설명
  static const String _channelDescription =
      'This channel is used for important notifications.';

  /// FCM 서비스 초기화 (앱 시작 시 호출)
  ///
  /// 알림 권한 요청, FCM 토큰 발급, 메시지 핸들러 등록을 수행합니다.
  static Future<void> initialize() async {
    final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

    await _initializeLocalNotifications();

    final NotificationSettings settings =
        await firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _setupFCMToken(firebaseMessaging);
      _registerMessageHandlers(firebaseMessaging);
    }
  }

  /// FCM 토큰 설정 및 갱신 리스너 등록
  static Future<void> _setupFCMToken(FirebaseMessaging messaging) async {
    final String? token = await messaging.getToken();
    if (token != null) {
      fcmToken = token;
    }

    messaging.onTokenRefresh.listen((newToken) {
      fcmToken = newToken;
    });
  }

  /// 메시지 핸들러 등록 (포그라운드, 백그라운드, 알림 탭)
  static void _registerMessageHandlers(FirebaseMessaging messaging) {
    // 포그라운드 메시지 핸들러 (앱이 실행 중일 때)
    FirebaseMessaging.onMessage.listen(showNotification);

    // 백그라운드 메시지 핸들러 (앱이 백그라운드 또는 종료 상태일 때)
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 알림 탭으로 앱 실행 시 처리
    FirebaseMessaging.onMessageOpenedApp.listen(clickNotification);
  }

  /// 로컬 알림 플러그인 초기화
  static Future<void> _initializeLocalNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsiOS =
        DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsiOS,
    );

    await _localNotifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    await _createAndroidNotificationChannel();
  }

  /// Android 알림 채널 생성
  static Future<void> _createAndroidNotificationChannel() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      _channelId,
      _channelName,
      description: _channelDescription,
      importance: Importance.high,
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  /// 로컬 알림 탭 시 동작 (포그라운드에서 표시된 알림)
  static void _onNotificationTapped(NotificationResponse response) {
    if (response.payload != null) {
      final data = jsonDecode(response.payload!) as Map<String, dynamic>;
      _handleNotificationTap(data);
    }
  }

  /// 알림 표시
  static Future<void> showNotification(RemoteMessage message) async {
    print("showNotification: ${message.notification?.title}");
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      _channelId,
      _channelName,
      channelDescription: _channelDescription,
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
    );

    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(
      message.hashCode,
      message.notification?.title ?? '새 알림',
      message.notification?.body ?? '',
      notificationDetails,
      payload: jsonEncode(message.data),
    );
  }

  /// 알림 클릭 시 처리 (백그라운드/종료 상태에서 FCM 알림 탭)
  static void clickNotification(RemoteMessage message) {
    _handleNotificationTap(message.data);
  }

  /// 알림 탭 공통 처리 함수
  ///
  /// [data]: 알림 데이터 (페이지 이동 정보 등)
  static void _handleNotificationTap(Map<String, dynamic> data) {
    print("_handleNotificationTap: $data");
    // TODO: 페이지 이동 처리 (예: GoRouter 사용)
    // 예시:
    // final String? type = data['type'] as String?;
    // if (type == 'chat') {
    //   router.push('/chat/${data['chatId']}');
    // } else if (type == 'book') {
    //   router.push('/book/${data['bookId']}');
    // }
  }
}
