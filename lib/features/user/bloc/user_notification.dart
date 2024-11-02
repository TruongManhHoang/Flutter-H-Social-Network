part of 'user_bloc.dart';

@Freezed(equal: false)
class UserNotification with _$UserNotification {
  factory UserNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory UserNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
