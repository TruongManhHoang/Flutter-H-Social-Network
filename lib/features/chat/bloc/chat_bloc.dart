import 'dart:async';
import 'dart:convert';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/chat/model/chat.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/reel/model/reel.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/chat/chat_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:boilerplate/services/reel/reel_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';
part 'chat_notification.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final ChatService _chatService;
  late final LocalStorageService _localStorageService;
  ChatBloc(
      {required ChatService chatService,
      required LocalStorageService localStorageService})
      : super(const ChatState()) {
    _chatService = chatService;
    _localStorageService = localStorageService;
    on<_getChat>(_onGetChat);
    on<_newChat>(_onNewChat);
    on<_ChangeChatName>(_onChangeChatName);
    on<_ChangeChatId>(_onChangeChatId);
    // on<_ChangeVideo>(_onChangeVideo);
    // on<_getPostById>(_onGetPostById);
  }

  void _onGetChat(_getChat event, Emitter<ChatState> emit) async {
    try {
      emit(state.copyWith(loading: true, notification: null));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _chatService.getAllChat();
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> chatsJson = response.data['result'];
        List<Chat> chats =
            chatsJson.map((json) => Chat.fromJson(json)).toList();
        emit(state.copyWith(chats: chats, loading: false, isSuccess: true));
      } else {
        throw Exception('Response does not contain "items"');
      }
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Failed to load items: ${e.toString()}'));
    }
  }

  void _onChangeChatName(_ChangeChatName event, Emitter<ChatState> emit) {
    try {
      emit(state.copyWith(ChatName: event.chatName));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeChatId(_ChangeChatId event, Emitter<ChatState> emit) {
    try {
      emit(state.copyWith(id: event.chatId));
    } catch (e) {
      rethrow;
    }
  }

  void _onNewChat(_newChat event, Emitter<ChatState> emit) async {
    try {
      emit(state.copyWith(
        loading: true,
        isSuccess: false,
      ));
      if (state.ChatName == null) {
        emit(state.copyWith(
            loading: false,
            notification:
                _NotificationInsertFailed(message: 'No post data found!')));
      }
      Chat chat = Chat(id: 0, chatName: state.ChatName, users: []);

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = chat.toJson();
      dynamic response = await _chatService.createChat(token, payload);

      emit(state.copyWith(
          isSuccess: true,
          chat: chat,
          loading: false,
          notification:
              _NotificationInsertSuccess(message: 'Create successful')));
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Create failed: ${e.toString()}',
          )));
    }
  }
}
