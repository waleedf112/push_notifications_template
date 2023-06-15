import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../core/error/failure.dart';
import '../entities/notification_entity.dart';
import '../usecases/notifications_usecases.dart';

abstract class NotificationsRepository {
  Future<Either<Failure, void>> init(InitNotificationsParams params);
}
