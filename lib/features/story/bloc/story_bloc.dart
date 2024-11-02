import 'dart:async';
import 'dart:convert';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/story/model/story.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:boilerplate/services/story_service/story_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'story_event.dart';
part 'story_state.dart';
part 'story_bloc.freezed.dart';
part 'story_notification.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  late final StoryService _storyService;
  late final LocalStorageService _localStorageService;
  StoryBloc(
      {required StoryService storyService,
      required LocalStorageService localStorageService})
      : super(const StoryState()) {
    _storyService = storyService;
    _localStorageService = localStorageService;
    on<_getStory>(_onGetStory);
    on<_newStory>(_onNewStory);
    on<_ChangeCaption>(_onChangeCaption);
    on<_ChangeImage>(_onChangeImage);
    on<_ChangeVideo>(_onChangeVideo);
  }

  void _onGetStory(_getStory event, Emitter<StoryState> emit) async {
    try {
      emit(state.copyWith(loading: true, notification: null));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _storyService.getStory(token);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> storiesJson = response.data['result'];
        List<Story> stories =
            storiesJson.map((json) => Story.fromJson(json)).toList();
        emit(state.copyWith(stories: stories, loading: false, isSuccess: true));
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

  void _onChangeCaption(_ChangeCaption event, Emitter<StoryState> emit) {
    try {
      emit(state.copyWith(caption: event.caption));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeImage(_ChangeImage event, Emitter<StoryState> emit) {
    try {
      emit(state.copyWith(image: event.image));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeVideo(_ChangeVideo event, Emitter<StoryState> emit) {
    try {
      emit(state.copyWith(video: event.video));
    } catch (e) {
      rethrow;
    }
  }

  void _onNewStory(_newStory event, Emitter<StoryState> emit) async {
    try {
      emit(state.copyWith(
        loading: true,
        isSuccess: false,
      ));
      if (state.caption == null || state.image == null || state.video == null) {
        emit(state.copyWith(
            loading: false,
            notification:
                _NotificationInsertFailed(message: 'No post data found!')));
      }
      Story story = Story(
        id: 0,
        caption: state.caption,
        image: state.image,

        // video: state.video,
        user: User(
            id: 0,
            firstName: '',
            lastName: '',
            email: '',
            password: '',
            gender: '',
            savedPosts: []),
      );

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = story.toJson();
      dynamic response = await _storyService.createStory(token, payload);

      emit(state.copyWith(
          isSuccess: true,
          story: story,
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

void deleteStory() {}
