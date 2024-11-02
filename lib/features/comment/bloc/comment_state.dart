part of 'comment_bloc.dart';

@Freezed()
class CommentState with _$CommentState {
  const factory CommentState(
      {@Default(UIInitial()) UIStatus status,
      CommentNotification? notification,
      @Default(false) bool loading,
      @Default('') String content,
      @Default(0) int postId,
      @Default(0) int id,
      @Default(false) bool isSuccess,
      @Default('') String errorMessage,
      @Default([]) List<Comment> comments,
      Comment? comment}) = _CommentState;
}
