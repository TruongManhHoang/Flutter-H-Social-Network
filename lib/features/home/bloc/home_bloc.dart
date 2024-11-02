import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/comment/model/comment.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';
part 'home_notification.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late final HomeService _homeService;
  late final LocalStorageService _localStorageService;
  HomeBloc(
      {required HomeService homeService,
      required LocalStorageService localStorageService})
      : super(HomeState()) {
    _homeService = homeService;
    _localStorageService = localStorageService;
    on<_getPost>(_onGetPost);
    on<_newPost>(_onNewPost);
    on<_ChangeCaption>(_onChangeCaption);
    on<_ChangeImage>(_onChangeImage);
    on<_ChangeVideo>(_onChangeVideo);
    on<_ChangeId>(_onChangeId);
    on<_ChangeUserId>(_onChangeUserId);
    on<_deletePost>(_onDeletePost);
    on<_likePost>(_onLikePost);
    on<_savePost>(_onSavePost);
    on<_getPostUser>(_onGetPostByUser);
    on<_getPostUserId>(_onGetPostByUserId);
  }

  void _onGetPost(_getPost event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(loading: true, notification: null));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _homeService.getPost(token);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> postsJson = response.data['result'];
        List<Post> posts =
            postsJson.map((json) => Post.fromJson(json)).toList();
        emit(state.copyWith(Posts: posts, loading: false, isSuccess: true));
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

  void _onGetPostByUser(_getPostUser event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(loading: true, isSuccess: false));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _homeService.getPostByUser(token);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> postsJson = response.data['result'];
        List<Post> posts =
            postsJson.map((json) => Post.fromJson(json)).toList();
        emit(state.copyWith(
            loading: false, isSuccess: true, getPostByUser: posts));
      }
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Failed to load items: ${e.toString()}',
          notification:
              _$NotificationInsertFailedImpl(message: 'Cant found post')));
    }
  }

  void _onGetPostByUserId(_getPostUserId event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(loading: true, isSuccess: false));
      dynamic response = await _homeService.getPostByUserId(state.userId);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> postsJson = response.data['result'];
        List<Post> posts =
            postsJson.map((json) => Post.fromJson(json)).toList();
        emit(state.copyWith(
            loading: false, isSuccess: true, getPostByUserId: posts));
      }
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Failed to load items: ${e.toString()}',
          notification:
              _$NotificationInsertFailedImpl(message: 'Cant found post')));
    }
  }

  void _onChangeCaption(_ChangeCaption event, Emitter<HomeState> emit) {
    try {
      emit(state.copyWith(caption: event.caption));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeUserId(_ChangeUserId event, Emitter<HomeState> emit) {
    try {
      emit(state.copyWith(userId: event.userId));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeId(_ChangeId event, Emitter<HomeState> emit) {
    try {
      emit(state.copyWith(postId: event.postId));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeImage(_ChangeImage event, Emitter<HomeState> emit) {
    try {
      emit(state.copyWith(image: event.image));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeVideo(_ChangeVideo event, Emitter<HomeState> emit) {
    try {
      emit(state.copyWith(video: event.video));
    } catch (e) {
      rethrow;
    }
  }

  void _onNewPost(_newPost event, Emitter<HomeState> emit) async {
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
      Post post = Post(
          id: 0,
          caption: state.caption,
          image: state.image,
          video: state.video,
          user: User(
              id: 0,
              firstName: '',
              lastName: '',
              email: '',
              password: '',
              gender: '',
              savedPosts: []),
          comments: []);

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = post.toJson();
      dynamic response = await _homeService.createPost(token, payload);

      emit(state.copyWith(
          isSuccess: true,
          toLoad: true,
          post: post,
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

  void _onSavePost(_savePost event, Emitter<HomeState> emit) async {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _homeService.savePost(token, state.postId);
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Save failed: ${e.toString()}',
          )));
    }
  }

  void _onDeletePost(_deletePost event, Emitter<HomeState> emit) async {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _homeService.deletePost(token, state.postId);
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Delete failed: ${e.toString()}',
          )));
    }
  }

  void _onLikePost(_likePost event, Emitter<HomeState> emit) async {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _homeService.likePost(token, state.postId);
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: 'Delete failed: ${e.toString()}',
          )));
    }
  }
}
