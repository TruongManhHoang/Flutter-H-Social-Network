import 'dart:async';
import 'dart:io';

import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/comment/bloc/view/comment_page.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/reel/bloc/reel_bloc.dart';
import 'package:boilerplate/features/story/view/story_page.dart';
import 'package:boilerplate/features/temp/home_bottom.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class Videoplayerwidget extends StatefulWidget {
  const Videoplayerwidget({super.key});

  @override
  State<Videoplayerwidget> createState() => _VideoplayerwidgetState();
}

class _VideoplayerwidgetState extends State<Videoplayerwidget> {
  late ReelBloc _reelBloc;

  @override
  void initState() {
    super.initState();
    _reelBloc = Injector.instance<ReelBloc>()..add(const ReelEvent.getReel());
  }

  @override
  void dispose() {
    // _refreshTimer.cancel();
    _reelBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _reelBloc,
        ),
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
  late final player = Player();
  late final controller = VideoController(player);
  String url =
      'https://res.cloudinary.com/deia6omkx/video/upload/v1730814408/h56ynqa9h7zahbau6yk2.mp4';
  @override
  void initState() {
    super.initState();
    player.open(Media(url));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 9.0 / 16.0,
        child: Video(controller: controller),
      ),
    );
  }
}
