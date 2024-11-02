part of 'home_bloc.dart';

@Freezed(equal: false)
class HomeNotification with _$HomeNotification {
  factory HomeNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory HomeNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
