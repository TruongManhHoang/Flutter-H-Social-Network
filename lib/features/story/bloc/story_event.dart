part of 'story_bloc.dart';

@Freezed()
class StoryEvent with _$StoryEvent {
  const factory StoryEvent.getStory() = _getStory;
  const factory StoryEvent.newStory() = _newStory;

  const factory StoryEvent.changeCaption(String caption) = _ChangeCaption;
  const factory StoryEvent.changeImage(String image) = _ChangeImage;
  const factory StoryEvent.changeVideo(String video) = _ChangeVideo;

  // const factory HomeEvent.changePassword(String password) = _ChangePassword;
  // const factory HomeEvent.login() = _Login;
}
