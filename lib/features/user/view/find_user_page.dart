import 'dart:io';

import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/temp/home_bottom.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
import 'package:boilerplate/features/user/bloc/user_bloc.dart';
import 'package:boilerplate/features/user/view/client_user_page.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class FindUserPage extends StatefulWidget {
  const FindUserPage({super.key});

  @override
  State<FindUserPage> createState() => _FindUserPageState();
}

class _FindUserPageState extends State<FindUserPage> {
  late UserBloc _userBloc;
  late HomeBloc _homeBloc;
  @override
  void initState() {
    super.initState();
    _userBloc = Injector.instance<UserBloc>()..add(UserEvent.getUser());
    _homeBloc = Injector.instance<HomeBloc>();
  }

  @override
  void dispose() {
    _userBloc.close();
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>.value(value: _userBloc),
        BlocProvider<HomeBloc>.value(
          value: _homeBloc,
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
        backgroundColor: Color.fromARGB(255, 47, 141, 212),
        flexibleSpace: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Text(
                  'TMHNetWork',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.message_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            )));
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Expanded(
          // Sửa đổi chính
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    context.read<UserBloc>().add(UserEvent.searchUser(value));
                  },
                  decoration: InputDecoration(
                    labelText: 'Search Users',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              state.searchUsers.isNotEmpty
                  ? Container(
                      height: 300,
                      child: ListView.builder(
                        itemCount: state.searchUsers.length,
                        itemBuilder: (context, index) {
                          final user = state.searchUsers[index];
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
                                user.firstName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(user.lastName ?? ""),
                              onTap: () {
                                context
                                    .read<UserBloc>()
                                    .add(UserEvent.changeClientUser(user));
                                context
                                    .read<HomeBloc>()
                                    .add(HomeEvent.changeUserId(user.id));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ClientUserPage()));
                              },
                            ),
                          );
                        },
                      ),
                    )
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'No users found',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
