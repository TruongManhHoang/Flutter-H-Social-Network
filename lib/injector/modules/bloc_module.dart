import 'package:boilerplate/features/app/bloc/app_bloc.dart';
import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/login/bloc/login_bloc.dart';
import 'package:boilerplate/features/story/bloc/story_bloc.dart';
import 'package:boilerplate/features/user/bloc/user_bloc.dart';
import 'package:boilerplate/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AppBloc>(
        () => AppBloc(
          appService: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<LoginBloc>(
        () =>
            LoginBloc(authService: injector(), localStorageService: injector()),
      )
      ..registerLazySingleton<HomeBloc>(
        () => HomeBloc(
          localStorageService: injector(),
          homeService: injector(),
        ),
      )
      ..registerLazySingleton<StoryBloc>(
        () => StoryBloc(
          localStorageService: injector(),
          storyService: injector(),
        ),
      )
      ..registerLazySingleton<CommentBloc>(
        () => CommentBloc(
          localStorageService: injector(),
          commentService: injector(),
        ),
      )
      ..registerLazySingleton<UserBloc>(
        () => UserBloc(
          localStorageService: injector(),
          userService: injector(),
        ),
      );
  }
}
