import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/injector/modules/dio_module.dart';
import 'package:boilerplate/services/app_service/app_service.dart';
import 'package:boilerplate/services/app_service/app_service_impl.dart';
import 'package:boilerplate/services/auth_service/auth_service.dart';
import 'package:boilerplate/services/chat/chat_service.dart';

import 'package:boilerplate/services/comment_service/comment_service.dart';
import 'package:boilerplate/services/home_service/home_service.dart';
import 'package:boilerplate/services/local_storage_service/local_storage_service.dart';
import 'package:boilerplate/services/local_storage_service/shared_preferences_service.dart';
import 'package:boilerplate/services/log_service/debug_log_service.dart';
import 'package:boilerplate/services/log_service/log_service.dart';
import 'package:boilerplate/services/reel/reel_service.dart';
import 'package:boilerplate/services/story_service/story_service.dart';
import 'package:boilerplate/services/user_service/user_service.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerFactory<LogService>(DebugLogService.new)
      ..registerSingleton<LocalStorageService>(
        SharedPreferencesService(
          logService: injector(),
        ),
        signalsReady: true,
      )
      ..registerSingleton<AppService>(
        AppServiceImpl(
          localStorageService: injector(),
        ),
      )
      ..registerSingleton<AuthService>(
          AuthService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<HomeService>(
          HomeService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<StoryService>(
          StoryService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<CommentService>(CommentService(
          dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<UserService>(
          UserService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<ReelService>(
          ReelService(dio: injector(instanceName: DioModule.dioInstanceName)))
      ..registerSingleton<ChatService>(
          ChatService(dio: injector(instanceName: DioModule.dioInstanceName)));
  }
}
