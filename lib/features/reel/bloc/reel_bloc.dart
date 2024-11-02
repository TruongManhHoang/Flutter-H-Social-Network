import 'dart:async';
import 'dart:convert';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'reel_event.dart';
part 'reel_state.dart';
part 'reel_bloc.freezed.dart';
part 'reel_notification.dart';

class ReelBloc extends Bloc<ReelEvent, ReelState> {
  late final HomeService _homeService;
  late final LocalStorageService _localStorageService;
  ReelBloc(
      {required HomeService homeService,
      required LocalStorageService localStorageService})
      : super(const ReelState()) {
    _homeService = homeService;
    _localStorageService = localStorageService;
    // on<_getPost>(_onGetPost);
    on<_newPost>(_onNewPost);
    // on<_ChangeCaption>(_onChangeCaption);
    // on<_ChangeImage>(_onChangeImage);
    // on<_ChangeVideo>(_onChangeVideo);
    // on<_getPostById>(_onGetPostById);
  }

  // void _onGetPost(_getPost event, Emitter<ReelState> emit) async {
  //   try {
  //     emit(state.copyWith(loading: true, notification: null));
  //     String token = _localStorageService.getString(key: AppKeys.token) ?? '';
  //     dynamic response = await _homeService.getPost(token);
  //     if (response.data != null && response.data['result'] != null) {
  //       List<dynamic> postsJson = response.data['result'];
  //       List<Post> posts =
  //           postsJson.map((json) => Post.fromJson(json)).toList();
  //       emit(state.copyWith(Posts: posts, loading: false, isSuccess: true));
  //     } else {
  //       throw Exception('Response does not contain "items"');
  //     }
  //   } catch (e) {
  //     emit(state.copyWith(
  //         loading: false,
  //         isSuccess: false,
  //         errorMessage: 'Failed to load items: ${e.toString()}'));
  //   }
  // }

  // void _onChangeImage(_ChangeImage event, Emitter<HomeState> emit) {
  //   try {
  //     emit(state.copyWith(image: event.image));
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // void _onChangeVideo(_ChangeVideo event, Emitter<HomeState> emit) {
  //   try {
  //     emit(state.copyWith(video: event.video));
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  void _onNewPost(_newPost event, Emitter<ReelState> emit) async {
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
}
