part of 'notifications_usecases.dart';

class InitNotificationsUsecase extends UseCase<void, InitNotificationsParams> {
  final NotificationsRepository repository;

  InitNotificationsUsecase({required this.repository});

  @override
  Future<Either<Failure, void>> call(InitNotificationsParams params) async {
    return await repository.init(params);
  }
}

class InitNotificationsParams extends Equatable {
  final void Function(NotificationResponse notificationResponse) onDidReceiveNotificationResponse;

  const InitNotificationsParams({required this.onDidReceiveNotificationResponse}) : super();

  @override
  List<Object> get props => [onDidReceiveNotificationResponse];
}
