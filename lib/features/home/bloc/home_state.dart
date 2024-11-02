part of 'home_bloc.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(UIInitial()) UIStatus status,
    HomeNotification? notification,
    @Default(false) bool loading,
    @Default(false) bool toLoad,
    @Default('') String caption,
    @Default('') String image,
    @Default('') String video,
    @Default(0) int postId,
    @Default(0) int userId,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default([]) List<Post> Posts,
    @Default([]) List<Post> getPostByUser,
    @Default([]) List<Post> getPostByUserId,
    Post? post,
  }) = _HomeState;
}
