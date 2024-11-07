part of 'comment_bloc.dart';

@Freezed()
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.getComment() = _getComment;
  const factory CommentEvent.newComment() = _newComment;
  const factory CommentEvent.newCommentForReel() = _newCommentForReel;
  const factory CommentEvent.selectCommentId(int id) = _selectCommentId;
  const factory CommentEvent.likeComment() = _likeComment;
  const factory CommentEvent.selectContent(String content) = _selectContent;
  const factory CommentEvent.selectPostId(int postId) = _selectPostId;
  const factory CommentEvent.selectReelId(int reelId) = _selectReelId;
}
