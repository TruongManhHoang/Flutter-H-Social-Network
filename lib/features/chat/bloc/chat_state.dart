part of 'chat_bloc.dart';

@Freezed()
class ChatState with _$ChatState {
  const factory ChatState(
      {@Default(UIInitial()) UIStatus status,
      ChatNotification? notification,
      @Default(false) bool loading,
      @Default('') String ChatName,
      @Default(0) int id,
      @Default('') String video,
      @Default(false) bool isSuccess,
      @Default('') String errorMessage,
      @Default([]) List<Chat> chats,
      Chat? chat}) = _ChatState;
}
