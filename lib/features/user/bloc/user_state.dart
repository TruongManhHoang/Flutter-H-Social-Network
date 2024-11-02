part of 'user_bloc.dart';

@Freezed()
class UserState with _$UserState {
  const factory UserState({
    @Default(UIInitial()) UIStatus status,
    UserNotification? notification,
    @Default(false) bool loading,
    @Default(0) int id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String gender,
    @Default('') String password,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default([]) List<User> users,
    @Default([]) List<User> searchUsers,
    @Default('') String textSearch,
    User? user,
    User? clientUser,
  }) = _UserState;
}
