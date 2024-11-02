part of 'story_bloc.dart';

@Freezed(equal: false)
class StoryNotification with _$StoryNotification {
  factory StoryNotification.insertSuccess({
    required String message,
  }) = _NotificationInsertSuccess;

  factory StoryNotification.insertFailed({
    required String message,
  }) = _NotificationInsertFailed;
}
