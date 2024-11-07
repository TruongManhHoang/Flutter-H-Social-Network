part of 'chat_bloc.dart';

@Freezed()
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getChat() = _getChat;
  const factory ChatEvent.newChat() = _newChat;
  // const factory HomeEvent.getPostById() = _getPostById;

  // const factory ReelEvent.changeCaption(String caption) = _ChangeCaption;
  const factory ChatEvent.changeChatName(String chatName) = _ChangeChatName;
  const factory ChatEvent.changeChatId(int chatId) = _ChangeChatId;

  // const factory ChatEvent.changeVideo(String video) = _ChangeVideo;

  // const factory HomeEvent.changePassword(String password) = _ChangePassword;
  // const factory HomeEvent.login() = _Login;
}
