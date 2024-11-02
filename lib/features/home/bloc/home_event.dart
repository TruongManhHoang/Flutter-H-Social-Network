part of 'home_bloc.dart';

@Freezed()
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getPost() = _getPost;
  const factory HomeEvent.newPost() = _newPost;
  const factory HomeEvent.deletePost() = _deletePost;
  const factory HomeEvent.likePost() = _likePost;
  const factory HomeEvent.savePost() = _savePost;
  const factory HomeEvent.getPostByUser() = _getPostUser;
  const factory HomeEvent.getPostByUserId() = _getPostUserId;
  const factory HomeEvent.changeCaption(String caption) = _ChangeCaption;
  const factory HomeEvent.changeImage(String image) = _ChangeImage;
  const factory HomeEvent.changeVideo(String video) = _ChangeVideo;
  const factory HomeEvent.changeId(int postId) = _ChangeId;
  const factory HomeEvent.changeUserId(int userId) = _ChangeUserId;
}
