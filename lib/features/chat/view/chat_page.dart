import 'dart:async';
import 'dart:io';

import 'package:boilerplate/features/chat/bloc/chat_bloc.dart';
import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/home/view/home_page.dart';
import 'package:boilerplate/features/story/view/story_page.dart';
import 'package:boilerplate/features/temp/home_bottom.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
import 'package:boilerplate/features/user/bloc/user_bloc.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:go_router/go_router.dart';
// import 'package:video_player_media_kit/video_player_media_kit.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late ChatBloc _chatBloc;
  late UserBloc _userBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = Injector.instance<ChatBloc>()..add(const ChatEvent.getChat());
    _userBloc = Injector.instance<UserBloc>()
      ..add(const UserEvent.getUser())
      ..add(const UserEvent.getProfileUser());
  }

  @override
  void dispose() {
    _chatBloc.close();
    _userBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _chatBloc,
        ),
        BlocProvider.value(
          value: _userBloc,
        )
      ],
      child: Scaffold(
        body: Row(
          children: [
            if (screenWidth > 600)
              Expanded(
                flex: 1,
                child: SiderBar1(),
              ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  _AppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: _Body(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: HomeBottom(),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 47, 141, 212),
        flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
              return Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.pop(context); // Quay lại trang trước đó
                      context.push(AppRouter.homePath);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${state.user?.lastName} ${state.user?.firstName}',
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              );
            })));
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(60); // Điều chỉnh chiều cao AppBar
}

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Accounts to message',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.isSuccess) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return Card(
                      margin: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 3,
                      child: ListTile(
                        leading: Icon(Icons.account_circle, size: 40),
                        title: Text(
                          '${user.lastName} ${user.firstName}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(user.lastName ?? ""),
                        onTap: () {
                          context
                              .read<ChatBloc>()
                              .add(ChatEvent.changeChatId(user.id));
                          // context.push(location)
                        },
                      ),
                    );
                  },
                );
              } else if (state.errorMessage != null) {
                return Center(child: Text(state.errorMessage!));
              }
              return const Center(child: Text('No products found.'));
            },
          )
        ],
      ),
    );
  }
}
