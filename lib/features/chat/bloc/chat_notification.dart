part of 'chat_bloc.dart';

@Freezed(equal: false)
class ChatNotification with _$ChatNotification {
  factory ChatNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory ChatNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
