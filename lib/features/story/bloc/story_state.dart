part of 'story_bloc.dart';

@Freezed()
class StoryState with _$StoryState {
  const factory StoryState({
    @Default(UIInitial()) UIStatus status,
    StoryNotification? notification,
    @Default(false) bool loading,
    @Default('') String caption,
    @Default('') String image,
    @Default('') String video,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    @Default([]) List<Story> stories,
    Story? story,
  }) = _StoryState;
}
