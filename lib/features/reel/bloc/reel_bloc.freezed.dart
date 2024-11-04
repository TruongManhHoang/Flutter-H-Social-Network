// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReel,
    required TResult Function() newReel,
    required TResult Function(String title) changeTitle,
    required TResult Function(String video) changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReel,
    TResult? Function()? newReel,
    TResult? Function(String title)? changeTitle,
    TResult? Function(String video)? changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReel,
    TResult Function()? newReel,
    TResult Function(String title)? changeTitle,
    TResult Function(String video)? changeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getReel value) getReel,
    required TResult Function(_newReel value) newReel,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeVideo value) changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getReel value)? getReel,
    TResult? Function(_newReel value)? newReel,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeVideo value)? changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getReel value)? getReel,
    TResult Function(_newReel value)? newReel,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeVideo value)? changeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelEventCopyWith<$Res> {
  factory $ReelEventCopyWith(ReelEvent value, $Res Function(ReelEvent) then) =
      _$ReelEventCopyWithImpl<$Res, ReelEvent>;
}

/// @nodoc
class _$ReelEventCopyWithImpl<$Res, $Val extends ReelEvent>
    implements $ReelEventCopyWith<$Res> {
  _$ReelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getReelImplCopyWith<$Res> {
  factory _$$getReelImplCopyWith(
          _$getReelImpl value, $Res Function(_$getReelImpl) then) =
      __$$getReelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getReelImplCopyWithImpl<$Res>
    extends _$ReelEventCopyWithImpl<$Res, _$getReelImpl>
    implements _$$getReelImplCopyWith<$Res> {
  __$$getReelImplCopyWithImpl(
      _$getReelImpl _value, $Res Function(_$getReelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getReelImpl implements _getReel {
  const _$getReelImpl();

  @override
  String toString() {
    return 'ReelEvent.getReel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getReelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReel,
    required TResult Function() newReel,
    required TResult Function(String title) changeTitle,
    required TResult Function(String video) changeVideo,
  }) {
    return getReel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReel,
    TResult? Function()? newReel,
    TResult? Function(String title)? changeTitle,
    TResult? Function(String video)? changeVideo,
  }) {
    return getReel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReel,
    TResult Function()? newReel,
    TResult Function(String title)? changeTitle,
    TResult Function(String video)? changeVideo,
    required TResult orElse(),
  }) {
    if (getReel != null) {
      return getReel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getReel value) getReel,
    required TResult Function(_newReel value) newReel,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeVideo value) changeVideo,
  }) {
    return getReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getReel value)? getReel,
    TResult? Function(_newReel value)? newReel,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeVideo value)? changeVideo,
  }) {
    return getReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getReel value)? getReel,
    TResult Function(_newReel value)? newReel,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeVideo value)? changeVideo,
    required TResult orElse(),
  }) {
    if (getReel != null) {
      return getReel(this);
    }
    return orElse();
  }
}

abstract class _getReel implements ReelEvent {
  const factory _getReel() = _$getReelImpl;
}

/// @nodoc
abstract class _$$newReelImplCopyWith<$Res> {
  factory _$$newReelImplCopyWith(
          _$newReelImpl value, $Res Function(_$newReelImpl) then) =
      __$$newReelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$newReelImplCopyWithImpl<$Res>
    extends _$ReelEventCopyWithImpl<$Res, _$newReelImpl>
    implements _$$newReelImplCopyWith<$Res> {
  __$$newReelImplCopyWithImpl(
      _$newReelImpl _value, $Res Function(_$newReelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$newReelImpl implements _newReel {
  const _$newReelImpl();

  @override
  String toString() {
    return 'ReelEvent.newReel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$newReelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReel,
    required TResult Function() newReel,
    required TResult Function(String title) changeTitle,
    required TResult Function(String video) changeVideo,
  }) {
    return newReel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReel,
    TResult? Function()? newReel,
    TResult? Function(String title)? changeTitle,
    TResult? Function(String video)? changeVideo,
  }) {
    return newReel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReel,
    TResult Function()? newReel,
    TResult Function(String title)? changeTitle,
    TResult Function(String video)? changeVideo,
    required TResult orElse(),
  }) {
    if (newReel != null) {
      return newReel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getReel value) getReel,
    required TResult Function(_newReel value) newReel,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeVideo value) changeVideo,
  }) {
    return newReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getReel value)? getReel,
    TResult? Function(_newReel value)? newReel,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeVideo value)? changeVideo,
  }) {
    return newReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getReel value)? getReel,
    TResult Function(_newReel value)? newReel,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeVideo value)? changeVideo,
    required TResult orElse(),
  }) {
    if (newReel != null) {
      return newReel(this);
    }
    return orElse();
  }
}

abstract class _newReel implements ReelEvent {
  const factory _newReel() = _$newReelImpl;
}

/// @nodoc
abstract class _$$ChangeTitleImplCopyWith<$Res> {
  factory _$$ChangeTitleImplCopyWith(
          _$ChangeTitleImpl value, $Res Function(_$ChangeTitleImpl) then) =
      __$$ChangeTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ChangeTitleImplCopyWithImpl<$Res>
    extends _$ReelEventCopyWithImpl<$Res, _$ChangeTitleImpl>
    implements _$$ChangeTitleImplCopyWith<$Res> {
  __$$ChangeTitleImplCopyWithImpl(
      _$ChangeTitleImpl _value, $Res Function(_$ChangeTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ChangeTitleImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTitleImpl implements _ChangeTitle {
  const _$ChangeTitleImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'ReelEvent.changeTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTitleImplCopyWith<_$ChangeTitleImpl> get copyWith =>
      __$$ChangeTitleImplCopyWithImpl<_$ChangeTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReel,
    required TResult Function() newReel,
    required TResult Function(String title) changeTitle,
    required TResult Function(String video) changeVideo,
  }) {
    return changeTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReel,
    TResult? Function()? newReel,
    TResult? Function(String title)? changeTitle,
    TResult? Function(String video)? changeVideo,
  }) {
    return changeTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReel,
    TResult Function()? newReel,
    TResult Function(String title)? changeTitle,
    TResult Function(String video)? changeVideo,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getReel value) getReel,
    required TResult Function(_newReel value) newReel,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeVideo value) changeVideo,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getReel value)? getReel,
    TResult? Function(_newReel value)? newReel,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeVideo value)? changeVideo,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getReel value)? getReel,
    TResult Function(_newReel value)? newReel,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeVideo value)? changeVideo,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangeTitle implements ReelEvent {
  const factory _ChangeTitle(final String title) = _$ChangeTitleImpl;

  String get title;

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTitleImplCopyWith<_$ChangeTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeVideoImplCopyWith<$Res> {
  factory _$$ChangeVideoImplCopyWith(
          _$ChangeVideoImpl value, $Res Function(_$ChangeVideoImpl) then) =
      __$$ChangeVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String video});
}

/// @nodoc
class __$$ChangeVideoImplCopyWithImpl<$Res>
    extends _$ReelEventCopyWithImpl<$Res, _$ChangeVideoImpl>
    implements _$$ChangeVideoImplCopyWith<$Res> {
  __$$ChangeVideoImplCopyWithImpl(
      _$ChangeVideoImpl _value, $Res Function(_$ChangeVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$ChangeVideoImpl(
      null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeVideoImpl implements _ChangeVideo {
  const _$ChangeVideoImpl(this.video);

  @override
  final String video;

  @override
  String toString() {
    return 'ReelEvent.changeVideo(video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeVideoImpl &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeVideoImplCopyWith<_$ChangeVideoImpl> get copyWith =>
      __$$ChangeVideoImplCopyWithImpl<_$ChangeVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReel,
    required TResult Function() newReel,
    required TResult Function(String title) changeTitle,
    required TResult Function(String video) changeVideo,
  }) {
    return changeVideo(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReel,
    TResult? Function()? newReel,
    TResult? Function(String title)? changeTitle,
    TResult? Function(String video)? changeVideo,
  }) {
    return changeVideo?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReel,
    TResult Function()? newReel,
    TResult Function(String title)? changeTitle,
    TResult Function(String video)? changeVideo,
    required TResult orElse(),
  }) {
    if (changeVideo != null) {
      return changeVideo(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getReel value) getReel,
    required TResult Function(_newReel value) newReel,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeVideo value) changeVideo,
  }) {
    return changeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getReel value)? getReel,
    TResult? Function(_newReel value)? newReel,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeVideo value)? changeVideo,
  }) {
    return changeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getReel value)? getReel,
    TResult Function(_newReel value)? newReel,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeVideo value)? changeVideo,
    required TResult orElse(),
  }) {
    if (changeVideo != null) {
      return changeVideo(this);
    }
    return orElse();
  }
}

abstract class _ChangeVideo implements ReelEvent {
  const factory _ChangeVideo(final String video) = _$ChangeVideoImpl;

  String get video;

  /// Create a copy of ReelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeVideoImplCopyWith<_$ChangeVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReelState {
  UIStatus get status => throw _privateConstructorUsedError;
  ReelNotification? get notification => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Reel> get reels => throw _privateConstructorUsedError;
  Reel? get reel => throw _privateConstructorUsedError;

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReelStateCopyWith<ReelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelStateCopyWith<$Res> {
  factory $ReelStateCopyWith(ReelState value, $Res Function(ReelState) then) =
      _$ReelStateCopyWithImpl<$Res, ReelState>;
  @useResult
  $Res call(
      {UIStatus status,
      ReelNotification? notification,
      bool loading,
      String title,
      String video,
      bool isSuccess,
      String errorMessage,
      List<Reel> reels,
      Reel? reel});

  $UIStatusCopyWith<$Res> get status;
  $ReelNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class _$ReelStateCopyWithImpl<$Res, $Val extends ReelState>
    implements $ReelStateCopyWith<$Res> {
  _$ReelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? title = null,
    Object? video = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? reels = null,
    Object? reel = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ReelNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      reels: null == reels
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<Reel>,
      reel: freezed == reel
          ? _value.reel
          : reel // ignore: cast_nullable_to_non_nullable
              as Reel?,
    ) as $Val);
  }

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReelNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $ReelNotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReelStateImplCopyWith<$Res>
    implements $ReelStateCopyWith<$Res> {
  factory _$$ReelStateImplCopyWith(
          _$ReelStateImpl value, $Res Function(_$ReelStateImpl) then) =
      __$$ReelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      ReelNotification? notification,
      bool loading,
      String title,
      String video,
      bool isSuccess,
      String errorMessage,
      List<Reel> reels,
      Reel? reel});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $ReelNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$ReelStateImplCopyWithImpl<$Res>
    extends _$ReelStateCopyWithImpl<$Res, _$ReelStateImpl>
    implements _$$ReelStateImplCopyWith<$Res> {
  __$$ReelStateImplCopyWithImpl(
      _$ReelStateImpl _value, $Res Function(_$ReelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? title = null,
    Object? video = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? reels = null,
    Object? reel = freezed,
  }) {
    return _then(_$ReelStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ReelNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      reels: null == reels
          ? _value._reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<Reel>,
      reel: freezed == reel
          ? _value.reel
          : reel // ignore: cast_nullable_to_non_nullable
              as Reel?,
    ));
  }
}

/// @nodoc

class _$ReelStateImpl implements _ReelState {
  const _$ReelStateImpl(
      {this.status = const UIInitial(),
      this.notification,
      this.loading = false,
      this.title = '',
      this.video = '',
      this.isSuccess = false,
      this.errorMessage = '',
      final List<Reel> reels = const [],
      this.reel})
      : _reels = reels;

  @override
  @JsonKey()
  final UIStatus status;
  @override
  final ReelNotification? notification;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String video;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Reel> _reels;
  @override
  @JsonKey()
  List<Reel> get reels {
    if (_reels is EqualUnmodifiableListView) return _reels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reels);
  }

  @override
  final Reel? reel;

  @override
  String toString() {
    return 'ReelState(status: $status, notification: $notification, loading: $loading, title: $title, video: $video, isSuccess: $isSuccess, errorMessage: $errorMessage, reels: $reels, reel: $reel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReelStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._reels, _reels) &&
            (identical(other.reel, reel) || other.reel == reel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notification,
      loading,
      title,
      video,
      isSuccess,
      errorMessage,
      const DeepCollectionEquality().hash(_reels),
      reel);

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReelStateImplCopyWith<_$ReelStateImpl> get copyWith =>
      __$$ReelStateImplCopyWithImpl<_$ReelStateImpl>(this, _$identity);
}

abstract class _ReelState implements ReelState {
  const factory _ReelState(
      {final UIStatus status,
      final ReelNotification? notification,
      final bool loading,
      final String title,
      final String video,
      final bool isSuccess,
      final String errorMessage,
      final List<Reel> reels,
      final Reel? reel}) = _$ReelStateImpl;

  @override
  UIStatus get status;
  @override
  ReelNotification? get notification;
  @override
  bool get loading;
  @override
  String get title;
  @override
  String get video;
  @override
  bool get isSuccess;
  @override
  String get errorMessage;
  @override
  List<Reel> get reels;
  @override
  Reel? get reel;

  /// Create a copy of ReelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReelStateImplCopyWith<_$ReelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReelNotification {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) insertSuccess,
    required TResult Function(String message) insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? insertSuccess,
    TResult? Function(String message)? insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? insertSuccess,
    TResult Function(String message)? insertFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInsertSuccess value) insertSuccess,
    required TResult Function(_NotificationInsertFailed value) insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult? Function(_NotificationInsertFailed value)? insertFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult Function(_NotificationInsertFailed value)? insertFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReelNotificationCopyWith<ReelNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelNotificationCopyWith<$Res> {
  factory $ReelNotificationCopyWith(
          ReelNotification value, $Res Function(ReelNotification) then) =
      _$ReelNotificationCopyWithImpl<$Res, ReelNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ReelNotificationCopyWithImpl<$Res, $Val extends ReelNotification>
    implements $ReelNotificationCopyWith<$Res> {
  _$ReelNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationInsertSuccessImplCopyWith<$Res>
    implements $ReelNotificationCopyWith<$Res> {
  factory _$$NotificationInsertSuccessImplCopyWith(
          _$NotificationInsertSuccessImpl value,
          $Res Function(_$NotificationInsertSuccessImpl) then) =
      __$$NotificationInsertSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationInsertSuccessImplCopyWithImpl<$Res>
    extends _$ReelNotificationCopyWithImpl<$Res,
        _$NotificationInsertSuccessImpl>
    implements _$$NotificationInsertSuccessImplCopyWith<$Res> {
  __$$NotificationInsertSuccessImplCopyWithImpl(
      _$NotificationInsertSuccessImpl _value,
      $Res Function(_$NotificationInsertSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationInsertSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationInsertSuccessImpl implements _NotificationInsertSuccess {
  _$NotificationInsertSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ReelNotification.insertSuccess(message: $message)';
  }

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInsertSuccessImplCopyWith<_$NotificationInsertSuccessImpl>
      get copyWith => __$$NotificationInsertSuccessImplCopyWithImpl<
          _$NotificationInsertSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) insertSuccess,
    required TResult Function(String message) insertFailed,
  }) {
    return insertSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? insertSuccess,
    TResult? Function(String message)? insertFailed,
  }) {
    return insertSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? insertSuccess,
    TResult Function(String message)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertSuccess != null) {
      return insertSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInsertSuccess value) insertSuccess,
    required TResult Function(_NotificationInsertFailed value) insertFailed,
  }) {
    return insertSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult? Function(_NotificationInsertFailed value)? insertFailed,
  }) {
    return insertSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult Function(_NotificationInsertFailed value)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertSuccess != null) {
      return insertSuccess(this);
    }
    return orElse();
  }
}

abstract class _NotificationInsertSuccess implements ReelNotification {
  factory _NotificationInsertSuccess({required final String message}) =
      _$NotificationInsertSuccessImpl;

  @override
  String get message;

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertSuccessImplCopyWith<_$NotificationInsertSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationInsertFailedImplCopyWith<$Res>
    implements $ReelNotificationCopyWith<$Res> {
  factory _$$NotificationInsertFailedImplCopyWith(
          _$NotificationInsertFailedImpl value,
          $Res Function(_$NotificationInsertFailedImpl) then) =
      __$$NotificationInsertFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationInsertFailedImplCopyWithImpl<$Res>
    extends _$ReelNotificationCopyWithImpl<$Res, _$NotificationInsertFailedImpl>
    implements _$$NotificationInsertFailedImplCopyWith<$Res> {
  __$$NotificationInsertFailedImplCopyWithImpl(
      _$NotificationInsertFailedImpl _value,
      $Res Function(_$NotificationInsertFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationInsertFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationInsertFailedImpl implements _NotificationInsertFailed {
  _$NotificationInsertFailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ReelNotification.insertFailed(message: $message)';
  }

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInsertFailedImplCopyWith<_$NotificationInsertFailedImpl>
      get copyWith => __$$NotificationInsertFailedImplCopyWithImpl<
          _$NotificationInsertFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) insertSuccess,
    required TResult Function(String message) insertFailed,
  }) {
    return insertFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? insertSuccess,
    TResult? Function(String message)? insertFailed,
  }) {
    return insertFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? insertSuccess,
    TResult Function(String message)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertFailed != null) {
      return insertFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInsertSuccess value) insertSuccess,
    required TResult Function(_NotificationInsertFailed value) insertFailed,
  }) {
    return insertFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult? Function(_NotificationInsertFailed value)? insertFailed,
  }) {
    return insertFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInsertSuccess value)? insertSuccess,
    TResult Function(_NotificationInsertFailed value)? insertFailed,
    required TResult orElse(),
  }) {
    if (insertFailed != null) {
      return insertFailed(this);
    }
    return orElse();
  }
}

abstract class _NotificationInsertFailed implements ReelNotification {
  factory _NotificationInsertFailed({required final String message}) =
      _$NotificationInsertFailedImpl;

  @override
  String get message;

  /// Create a copy of ReelNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertFailedImplCopyWith<_$NotificationInsertFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
