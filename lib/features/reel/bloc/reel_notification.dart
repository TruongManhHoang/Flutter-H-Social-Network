part of 'reel_bloc.dart';

@Freezed(equal: false)
class ReelNotification with _$ReelNotification {
  factory ReelNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory ReelNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
