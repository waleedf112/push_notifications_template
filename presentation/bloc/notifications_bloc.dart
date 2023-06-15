import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/notifications_usecases.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final InitNotificationsUsecase initNotificationsUsecase;
  NotificationsBloc({
    required this.initNotificationsUsecase,
  }) : super(NotificationsInitial()) {
    on<InitEvent>(_onInitEvent);
  }

  Future<void> _onInitEvent(
    InitEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    final result = initNotificationsUsecase(
      InitNotificationsParams(
        onDidReceiveNotificationResponse: (notificationResponse) {},
      ),
    );
  }

  // void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
  //   final String? payload = notificationResponse.payload;
  //   if (notificationResponse.payload != null) {
  //     debugPrint('notification payload: $payload');
  //   }
  // }
}
