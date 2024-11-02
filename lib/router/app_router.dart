import 'package:boilerplate/features/comment/bloc/view/comment_page.dart';
import 'package:boilerplate/features/home/home_page.dart';
import 'package:boilerplate/features/login/view/login_page.dart';
import 'package:boilerplate/features/setting/setting_page.dart';
import 'package:boilerplate/features/story/view/story_page.dart';
import 'package:boilerplate/features/user/view/client_user_page.dart';
import 'package:boilerplate/features/user/view/find_user_page.dart';
import 'package:boilerplate/features/user/view/register_user_page.dart';
import 'package:boilerplate/features/user/view/user_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String homeNamed = 'home';
  static const String homePath = '/home';

  static const String settingNamed = 'setting';
  static const String settingPath = '/setting';

  static const String loginName = 'login';
  static const String loginPath = '/';

  static const String storyName = 'story';
  static const String storyPath = '/story';

  static const String commentName = 'comment';
  static const String commentPath = '/comment';

  static const String userName = 'user';
  static const String userPath = '/user';

  static const String registerUserName = 'registerUser';
  static const String registerUserPath = '/registerUser';

  static const String findUserName = 'findUser';
  static const String findUserPath = '/findUser';

  static const String clientUserName = 'clientUser';
  static const String clientUserPath = '/clientUser';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: loginName,
        path: loginPath,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: homeNamed,
        path: homePath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: settingNamed,
        path: settingPath,
        builder: (context, state) => const SettingPage(),
      ),
      GoRoute(
        name: storyName,
        path: storyPath,
        builder: (context, state) => const StoryPage(),
      ),
      GoRoute(
        name: commentName,
        path: commentPath,
        builder: (context, state) => const CommentPage(),
      ),
      GoRoute(
        name: userName,
        path: userPath,
        builder: (context, state) => const UserPage(),
      ),
      GoRoute(
        name: registerUserName,
        path: registerUserPath,
        builder: (context, state) => const RegisterUserPage(),
      ),
      GoRoute(
        name: findUserName,
        path: findUserPath,
        builder: (context, state) => const FindUserPage(),
      ),
      // GoRoute(
      //   name: clientUserName,
      //   path: clientUserPath,
      //   builder: (context, state) => const ClientUserPage(),
      // )
    ],
  );
}
