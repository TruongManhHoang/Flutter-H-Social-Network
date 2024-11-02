// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getPostImplCopyWith<$Res> {
  factory _$$getPostImplCopyWith(
          _$getPostImpl value, $Res Function(_$getPostImpl) then) =
      __$$getPostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getPostImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getPostImpl>
    implements _$$getPostImplCopyWith<$Res> {
  __$$getPostImplCopyWithImpl(
      _$getPostImpl _value, $Res Function(_$getPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getPostImpl implements _getPost {
  const _$getPostImpl();

  @override
  String toString() {
    return 'HomeEvent.getPost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getPostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return getPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return getPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (getPost != null) {
      return getPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return getPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return getPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (getPost != null) {
      return getPost(this);
    }
    return orElse();
  }
}

abstract class _getPost implements HomeEvent {
  const factory _getPost() = _$getPostImpl;
}

/// @nodoc
abstract class _$$newPostImplCopyWith<$Res> {
  factory _$$newPostImplCopyWith(
          _$newPostImpl value, $Res Function(_$newPostImpl) then) =
      __$$newPostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$newPostImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$newPostImpl>
    implements _$$newPostImplCopyWith<$Res> {
  __$$newPostImplCopyWithImpl(
      _$newPostImpl _value, $Res Function(_$newPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$newPostImpl implements _newPost {
  const _$newPostImpl();

  @override
  String toString() {
    return 'HomeEvent.newPost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$newPostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return newPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return newPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (newPost != null) {
      return newPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return newPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return newPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (newPost != null) {
      return newPost(this);
    }
    return orElse();
  }
}

abstract class _newPost implements HomeEvent {
  const factory _newPost() = _$newPostImpl;
}

/// @nodoc
abstract class _$$deletePostImplCopyWith<$Res> {
  factory _$$deletePostImplCopyWith(
          _$deletePostImpl value, $Res Function(_$deletePostImpl) then) =
      __$$deletePostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$deletePostImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$deletePostImpl>
    implements _$$deletePostImplCopyWith<$Res> {
  __$$deletePostImplCopyWithImpl(
      _$deletePostImpl _value, $Res Function(_$deletePostImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$deletePostImpl implements _deletePost {
  const _$deletePostImpl();

  @override
  String toString() {
    return 'HomeEvent.deletePost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$deletePostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return deletePost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return deletePost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return deletePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class _deletePost implements HomeEvent {
  const factory _deletePost() = _$deletePostImpl;
}

/// @nodoc
abstract class _$$likePostImplCopyWith<$Res> {
  factory _$$likePostImplCopyWith(
          _$likePostImpl value, $Res Function(_$likePostImpl) then) =
      __$$likePostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$likePostImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$likePostImpl>
    implements _$$likePostImplCopyWith<$Res> {
  __$$likePostImplCopyWithImpl(
      _$likePostImpl _value, $Res Function(_$likePostImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$likePostImpl implements _likePost {
  const _$likePostImpl();

  @override
  String toString() {
    return 'HomeEvent.likePost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$likePostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return likePost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return likePost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class _likePost implements HomeEvent {
  const factory _likePost() = _$likePostImpl;
}

/// @nodoc
abstract class _$$savePostImplCopyWith<$Res> {
  factory _$$savePostImplCopyWith(
          _$savePostImpl value, $Res Function(_$savePostImpl) then) =
      __$$savePostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$savePostImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$savePostImpl>
    implements _$$savePostImplCopyWith<$Res> {
  __$$savePostImplCopyWithImpl(
      _$savePostImpl _value, $Res Function(_$savePostImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$savePostImpl implements _savePost {
  const _$savePostImpl();

  @override
  String toString() {
    return 'HomeEvent.savePost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$savePostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return savePost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return savePost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return savePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class _savePost implements HomeEvent {
  const factory _savePost() = _$savePostImpl;
}

/// @nodoc
abstract class _$$getPostUserImplCopyWith<$Res> {
  factory _$$getPostUserImplCopyWith(
          _$getPostUserImpl value, $Res Function(_$getPostUserImpl) then) =
      __$$getPostUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getPostUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getPostUserImpl>
    implements _$$getPostUserImplCopyWith<$Res> {
  __$$getPostUserImplCopyWithImpl(
      _$getPostUserImpl _value, $Res Function(_$getPostUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getPostUserImpl implements _getPostUser {
  const _$getPostUserImpl();

  @override
  String toString() {
    return 'HomeEvent.getPostByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getPostUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return getPostByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return getPostByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (getPostByUser != null) {
      return getPostByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return getPostByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return getPostByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (getPostByUser != null) {
      return getPostByUser(this);
    }
    return orElse();
  }
}

abstract class _getPostUser implements HomeEvent {
  const factory _getPostUser() = _$getPostUserImpl;
}

/// @nodoc
abstract class _$$getPostUserIdImplCopyWith<$Res> {
  factory _$$getPostUserIdImplCopyWith(
          _$getPostUserIdImpl value, $Res Function(_$getPostUserIdImpl) then) =
      __$$getPostUserIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getPostUserIdImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getPostUserIdImpl>
    implements _$$getPostUserIdImplCopyWith<$Res> {
  __$$getPostUserIdImplCopyWithImpl(
      _$getPostUserIdImpl _value, $Res Function(_$getPostUserIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getPostUserIdImpl implements _getPostUserId {
  const _$getPostUserIdImpl();

  @override
  String toString() {
    return 'HomeEvent.getPostByUserId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getPostUserIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return getPostByUserId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return getPostByUserId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (getPostByUserId != null) {
      return getPostByUserId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return getPostByUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return getPostByUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (getPostByUserId != null) {
      return getPostByUserId(this);
    }
    return orElse();
  }
}

abstract class _getPostUserId implements HomeEvent {
  const factory _getPostUserId() = _$getPostUserIdImpl;
}

/// @nodoc
abstract class _$$ChangeCaptionImplCopyWith<$Res> {
  factory _$$ChangeCaptionImplCopyWith(
          _$ChangeCaptionImpl value, $Res Function(_$ChangeCaptionImpl) then) =
      __$$ChangeCaptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String caption});
}

/// @nodoc
class __$$ChangeCaptionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeCaptionImpl>
    implements _$$ChangeCaptionImplCopyWith<$Res> {
  __$$ChangeCaptionImplCopyWithImpl(
      _$ChangeCaptionImpl _value, $Res Function(_$ChangeCaptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
  }) {
    return _then(_$ChangeCaptionImpl(
      null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCaptionImpl implements _ChangeCaption {
  const _$ChangeCaptionImpl(this.caption);

  @override
  final String caption;

  @override
  String toString() {
    return 'HomeEvent.changeCaption(caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCaptionImpl &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCaptionImplCopyWith<_$ChangeCaptionImpl> get copyWith =>
      __$$ChangeCaptionImplCopyWithImpl<_$ChangeCaptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return changeCaption(caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return changeCaption?.call(caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeCaption != null) {
      return changeCaption(caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return changeCaption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return changeCaption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeCaption != null) {
      return changeCaption(this);
    }
    return orElse();
  }
}

abstract class _ChangeCaption implements HomeEvent {
  const factory _ChangeCaption(final String caption) = _$ChangeCaptionImpl;

  String get caption;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCaptionImplCopyWith<_$ChangeCaptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeImageImplCopyWith<$Res> {
  factory _$$ChangeImageImplCopyWith(
          _$ChangeImageImpl value, $Res Function(_$ChangeImageImpl) then) =
      __$$ChangeImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$ChangeImageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeImageImpl>
    implements _$$ChangeImageImplCopyWith<$Res> {
  __$$ChangeImageImplCopyWithImpl(
      _$ChangeImageImpl _value, $Res Function(_$ChangeImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ChangeImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeImageImpl implements _ChangeImage {
  const _$ChangeImageImpl(this.image);

  @override
  final String image;

  @override
  String toString() {
    return 'HomeEvent.changeImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImageImplCopyWith<_$ChangeImageImpl> get copyWith =>
      __$$ChangeImageImplCopyWithImpl<_$ChangeImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return changeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return changeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class _ChangeImage implements HomeEvent {
  const factory _ChangeImage(final String image) = _$ChangeImageImpl;

  String get image;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeImageImplCopyWith<_$ChangeImageImpl> get copyWith =>
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
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeVideoImpl>
    implements _$$ChangeVideoImplCopyWith<$Res> {
  __$$ChangeVideoImplCopyWithImpl(
      _$ChangeVideoImpl _value, $Res Function(_$ChangeVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
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
    return 'HomeEvent.changeVideo(video: $video)';
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

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeVideoImplCopyWith<_$ChangeVideoImpl> get copyWith =>
      __$$ChangeVideoImplCopyWithImpl<_$ChangeVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return changeVideo(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return changeVideo?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
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
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return changeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return changeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeVideo != null) {
      return changeVideo(this);
    }
    return orElse();
  }
}

abstract class _ChangeVideo implements HomeEvent {
  const factory _ChangeVideo(final String video) = _$ChangeVideoImpl;

  String get video;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeVideoImplCopyWith<_$ChangeVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIdImplCopyWith<$Res> {
  factory _$$ChangeIdImplCopyWith(
          _$ChangeIdImpl value, $Res Function(_$ChangeIdImpl) then) =
      __$$ChangeIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$ChangeIdImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeIdImpl>
    implements _$$ChangeIdImplCopyWith<$Res> {
  __$$ChangeIdImplCopyWithImpl(
      _$ChangeIdImpl _value, $Res Function(_$ChangeIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$ChangeIdImpl(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeIdImpl implements _ChangeId {
  const _$ChangeIdImpl(this.postId);

  @override
  final int postId;

  @override
  String toString() {
    return 'HomeEvent.changeId(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIdImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIdImplCopyWith<_$ChangeIdImpl> get copyWith =>
      __$$ChangeIdImplCopyWithImpl<_$ChangeIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return changeId(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return changeId?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeId != null) {
      return changeId(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return changeId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return changeId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeId != null) {
      return changeId(this);
    }
    return orElse();
  }
}

abstract class _ChangeId implements HomeEvent {
  const factory _ChangeId(final int postId) = _$ChangeIdImpl;

  int get postId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeIdImplCopyWith<_$ChangeIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUserIdImplCopyWith<$Res> {
  factory _$$ChangeUserIdImplCopyWith(
          _$ChangeUserIdImpl value, $Res Function(_$ChangeUserIdImpl) then) =
      __$$ChangeUserIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$ChangeUserIdImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeUserIdImpl>
    implements _$$ChangeUserIdImplCopyWith<$Res> {
  __$$ChangeUserIdImplCopyWithImpl(
      _$ChangeUserIdImpl _value, $Res Function(_$ChangeUserIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ChangeUserIdImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeUserIdImpl implements _ChangeUserId {
  const _$ChangeUserIdImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'HomeEvent.changeUserId(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUserIdImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUserIdImplCopyWith<_$ChangeUserIdImpl> get copyWith =>
      __$$ChangeUserIdImplCopyWithImpl<_$ChangeUserIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPost,
    required TResult Function() newPost,
    required TResult Function() deletePost,
    required TResult Function() likePost,
    required TResult Function() savePost,
    required TResult Function() getPostByUser,
    required TResult Function() getPostByUserId,
    required TResult Function(String caption) changeCaption,
    required TResult Function(String image) changeImage,
    required TResult Function(String video) changeVideo,
    required TResult Function(int postId) changeId,
    required TResult Function(int userId) changeUserId,
  }) {
    return changeUserId(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPost,
    TResult? Function()? newPost,
    TResult? Function()? deletePost,
    TResult? Function()? likePost,
    TResult? Function()? savePost,
    TResult? Function()? getPostByUser,
    TResult? Function()? getPostByUserId,
    TResult? Function(String caption)? changeCaption,
    TResult? Function(String image)? changeImage,
    TResult? Function(String video)? changeVideo,
    TResult? Function(int postId)? changeId,
    TResult? Function(int userId)? changeUserId,
  }) {
    return changeUserId?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPost,
    TResult Function()? newPost,
    TResult Function()? deletePost,
    TResult Function()? likePost,
    TResult Function()? savePost,
    TResult Function()? getPostByUser,
    TResult Function()? getPostByUserId,
    TResult Function(String caption)? changeCaption,
    TResult Function(String image)? changeImage,
    TResult Function(String video)? changeVideo,
    TResult Function(int postId)? changeId,
    TResult Function(int userId)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeUserId != null) {
      return changeUserId(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getPost value) getPost,
    required TResult Function(_newPost value) newPost,
    required TResult Function(_deletePost value) deletePost,
    required TResult Function(_likePost value) likePost,
    required TResult Function(_savePost value) savePost,
    required TResult Function(_getPostUser value) getPostByUser,
    required TResult Function(_getPostUserId value) getPostByUserId,
    required TResult Function(_ChangeCaption value) changeCaption,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeVideo value) changeVideo,
    required TResult Function(_ChangeId value) changeId,
    required TResult Function(_ChangeUserId value) changeUserId,
  }) {
    return changeUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getPost value)? getPost,
    TResult? Function(_newPost value)? newPost,
    TResult? Function(_deletePost value)? deletePost,
    TResult? Function(_likePost value)? likePost,
    TResult? Function(_savePost value)? savePost,
    TResult? Function(_getPostUser value)? getPostByUser,
    TResult? Function(_getPostUserId value)? getPostByUserId,
    TResult? Function(_ChangeCaption value)? changeCaption,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeVideo value)? changeVideo,
    TResult? Function(_ChangeId value)? changeId,
    TResult? Function(_ChangeUserId value)? changeUserId,
  }) {
    return changeUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getPost value)? getPost,
    TResult Function(_newPost value)? newPost,
    TResult Function(_deletePost value)? deletePost,
    TResult Function(_likePost value)? likePost,
    TResult Function(_savePost value)? savePost,
    TResult Function(_getPostUser value)? getPostByUser,
    TResult Function(_getPostUserId value)? getPostByUserId,
    TResult Function(_ChangeCaption value)? changeCaption,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeVideo value)? changeVideo,
    TResult Function(_ChangeId value)? changeId,
    TResult Function(_ChangeUserId value)? changeUserId,
    required TResult orElse(),
  }) {
    if (changeUserId != null) {
      return changeUserId(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserId implements HomeEvent {
  const factory _ChangeUserId(final int userId) = _$ChangeUserIdImpl;

  int get userId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeUserIdImplCopyWith<_$ChangeUserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  UIStatus get status => throw _privateConstructorUsedError;
  HomeNotification? get notification => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get toLoad => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Post> get Posts => throw _privateConstructorUsedError;
  List<Post> get getPostByUser => throw _privateConstructorUsedError;
  List<Post> get getPostByUserId => throw _privateConstructorUsedError;
  Post? get post => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {UIStatus status,
      HomeNotification? notification,
      bool loading,
      bool toLoad,
      String caption,
      String image,
      String video,
      int postId,
      int userId,
      bool isSuccess,
      String errorMessage,
      List<Post> Posts,
      List<Post> getPostByUser,
      List<Post> getPostByUserId,
      Post? post});

  $UIStatusCopyWith<$Res> get status;
  $HomeNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? toLoad = null,
    Object? caption = null,
    Object? image = null,
    Object? video = null,
    Object? postId = null,
    Object? userId = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? Posts = null,
    Object? getPostByUser = null,
    Object? getPostByUserId = null,
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as HomeNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      toLoad: null == toLoad
          ? _value.toLoad
          : toLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      Posts: null == Posts
          ? _value.Posts
          : Posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      getPostByUser: null == getPostByUser
          ? _value.getPostByUser
          : getPostByUser // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      getPostByUserId: null == getPostByUserId
          ? _value.getPostByUserId
          : getPostByUserId // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $HomeNotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      HomeNotification? notification,
      bool loading,
      bool toLoad,
      String caption,
      String image,
      String video,
      int postId,
      int userId,
      bool isSuccess,
      String errorMessage,
      List<Post> Posts,
      List<Post> getPostByUser,
      List<Post> getPostByUserId,
      Post? post});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $HomeNotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loading = null,
    Object? toLoad = null,
    Object? caption = null,
    Object? image = null,
    Object? video = null,
    Object? postId = null,
    Object? userId = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? Posts = null,
    Object? getPostByUser = null,
    Object? getPostByUserId = null,
    Object? post = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as HomeNotification?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      toLoad: null == toLoad
          ? _value.toLoad
          : toLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      Posts: null == Posts
          ? _value._Posts
          : Posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      getPostByUser: null == getPostByUser
          ? _value._getPostByUser
          : getPostByUser // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      getPostByUserId: null == getPostByUserId
          ? _value._getPostByUserId
          : getPostByUserId // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = const UIInitial(),
      this.notification,
      this.loading = false,
      this.toLoad = false,
      this.caption = '',
      this.image = '',
      this.video = '',
      this.postId = 0,
      this.userId = 0,
      this.isSuccess = false,
      this.errorMessage = '',
      final List<Post> Posts = const [],
      final List<Post> getPostByUser = const [],
      final List<Post> getPostByUserId = const [],
      this.post})
      : _Posts = Posts,
        _getPostByUser = getPostByUser,
        _getPostByUserId = getPostByUserId;

  @override
  @JsonKey()
  final UIStatus status;
  @override
  final HomeNotification? notification;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool toLoad;
  @override
  @JsonKey()
  final String caption;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String video;
  @override
  @JsonKey()
  final int postId;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Post> _Posts;
  @override
  @JsonKey()
  List<Post> get Posts {
    if (_Posts is EqualUnmodifiableListView) return _Posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Posts);
  }

  final List<Post> _getPostByUser;
  @override
  @JsonKey()
  List<Post> get getPostByUser {
    if (_getPostByUser is EqualUnmodifiableListView) return _getPostByUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getPostByUser);
  }

  final List<Post> _getPostByUserId;
  @override
  @JsonKey()
  List<Post> get getPostByUserId {
    if (_getPostByUserId is EqualUnmodifiableListView) return _getPostByUserId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getPostByUserId);
  }

  @override
  final Post? post;

  @override
  String toString() {
    return 'HomeState(status: $status, notification: $notification, loading: $loading, toLoad: $toLoad, caption: $caption, image: $image, video: $video, postId: $postId, userId: $userId, isSuccess: $isSuccess, errorMessage: $errorMessage, Posts: $Posts, getPostByUser: $getPostByUser, getPostByUserId: $getPostByUserId, post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.toLoad, toLoad) || other.toLoad == toLoad) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._Posts, _Posts) &&
            const DeepCollectionEquality()
                .equals(other._getPostByUser, _getPostByUser) &&
            const DeepCollectionEquality()
                .equals(other._getPostByUserId, _getPostByUserId) &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notification,
      loading,
      toLoad,
      caption,
      image,
      video,
      postId,
      userId,
      isSuccess,
      errorMessage,
      const DeepCollectionEquality().hash(_Posts),
      const DeepCollectionEquality().hash(_getPostByUser),
      const DeepCollectionEquality().hash(_getPostByUserId),
      post);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final UIStatus status,
      final HomeNotification? notification,
      final bool loading,
      final bool toLoad,
      final String caption,
      final String image,
      final String video,
      final int postId,
      final int userId,
      final bool isSuccess,
      final String errorMessage,
      final List<Post> Posts,
      final List<Post> getPostByUser,
      final List<Post> getPostByUserId,
      final Post? post}) = _$HomeStateImpl;

  @override
  UIStatus get status;
  @override
  HomeNotification? get notification;
  @override
  bool get loading;
  @override
  bool get toLoad;
  @override
  String get caption;
  @override
  String get image;
  @override
  String get video;
  @override
  int get postId;
  @override
  int get userId;
  @override
  bool get isSuccess;
  @override
  String get errorMessage;
  @override
  List<Post> get Posts;
  @override
  List<Post> get getPostByUser;
  @override
  List<Post> get getPostByUserId;
  @override
  Post? get post;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeNotification {
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

  /// Create a copy of HomeNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeNotificationCopyWith<HomeNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNotificationCopyWith<$Res> {
  factory $HomeNotificationCopyWith(
          HomeNotification value, $Res Function(HomeNotification) then) =
      _$HomeNotificationCopyWithImpl<$Res, HomeNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeNotificationCopyWithImpl<$Res, $Val extends HomeNotification>
    implements $HomeNotificationCopyWith<$Res> {
  _$HomeNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeNotification
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
    implements $HomeNotificationCopyWith<$Res> {
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
    extends _$HomeNotificationCopyWithImpl<$Res,
        _$NotificationInsertSuccessImpl>
    implements _$$NotificationInsertSuccessImplCopyWith<$Res> {
  __$$NotificationInsertSuccessImplCopyWithImpl(
      _$NotificationInsertSuccessImpl _value,
      $Res Function(_$NotificationInsertSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeNotification
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
    return 'HomeNotification.insertSuccess(message: $message)';
  }

  /// Create a copy of HomeNotification
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

abstract class _NotificationInsertSuccess implements HomeNotification {
  factory _NotificationInsertSuccess({required final String message}) =
      _$NotificationInsertSuccessImpl;

  @override
  String get message;

  /// Create a copy of HomeNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertSuccessImplCopyWith<_$NotificationInsertSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationInsertFailedImplCopyWith<$Res>
    implements $HomeNotificationCopyWith<$Res> {
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
    extends _$HomeNotificationCopyWithImpl<$Res, _$NotificationInsertFailedImpl>
    implements _$$NotificationInsertFailedImplCopyWith<$Res> {
  __$$NotificationInsertFailedImplCopyWithImpl(
      _$NotificationInsertFailedImpl _value,
      $Res Function(_$NotificationInsertFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeNotification
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
    return 'HomeNotification.insertFailed(message: $message)';
  }

  /// Create a copy of HomeNotification
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

abstract class _NotificationInsertFailed implements HomeNotification {
  factory _NotificationInsertFailed({required final String message}) =
      _$NotificationInsertFailedImpl;

  @override
  String get message;

  /// Create a copy of HomeNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationInsertFailedImplCopyWith<_$NotificationInsertFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
