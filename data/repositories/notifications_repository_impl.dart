import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import '../../domain/usecases/notifications_usecases.dart';
import '../../domain/repositories/notifications_repository.dart';
import '../datasource/notifications_local_data_source.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final NotificationsLocalDataSource localDataSource;

  NotificationsRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, void>> init(InitNotificationsParams params) async {
    try {
      await localDataSource.init(params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    } catch (e, st) {
      return Left(UnknownFailure(e, st));
    }
  }
}
