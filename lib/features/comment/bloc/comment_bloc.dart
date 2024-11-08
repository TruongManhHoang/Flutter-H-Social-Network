import 'dart:async';
import 'dart:convert';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/comment/model/comment.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/story/model/story.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/comment_service/comment_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:boilerplate/services/story_service/story_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';
part 'comment_notification.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  late final CommentService _commentService;
  late final LocalStorageService _localStorageService;
  CommentBloc(
      {required CommentService commentService,
      required LocalStorageService localStorageService})
      : super(CommentState()) {
    _commentService = commentService;
    _localStorageService = localStorageService;
    on<_getComment>(_onGetComment);
    on<_selectCommentId>(_onSelectCommentId);
    on<_likeComment>(_onLikeComment);
    on<_newComment>(_onNewComment);
    on<_newCommentForReel>(_onNewCommentForReel);
    on<_selectContent>(_onSelectContent);
    on<_selectPostId>(_onSelectPostId);
    on<_selectReelId>(_onSelectReelId);
    // on<_selectPostId>(_onSelectPostId);
    // on<_ChangeImage>(_onChangeImage);
    // on<_ChangeVideo>(_onChangeVideo);
  }

  void _onGetComment(_getComment event, Emitter<CommentState> emit) async {
    try {
      emit(state.copyWith(loading: true, notification: null));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _commentService.getAllComment(token);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> commentsJson = response.data['result'];
        List<Comment> comments =
            commentsJson.map((json) => Comment.fromJson(json)).toList();
        emit(state.copyWith(
            comments: comments, loading: false, isSuccess: true));
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

  void _onSelectCommentId(_selectCommentId event, Emitter<CommentState> emit) {
    try {
      emit(state.copyWith(loading: false, isSuccess: true, id: event.id));
    } catch (e) {
      emit(state.copyWith(loading: false, errorMessage: 'Error: $e'));
    }
  }

  void _onLikeComment(_likeComment event, Emitter<CommentState> emit) async {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _commentService.likeComment(token, state.id);
    } catch (e) {
      emit(state.copyWith(loading: false, errorMessage: 'Error: $e'));
    }
  }

  void _onSelectContent(_selectContent event, Emitter<CommentState> emit) {
    try {
      emit(state.copyWith(content: event.content));
    } catch (e) {
      emit(state.copyWith(loading: false, errorMessage: "Error: $e"));
    }
  }

  void _onSelectPostId(_selectPostId event, Emitter<CommentState> emit) {
    try {
      emit(state.copyWith(postId: event.postId));
    } catch (e) {
      emit(state.copyWith(loading: false, errorMessage: "Error: $e"));
    }
  }

  void _onSelectReelId(_selectReelId event, Emitter<CommentState> emit) {
    try {
      emit(state.copyWith(reelId: event.reelId));
    } catch (e) {
      emit(state.copyWith(loading: false, errorMessage: "Error: $e"));
    }
  }

  void _onNewComment(_newComment event, Emitter<CommentState> emit) async {
    try {
      if (state.content == null || state.postId == null) {
        emit(state.copyWith(
            loading: false,
            notification:
                _NotificationInsertFailed(message: 'No post data found!')));
      }
      Comment comment = Comment(
          id: 0,
          content: state.content,
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
          liked: []);
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = comment.toJson();
      dynamic response =
          await _commentService.createComment(state.postId, token, payload);
      emit(state.copyWith(
          isSuccess: true,
          comment: comment,
          loading: false,
          notification:
              _NotificationInsertSuccess(message: 'Create successful')));
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          errorMessage: "Error: $e",
          notification: _NotificationInsertFailed(
            message: 'Create failed: ${e.toString()}',
          )));
    }
  }

  void _onNewCommentForReel(
      _newCommentForReel event, Emitter<CommentState> emit) async {
    try {
      if (state.content == null || state.postId == null) {
        emit(state.copyWith(
            loading: false,
            notification:
                _NotificationInsertFailed(message: 'No post data found!')));
      }
      Comment comment = Comment(
          id: 0,
          content: state.content,
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
          liked: []);
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = comment.toJson();
      dynamic response = await _commentService.createCommentForReel(
          state.reelId, token, payload);
      emit(state.copyWith(
          isSuccess: true,
          commentReel: comment,
          loading: false,
          notification:
              _NotificationInsertSuccess(message: 'Create successful')));
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          errorMessage: "Error: $e",
          notification: _NotificationInsertFailed(
            message: 'Create failed: ${e.toString()}',
          )));
    }
  }
}

void deleteStory() {}
