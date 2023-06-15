import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../domain/usecases/notifications_usecases.dart';

abstract class NotificationsLocalDataSource {
  Future<void> init(InitNotificationsParams params);
}

class NotificationsLocalDataSourceImpl implements NotificationsLocalDataSource {
  final FlutterLocalNotificationsPlugin notificationsPlugin;

  NotificationsLocalDataSourceImpl({required this.notificationsPlugin});

  @override
  Future<void> init(InitNotificationsParams params) async {
    const InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_stat_name'),
      iOS: DarwinInitializationSettings(
        requestBadgePermission: false,
        requestAlertPermission: false,
        requestSoundPermission: false,
      ),
    );
    await notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: params.onDidReceiveNotificationResponse,
    );
  }
}
