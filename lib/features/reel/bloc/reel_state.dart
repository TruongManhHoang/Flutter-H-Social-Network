part of 'reel_bloc.dart';

@Freezed()
class ReelState with _$ReelState {
  const factory ReelState({
    @Default(UIInitial()) UIStatus status,
    ReelNotification? notification,
    @Default(false) bool loading,
    @Default('') String caption,
    @Default('') String image,
    @Default('') String video,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
    Post? post,
  }) = _ReelState;
}
