part of 'notifications_bloc.dart';

abstract final class NotificationsEvent extends Equatable {
  const NotificationsEvent();

  @override
  List get props => [];
}

final class  InitEvent extends NotificationsEvent {
  const InitEvent();
}

final class ReceiveNotificationResponseEvent extends NotificationsEvent {

  const ReceiveNotificationResponseEvent();

  @override
  List get props => [];
}
