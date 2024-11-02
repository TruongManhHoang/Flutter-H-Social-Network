part of 'login_bloc.dart';

@Freezed()
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeEmail(String email) = _ChangeEmail;
  const factory LoginEvent.changePassword(String password) = _ChangePassword;
  const factory LoginEvent.login() = _Login;
}
