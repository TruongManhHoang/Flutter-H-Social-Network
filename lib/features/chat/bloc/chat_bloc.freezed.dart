// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChat,
    required TResult Function() newChat,
    required TResult Function(String chatName) changeChatName,
    required TResult Function(int chatId) changeChatId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChat,
    TResult? Function()? newChat,
    TResult? Function(String chatName)? changeChatName,
    TResult? Function(int chatId)? changeChatId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChat,
    TResult Function()? newChat,
    TResult Function(String chatName)? changeChatName,
    TResult Function(int chatId)? changeChatId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getChat value) getChat,
    required TResult Function(_newChat value) newChat,
    required TResult Function(_ChangeChatName value) changeChatName,
    required TResult Function(_ChangeChatId value) changeChatId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getChat value)? getChat,
    TResult? Function(_newChat value)? newChat,
    TResult? Function(_ChangeChatName value)? changeChatName,
    TResult? Function(_ChangeChatId value)? changeChatId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getChat value)? getChat,
    TResult Function(_newChat value)? newChat,
    TResult Function(_ChangeChatName value)? changeChatName,
    TResult Function(_ChangeChatId value)? changeChatId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getChatImplCopyWith<$Res> {
  factory _$$getChatImplCopyWith(
          _$getChatImpl value, $Res Function(_$getChatImpl) then) =
      __$$getChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$getChatImpl>
    implements _$$getChatImplCopyWith<$Res> {
  __$$getChatImplCopyWithImpl(
      _$getChatImpl _value, $Res Function(_$getChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getChatImpl implements _getChat {
  const _$getChatImpl();

  @override
  String toString() {
    return 'ChatEvent.getChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChat,
    required TResult Function() newChat,
    required TResult Function(String chatName) changeChatName,
    required TResult Function(int chatId) changeChatId,
  }) {
    return getChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChat,
    TResult? Function()? newChat,
    TResult? Function(String chatName)? changeChatName,
    TResult? Function(int chatId)? changeChatId,
  }) {
    return getChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChat,
    TResult Function()? newChat,
    TResult Function(String chatName)? changeChatName,
    TResult Function(int chatId)? changeChatId,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getChat value) getChat,
    required TResult Function(_newChat value) newChat,
    required TResult Function(_ChangeChatName value) changeChatName,
    required TResult Function(_ChangeChatId value) changeChatId,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getChat value)? getChat,
    TResult? Function(_newChat value)? newChat,
    TResult? Function(_ChangeChatName value)? changeChatName,
    TResult? Function(_ChangeChatId value)? changeChatId,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getChat value)? getChat,
    TResult Function(_newChat value)? newChat,
    TResult Function(_ChangeChatName value)? changeChatName,
    TResult Function(_ChangeChatId value)? changeChatId,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(this);
    }
    return orElse();
  }
}

abstract class _getChat implements ChatEvent {
  const factory _getChat() = _$getChatImpl;
}

/// @nodoc
abstract class _$$newChatImplCopyWith<$Res> {
  factory _$$newChatImplCopyWith(
          _$newChatImpl value, $Res Function(_$newChatImpl) then) =
      __$$newChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$newChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$newChatImpl>
    implements _$$newChatImplCopyWith<$Res> {
  __$$newChatImplCopyWithImpl(
      _$newChatImpl _value, $Res Function(_$newChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$newChatImpl implements _newChat {
  const _$newChatImpl();

  @override
  String toString() {
    return 'ChatEvent.newChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$newChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChat,
    required TResult Function() newChat,
    required TResult Function(String chatName) changeChatName,
    required TResult Function(int chatId) changeChatId,
  }) {
    return newChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChat,
    TResult? Function()? newChat,
    TResult? Function(String chatName)? changeChatName,
    TResult? Function(int chatId)? changeChatId,
  }) {
    return newChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChat,
    TResult Function()? newChat,
    TResult Function(String chatName)? changeChatName,
    TResult Function(int chatId)? changeChatId,
    required TResult orElse(),
  }) {
    if (newChat != null) {
      return newChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getChat value) getChat,
    required TResult Function(_newChat value) newChat,
    required TResult Function(_ChangeChatName value) changeChatName,
    required TResult Function(_ChangeChatId value) changeChatId,
  }) {
    return newChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getChat value)? getChat,
    TResult? Function(_newChat value)? newChat,
    TResult? Function(_ChangeChatName value)? changeChatName,
    TResult? Function(_ChangeChatId value)? changeChatId,
  }) {
    return newChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getChat value)? getChat,
    TResult Function(_newChat value)? newChat,
    TResult Function(_ChangeChatName value)? changeChatName,
    TResult Function(_ChangeChatId value)? changeChatId,
    required TResult orElse(),
  }) {
    if (newChat != null) {
      return newChat(this);
    }
    return orElse();
  }
}

abstract class _newChat implements ChatEvent {
  const factory _newChat() = _$newChatImpl;
}

/// @nodoc
abstract class _$$ChangeChatNameImplCopyWith<$Res> {
  factory _$$ChangeChatNameImplCopyWith(_$ChangeChatNameImpl value,
          $Res Function(_$ChangeChatNameImpl) then) =
      __$$ChangeChatNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatName});
}

/// @nodoc
class __$$ChangeChatNameImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChangeChatNameImpl>
    implements _$$ChangeChatNameImplCopyWith<$Res> {
  __$$ChangeChatNameImplCopyWithImpl(
      _$ChangeChatNameImpl _value, $Res Function(_$ChangeChatNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = null,
  }) {
    return _then(_$ChangeChatNameImpl(
      null == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeChatNameImpl implements _ChangeChatName {
  const _$ChangeChatNameImpl(this.chatName);

  @override
  final String chatName;

  @override
  String toString() {
    return 'ChatEvent.changeChatName(chatName: $chatName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeChatNameImpl &&
            (identical(other.chatName, chatName) ||
                other.chatName == chatName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatName);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeChatNameImplCopyWith<_$ChangeChatNameImpl> get copyWith =>
      __$$ChangeChatNameImplCopyWithImpl<_$ChangeChatNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChat,
    required TResult Function() newChat,
    required TResult Function(String chatName) changeChatName,
    required TResult Function(int chatId) changeChatId,
  }) {
    return changeChatName(chatName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChat,
    TResult? Function()? newChat,
    TResult? Function(String chatName)? changeChatName,
    TResult? Function(int chatId)? changeChatId,
  }) {
    return changeChatName?.call(chatName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChat,
    TResult Function()? newChat,
    TResult Function(String chatName)? changeChatName,
    TResult Function(int chatId)? changeChatId,
    required TResult orElse(),
  }) {
    if (changeChatName != null) {
      return changeChatName(chatName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getChat value) getChat,
    required TResult Function(_newChat value) newChat,
    required TResult Function(_ChangeChatName value) changeChatName,
    required TResult Function(_ChangeChatId value) changeChatId,
  }) {
    return changeChatName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getChat value)? getChat,
    TResult? Function(_newChat value)? newChat,
    TResult? Function(_ChangeChatName value)? changeChatName,
    TResult? Function(_ChangeChatId value)? changeChatId,
  }) {
    return changeChatName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getChat value)? getChat,
    TResult Function(_newChat value)? newChat,
    TResult Function(_ChangeChatName value)? changeChatName,
    TResult Function(_ChangeChatId value)? changeChatId,
    required TResult orElse(),
  }) {
    if (changeChatName != null) {
      return changeChatName(this);
    }
    return orElse();
  }
}

abstract class _ChangeChatName implements ChatEvent {
  const factory _ChangeChatName(final String chatName) = _$ChangeChatNameImpl;

  String get chatName;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeChatNameImplCopyWith<_$ChangeChatNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeChatIdImplCopyWith<$Res> {
  factory _$$ChangeChatIdImplCopyWith(
          _$ChangeChatIdImpl value, $Res Function(_$ChangeChatIdImpl) then) =
      __$$ChangeChatIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$ChangeChatIdImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChangeChatIdImpl>
    implements _$$ChangeChatIdImplCopyWith<$Res> {
  __$$ChangeChatIdImplCopyWithImpl(
      _$ChangeChatIdImpl _value, $Res Function(_$ChangeChatIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$ChangeChatIdImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeChatIdImpl implements _ChangeChatId {
  const _$ChangeChatIdImpl(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatEvent.changeChatId(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeChatIdImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeChatIdImplCopyWith<_$ChangeChatIdImpl> get copyWith =>
      __$$ChangeChatIdImplCopyWithImpl<_$ChangeChatIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChat,
    required TResult Function() newChat,
    required TResult Function(String chatName) changeChatName,
    required TResult Function(int chatId) changeChatId,
  }) {
    return changeChatId(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChat,
    TResult? Function()? newChat,
    TResult? Function(String chatName)? changeChatName,
    TResult? Function(int chatId)? changeChatId,
  }) {
    return changeChatId?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChat,
    TResult Function()? newChat,
    TResult Function(String chatName)? changeChatName,
    TResult Function(int chatId)? changeChatId,
    required TResult orElse(),
  }) {
    if (changeChatId != null) {
      return changeChatId(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getChat value) getChat,
    required TResult Function(_newChat value) newChat,
    required TResult Function(_ChangeChatName value) changeChatName,
    required TResult Function(_ChangeChatId value) changeChatId,
  }) {
    return changeChatId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getChat value)? getChat,
    TResult? Function(_newChat value)? newChat,
    TResult? Function(_ChangeChatName value)? changeChatName,
    TResult? Function(_ChangeChatId value)? changeChatId,
  }) {
    return changeChatId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getChat value)? getChat,
    TResult Function(_newChat value)? newChat,
    TResult Function(_ChangeChatName value)? changeChatName,
    TResult Function(_ChangeChatId value)? changeChatId,
    required TResult orElse(),
  }) {
    if (changeChatId != null) {
      return changeChatId(this);
    }
    return orElse();
  }
}

abstract class _ChangeChatId implements ChatEvent {
  const factory _ChangeChatId(final int chatId) = _$ChangeChatIdImpl;

  int get chatId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeChatIdImplCopyWith<_$ChangeChatIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  UIStatus get status => throw _privateConstructorUsedError;
  ChatNotification? get notification => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get ChatName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Chat> get chats => throw _privateConstructorUsedError;
  Chat? get chat => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {UIStatus status,
      ChatNotification? notification,
      bool loading,
      String ChatName,
      int id,
      String video,
      bool isSuccess,
      String errorMessage,
      List<Chat> chats,
      Chat? chat});

  $UIStatusCopyWith<$Res> get status;
  $ChatNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? ChatName = null,
    Object? id = null,
    Object? video = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? chats = null,
    Object? chat = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ChatNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      ChatName: null == ChatName
          ? _value.ChatName
          : ChatName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ) as $Val);
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $ChatNotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      ChatNotification? notification,
      bool loading,
      String ChatName,
      int id,
      String video,
      bool isSuccess,
      String errorMessage,
      List<Chat> chats,
      Chat? chat});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $ChatNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? ChatName = null,
    Object? id = null,
    Object? video = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? chats = null,
    Object? chat = freezed,
  }) {
    return _then(_$ChatStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ChatNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      ChatName: null == ChatName
          ? _value.ChatName
          : ChatName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.status = const UIInitial(),
      this.notification,
      this.loading = false,
      this.ChatName = '',
      this.id = 0,
      this.video = '',
      this.isSuccess = false,
      this.errorMessage = '',
      final List<Chat> chats = const [],
      this.chat})
      : _chats = chats;

  @override
  @JsonKey()
  final UIStatus status;
  @override
  final ChatNotification? notification;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String ChatName;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String video;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Chat> _chats;
  @override
  @JsonKey()
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final Chat? chat;

  @override
  String toString() {
    return 'ChatState(status: $status, notification: $notification, loading: $loading, ChatName: $ChatName, id: $id, video: $video, isSuccess: $isSuccess, errorMessage: $errorMessage, chats: $chats, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.ChatName, ChatName) ||
                other.ChatName == ChatName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notification,
      loading,
      ChatName,
      id,
      video,
      isSuccess,
      errorMessage,
      const DeepCollectionEquality().hash(_chats),
      chat);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final UIStatus status,
      final ChatNotification? notification,
      final bool loading,
      final String ChatName,
      final int id,
      final String video,
      final bool isSuccess,
      final String errorMessage,
      final List<Chat> chats,
      final Chat? chat}) = _$ChatStateImpl;

  @override
  UIStatus get status;
  @override
  ChatNotification? get notification;
  @override
  bool get loading;
  @override
  String get ChatName;
  @override
  int get id;
  @override
  String get video;
  @override
  bool get isSuccess;
  @override
  String get errorMessage;
  @override
  List<Chat> get chats;
  @override
  Chat? get chat;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatNotification {
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

  /// Create a copy of ChatNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatNotificationCopyWith<ChatNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatNotificationCopyWith<$Res> {
  factory $ChatNotificationCopyWith(
          ChatNotification value, $Res Function(ChatNotification) then) =
      _$ChatNotificationCopyWithImpl<$Res, ChatNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ChatNotificationCopyWithImpl<$Res, $Val extends ChatNotification>
    implements $ChatNotificationCopyWith<$Res> {
  _$ChatNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatNotification
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
    implements $ChatNotificationCopyWith<$Res> {
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
    extends _$ChatNotificationCopyWithImpl<$Res,
        _$NotificationInsertSuccessImpl>
    implements _$$NotificationInsertSuccessImplCopyWith<$Res> {
  __$$NotificationInsertSuccessImplCopyWithImpl(
      _$NotificationInsertSuccessImpl _value,
      $Res Function(_$NotificationInsertSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatNotification
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
    return 'ChatNotification.insertSuccess(message: $message)';
  }

  /// Create a copy of ChatNotification
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

abstract class _NotificationInsertSuccess implements ChatNotification {
  factory _NotificationInsertSuccess({required final String message}) =
      _$NotificationInsertSuccessImpl;

  @override
  String get message;

  /// Create a copy of ChatNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertSuccessImplCopyWith<_$NotificationInsertSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationInsertFailedImplCopyWith<$Res>
    implements $ChatNotificationCopyWith<$Res> {
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
    extends _$ChatNotificationCopyWithImpl<$Res, _$NotificationInsertFailedImpl>
    implements _$$NotificationInsertFailedImplCopyWith<$Res> {
  __$$NotificationInsertFailedImplCopyWithImpl(
      _$NotificationInsertFailedImpl _value,
      $Res Function(_$NotificationInsertFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatNotification
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
    return 'ChatNotification.insertFailed(message: $message)';
  }

  /// Create a copy of ChatNotification
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

abstract class _NotificationInsertFailed implements ChatNotification {
  factory _NotificationInsertFailed({required final String message}) =
      _$NotificationInsertFailedImpl;

  @override
  String get message;

  /// Create a copy of ChatNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertFailedImplCopyWith<_$NotificationInsertFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
