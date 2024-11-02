part of 'user_bloc.dart';

@Freezed()
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser() = _getUser;
  const factory UserEvent.newUser() = _newUser;
  const factory UserEvent.getProfileUser() = _getProfileUser;
  const factory UserEvent.updateProfileUser() = _updateProfileUser;
  const factory UserEvent.searchUser(String name) = _searchUser;

  const factory UserEvent.changeFirstName(String firstName) = _changeFirstName;
  const factory UserEvent.changeId(int id) = _changeId;
  const factory UserEvent.changeLastName(String lastName) = _changeLastName;
  const factory UserEvent.changeEmail(String email) = _changeEmail;
  const factory UserEvent.changeGender(String gender) = _changGender;
  const factory UserEvent.changePassword(String password) = _changePassword;
  const factory UserEvent.changeClientUser(User clientUser) = _changeClientUser;

  // const factory HomeEvent.changePassword(String password) = _ChangePassword;
  // const factory HomeEvent.login() = _Login;
}
