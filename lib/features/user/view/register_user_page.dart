import 'package:another_flushbar/flushbar.dart';
import 'package:boilerplate/features/login/bloc/login_bloc.dart';
import 'package:boilerplate/features/user/bloc/user_bloc.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:boilerplate/widgets/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterUserPage extends StatelessWidget {
  const RegisterUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => Injector.instance<UserBloc>(),
      child: const Scaffold(
        // appBar: _AppBar(),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<UserBloc, UserState>(
        listenWhen: (prev, next) => prev.loading != next.loading,
        listener: (context, state) {
          state.notification?.when(
            insertSuccess: (message) {
              Flushbar(
                message: message,
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.green,
              ).show(context);
              context.push(AppRouter.loginPath);
            },
            insertFailed: (message) {
              Flushbar(
                message: message,
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.red,
              ).show(context);
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              _buildLoginForm(context, state.email, state.password),
              if (state.loading) const LoadingPage(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoginForm(
      BuildContext context, String username, String password) {
    return Center(
      child: Container(
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'First Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  initialValue: username,
                  onChanged: (value) {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.changeFirstName(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Last Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  initialValue: username,
                  onChanged: (value) {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.changeLastName(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  initialValue: username,
                  onChanged: (value) {
                    context.read<UserBloc>().add(UserEvent.changeEmail(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  initialValue: username,
                  onChanged: (value) {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.changePassword(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Gender',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  initialValue: username,
                  onChanged: (value) {
                    context.read<UserBloc>().add(UserEvent.changeGender(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 47, 141, 212),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(307, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                    onPressed: () {
                      context.read<UserBloc>().add(const UserEvent.newUser());
                      context.push(AppRouter.loginPath);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          )),
    );
  }
}
