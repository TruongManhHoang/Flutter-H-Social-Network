part of 'reel_bloc.dart';

@Freezed()
class ReelEvent with _$ReelEvent {
  const factory ReelEvent.getPost() = _getPost;
  const factory ReelEvent.newPost() = _newPost;
  // const factory HomeEvent.getPostById() = _getPostById;

  // const factory ReelEvent.changeCaption(String caption) = _ChangeCaption;
  // const factory ReelEvent.changeImage(String image) = _ChangeImage;
  // const factory ReelEvent.changeVideo(String video) = _ChangeVideo;

  // const factory HomeEvent.changePassword(String password) = _ChangePassword;
  // const factory HomeEvent.login() = _Login;
}
