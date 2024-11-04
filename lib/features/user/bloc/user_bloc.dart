import 'dart:async';
import 'dart:convert';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/user/model/user.dart';
import 'package:boilerplate/services/user_service/user_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';
part 'user_notification.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _userService;
  final LocalStorageService _localStorageService;

  UserBloc({
    required UserService userService,
    required LocalStorageService localStorageService,
  })  : _userService = userService,
        _localStorageService = localStorageService,
        super(const UserState()) {
    on<_getUser>(_onGetUser);
    on<_newUser>(_onNewUser);
    on<_searchUser>(_onSearchUser);
    on<_followUser>(_onFollowUser);
    on<_updateProfileUser>(_onUpdateProfileUser);
    on<_getProfileUser>(_onGetProfileUser);
    on<_changeFirstName>(_onChangeFirstName);
    on<_changeLastName>(_onChangeLastName);
    on<_changeEmail>(_onChangeEmail);
    on<_changGender>(_onChangeGender);
    on<_changePassword>(_onChangePassword);
    on<_changeClientUser>(_onChangeClientUser);
    on<_changeId>(_onChangeId);
    on<_changeUserId>(_onChangeUserId);
  }

  void _onGetUser(_getUser event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(loading: true, notification: null));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _userService.getUser(token);
      if (response.data != null && response.data['result'] != null) {
        List<dynamic> usersJson = response.data['result'];
        List<User> users =
            usersJson.map((json) => User.fromJson(json)).toList();
        emit(state.copyWith(users: users, loading: false, isSuccess: true));
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

  void _onGetProfileUser(_getProfileUser event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(loading: true, isSuccess: false));
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _userService.getProfileUser(token);
      final data = response.data as Map<String, dynamic>;
      User user = User.fromJson(data);
      emit(state.copyWith(loading: false, isSuccess: true, user: user));
    } catch (e) {
      emit(state.copyWith(
        loading: false,
        errorMessage: 'Error: $e',
        notification:
            _$NotificationInsertFailedImpl(message: 'Not found data user'),
      ));
    }
  }

  void _onNewUser(_newUser event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(
        loading: true,
        isSuccess: false,
      ));
      User user = User(
          id: 0,
          firstName: state.firstName,
          lastName: state.lastName,
          email: state.email,
          password: state.password,
          gender: state.gender,
          savedPosts: [],
          followers: [],
          followings: []);

      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic payload = user.toJson();
      dynamic response = await _userService.createUser(token, payload);

      emit(state.copyWith(
          isSuccess: true,
          user: user,
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

  void _onUpdateProfileUser(
      _updateProfileUser event, Emitter<UserState> emit) async {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';

      User currentUser = state.user!;

      User user = User(
          id: currentUser.id,
          firstName: state.firstName.isNotEmpty
              ? state.firstName
              : currentUser.firstName,
          lastName:
              state.lastName.isNotEmpty ? state.lastName : currentUser.lastName,
          email: state.email.isNotEmpty ? state.email : currentUser.email,
          password: currentUser.password,
          gender: state.gender.isNotEmpty ? state.gender : currentUser.gender,
          savedPosts: currentUser.savedPosts,
          followers: currentUser.followers,
          followings: currentUser.followings);

      dynamic payload = user.toJson();
      dynamic response = await _userService.updateProfileUser(token, payload);

      if (response != null) {
        emit(state.copyWith(
            user: user,
            notification: _$NotificationInsertSuccessImpl(
                message: 'Profile updated successfully')));
      }
    } catch (e) {
      emit(state.copyWith(
          loading: false,
          notification: _$NotificationInsertFailedImpl(
              message: 'Update profile user failed')));
    }
  }

  void _onFollowUser(_followUser event, Emitter<UserState> emit) async {
    try {
      String token = _localStorageService.getString(key: AppKeys.token) ?? '';
      dynamic response = await _userService.followUser(token, state.userId);
    } catch (e) {
      emit(state.copyWith(
          notification: _$NotificationInsertFailedImpl(message: 'Error $e')));
    }
  }

  void _onSearchUser(_searchUser event, Emitter<UserState> emit) {
    if (event.name.trim().isEmpty) {
      emit(state.copyWith(searchUsers: []));
    } else {
      final filteredUsers = state.users.where((user) {
        return user.firstName.toLowerCase().contains(event.name.toLowerCase());
      }).toList();
      emit(state.copyWith(searchUsers: filteredUsers));
    }
  }

  void _onChangeClientUser(_changeClientUser event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(clientUser: event.clientUser));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeUserId(_changeUserId event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(userId: event.userId));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeId(_changeId event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(id: event.id));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeFirstName(_changeFirstName event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(firstName: event.firstName));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeLastName(_changeLastName event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(lastName: event.lastName));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeEmail(_changeEmail event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(email: event.email));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangePassword(_changePassword event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(password: event.password));
    } catch (e) {
      rethrow;
    }
  }

  void _onChangeGender(_changGender event, Emitter<UserState> emit) {
    try {
      emit(state.copyWith(gender: event.gender));
    } catch (e) {
      rethrow;
    }
  }
}
