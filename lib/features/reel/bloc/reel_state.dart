part of 'reel_bloc.dart';

@Freezed()
class ReelState with _$ReelState {
  const factory ReelState(
      {@Default(UIInitial()) UIStatus status,
      ReelNotification? notification,
      @Default(false) bool loading,
      @Default('') String title,
      @Default(0) int reelId,
      @Default('') String video,
      @Default(false) bool isSuccess,
      @Default('') String errorMessage,
      @Default([]) List<Reel> reels,
      @Default([]) List<Reel> getReelByUser,
      @Default([]) List<Reel> getReelByUserId,
      Reel? reel}) = _ReelState;
}
