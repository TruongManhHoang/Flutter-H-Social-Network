part of 'comment_bloc.dart';

@Freezed(equal: false)
class CommentNotification with _$CommentNotification {
  factory CommentNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory CommentNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
