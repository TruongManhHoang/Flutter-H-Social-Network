import 'dart:async';
import 'dart:convert';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/reel/model/reel.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:boilerplate/services/reel/reel_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'reel_event.dart';
part 'reel_state.dart';
part 'reel_bloc.freezed.dart';
part 'reel_notification.dart';

class ReelBloc extends Bloc<ReelEvent, ReelState> {
  late final ReelService _reelService;
  late final LocalStorageService _localStorageService;
  ReelBloc(
      {required ReelService reelService,
      required LocalStorageService localStorageService})
      : super(const ReelState()) {
    _reelService = reelService;
    _localStorageService = localStorageService;
    on<_getReel>(_onGetReel);
    on<_newReel>(_onNewReel);
    on<_deleteReel>(_onDeleteReel);
    on<_likeReel>(_onLikeReel);
    on<_ChangeTitle>(_onChangeTitle);
    on<_ChangeVideo>(_onChangeVideo);
    on<_ChangeReelId>(_onChangeReelId);
    // on<_getPostById>(_onGetPostById);
  }

  void _onGetReel(_getReel event, Emitter<ReelState> emit) async {
    try {
      emit(state.copyWith(loading: true, notification: null));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _reelService.getAllReel(token);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> reelsJson = response.data['result'];
        List<Reel> reels =
            reelsJson.map((json) => Reel.fromJson(json)).toList();
        emit(state.copyWith(reels: reels, loading: false, isSuccess: true));
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

  void _onChangeTitle(_ChangeTitle event, Emitter<ReelState> emit) {
    try {
      emit(state.copyWith(title: event.title));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeVideo(_ChangeVideo event, Emitter<ReelState> emit) {
    try {
      emit(state.copyWith(video: event.video));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeReelId(_ChangeReelId event, Emitter<ReelState> emit) {
    try {
      emit(state.copyWith(reelId: event.reelId));
    } catch (e) {
      rethrow;
    }
  }

  void _onNewReel(_newReel event, Emitter<ReelState> emit) async {
    try {
      emit(state.copyWith(
        loading: true,
        isSuccess: false,
      ));
      if (state.title == null || state.video == null) {
        emit(state.copyWith(
            loading: false,
            notification:
                _NotificationInsertFailed(message: 'No post data found!')));
      }
      Reel reel = Reel(
          id: 0,
          title: state.title,
          video: state.video,
          user: User(
              id: 0,
              firstName: '',
              lastName: '',
              email: '',
              password: '',
              gender: '',
              savedPosts: [],
              followers: [],
              followings: []),
          comments: [],
          liked: []);

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = reel.toJson();
      dynamic response = await _reelService.createReel(token, payload);

      emit(state.copyWith(
          isSuccess: true,
          reel: reel,
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

  void _onDeleteReel(_deleteReel event, Emitter<ReelState> emit) {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = _reelService.deleteReel(token, state.reelId);
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Error $e',
          notification: _NotificationInsertFailed(
              message: 'Create failed: ${e.toString()}')));
    }
  }

  void _onLikeReel(_likeReel event, Emitter<ReelState> emit) {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = _reelService.deleteReel(token, state.reelId);
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          isSuccess: false,
          errorMessage: 'Error $e',
          notification: _NotificationInsertFailed(
              message: 'Create failed: ${e.toString()}')));
    }
  }
}
