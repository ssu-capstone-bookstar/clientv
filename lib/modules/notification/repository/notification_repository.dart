import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../model/fcm_token_create_request.dart';

part 'notification_repository.g.dart';

@Riverpod(keepAlive: true)
NotificationRepository notificationRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return NotificationRepository(dio);
}

@RestApi()
abstract class NotificationRepository {
  factory NotificationRepository(Dio dio, {String baseUrl}) =
      _NotificationRepository;

  @POST('/api/v2/notifications/fcmToken')
  Future<void> save(
    @Body() FCMTokenCreateRequest request,
  );
}
