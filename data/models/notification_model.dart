import '../../domain/entities/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  const NotificationModel({
    required super.title,
    required super.body,
  });

  factory NotificationModel.fromLocal(data) {
    return NotificationModel(
      title: data['title'],
      body: data['body'],
    );
  }
}
