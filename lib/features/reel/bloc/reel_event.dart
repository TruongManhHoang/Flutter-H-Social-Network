part of 'reel_bloc.dart';

@Freezed()
class ReelEvent with _$ReelEvent {
  const factory ReelEvent.getReel() = _getReel;
  const factory ReelEvent.newReel() = _newReel;
  const factory ReelEvent.deleteReel() = _deleteReel;
  const factory ReelEvent.likeReel() = _likeReel;
  const factory ReelEvent.getReelByUser() = _getReelByUser;
  const factory ReelEvent.getReelByUserId() = _getReelByUserId;
  // const factory HomeEvent.getPostById() = _getPostById;

  // const factory ReelEvent.changeCaption(String caption) = _ChangeCaption;
  const factory ReelEvent.changeTitle(String title) = _ChangeTitle;
  const factory ReelEvent.changeVideo(String video) = _ChangeVideo;
  const factory ReelEvent.changeReelId(int reelId) = _ChangeReelId;

  // const factory HomeEvent.changePassword(String password) = _ChangePassword;
  // const factory HomeEvent.login() = _Login;
}
