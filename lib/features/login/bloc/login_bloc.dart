import 'dart:async';
import 'package:boilerplate/core/bloc_core/ui_status.dart';
import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
// import 'package:jwt_decode/jwt_decode.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';
part 'login_notification.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
      {required AuthService authService,
      required LocalStorageService localStorageService})
      : super(const LoginState()) {
    _authService = authService;
    _localStorageService = localStorageService;
    on<_ChangeEmail>(_onChangeEmail);
    on<_ChangePassword>(_onChangePassword);
    on<_Login>(_onLogin);
  }

  late final AuthService _authService;
  late final LocalStorageService _localStorageService;

  void _onChangeEmail(_ChangeEmail event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _onChangePassword(_ChangePassword event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  Future<bool> _onLogin(_Login event, Emitter<LoginState> emit) async {
    try {
      emit(
        state.copyWith(loading: true, notification: null),
      );
      dynamic payload = {'email': state.email, 'password': state.password};
      dynamic response = await _authService.login(payload);
      await _localStorageService.setValue(
          key: AppKeys.token, value: response.data['token']);
      // Map<String, dynamic> user = Jwt.parseJwt(response.toString());
      // await _localStorageService.setValue(
      //     key: AppKeys.userId, value: user['id']);

      emit(
        state.copyWith(
            loading: false,
            isSuccess: true,
            notification: _NotificationInsertSuccess(
              message: 'Login Successful',
            )),
      );
      return true;
    } catch (e, s) {
      emit(
        state.copyWith(
          loading: false,
          notification: _NotificationInsertFailed(
            message: e.toString(),
          ),
        ),
      );
      return false;
    }
  }
}
