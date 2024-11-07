import 'dart:async';
import 'dart:io';

import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/comment/bloc/view/comment_page.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/reel/bloc/reel_bloc.dart';
import 'package:boilerplate/features/reel/model/reel.dart';
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
import 'package:video_player/video_player.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  late ReelBloc _reelBloc;
  late CommentBloc _commentBloc;

  @override
  void initState() {
    super.initState();
    _reelBloc = Injector.instance<ReelBloc>()..add(const ReelEvent.getReel());
    _commentBloc = Injector.instance<CommentBloc>();
  }

  @override
  void dispose() {
    _reelBloc.close();
    _commentBloc.close();
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
        BlocProvider.value(
          value: _commentBloc,
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
  List<PlatformFile>? _files;
  File? _image;
  bool isLiked = false;
  bool isLikedComment = false;
  List<Player> players = [];
  List<VideoController> controllers = [];
  List<bool> isVideoInitialized = [];
  List<bool> isPaused = [];

  bool showComment = false;
  final cloudinaryService = CloudinaryService();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    for (var player in players) {
      player.dispose();
    }
    super.dispose();
  }

  void initializeVideo(String videoUrl, int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      players[index] = Player();
      controllers[index] = VideoController(players[index]);

      players[index].open(Media(videoUrl), play: false);
      setState(() {
        isVideoInitialized[index] = true;
        isPaused[index] = true;
      });
    });
  }

  void openForm() {
    String? selectedImageUrl;
    String? selectedVideoUrl;
    bool isLoading = false;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<ReelBloc>(),
          child: BlocBuilder<ReelBloc, ReelState>(
            builder: (context, state) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Create new reel',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Title',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              context
                                  .read<ReelBloc>()
                                  .add(ReelEvent.changeTitle(value));
                            },
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  String? videoUrl =
                                      await _openFile(FileType.video, context);
                                  if (videoUrl != null) {
                                    setState(() {
                                      selectedVideoUrl = videoUrl;
                                      selectedImageUrl = null;
                                      isLoading = false;
                                    });
                                  } else {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  }
                                },
                                icon: Icon(Icons.video_call_outlined),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          if (isLoading) CircularProgressIndicator(),
                          if (selectedImageUrl != null && !isLoading)
                            Image.network(
                              selectedImageUrl!,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          if (selectedVideoUrl != null && !isLoading)
                            Container(
                              height: 100,
                              child: Center(
                                  child: Text('Video: $selectedVideoUrl')),
                            ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              context.read<ReelBloc>().add(ReelEvent.newReel());
                              // context
                              //     .read<ReelBloc>()
                              //     .add(const HomeEvent.getPost());

                              Navigator.pop(dialogContext); // Đóng dialog
                            },
                            child: Text('Save'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }

  void Comment() {
    setState(() {
      showComment = !showComment;
    });
  }

  Future<String?> _openFile(FileType fileType, BuildContext context) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: fileType,
        allowMultiple: false,
      );

      if (result != null) {
        String? filePath = result.files.single.path;

        if (filePath != null) {
          final File file = File(filePath);

          if (fileType == FileType.video) {
            final videoUrl =
                await cloudinaryService.uploadFile(file, isImage: false);
            if (videoUrl != null) {
              context
                  .read<ReelBloc>()
                  .add(ReelEvent.changeVideo(videoUrl)); // Lưu video vào Bloc
            }
            return videoUrl; // Trả về URL của video đã upload
          }
        }
      }
    } catch (e) {
      print('Error picking file: $e');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                openForm();
              },
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Create new reel',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Title',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.video_camera_back),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<ReelBloc, ReelState>(
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.isSuccess) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.reels.length,
                  itemBuilder: (context, index) {
                    final reel = state.reels[index];
                    if (players.length <= index) {
                      players.add(Player());
                      controllers.add(VideoController(players[index]));
                      isVideoInitialized.add(false);
                      isPaused.add(true);

                      // Initialize video for the first time
                      initializeVideo(reel.video, index);
                    }
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.account_circle,
                                                  color: Colors.grey,
                                                  size: 50,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      reel.user.firstName,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Text(reel.title),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    context
                                        .read<HomeBloc>()
                                        .add(HomeEvent.changeId(reel.id));
                                    context
                                        .read<HomeBloc>()
                                        .add(HomeEvent.deletePost());
                                  },
                                  icon: Icon(Icons.delete))
                            ],
                          ),
                          const SizedBox(height: 10),
                          if (reel.video.isNotEmpty)
                            if (isVideoInitialized[index])
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isPaused[index]) {
                                      players[index].play();
                                    } else {
                                      players[index].pause();
                                    }
                                    isPaused[index] = !isPaused[index];
                                  });
                                },
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.width * 1.9,
                                  child: Video(controller: controllers[index]),
                                ),
                              ),
                          const SizedBox.shrink(),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      context
                                          .read<ReelBloc>()
                                          .add(ReelEvent.changeReelId(reel.id));
                                      isLiked = !isLiked;
                                      context
                                          .read<ReelBloc>()
                                          .add(ReelEvent.likeReel());
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: isLiked ? Colors.red : Colors.grey,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                  onPressed: () {
                                    Comment();
                                  },
                                  icon: Icon(
                                    Icons.comment,
                                    color:
                                        showComment ? Colors.blue : Colors.grey,
                                  )),
                              Spacer(),

                              IconButton(
                                  onPressed: () {
                                    // context
                                    //     .read<HomeBloc>()
                                    //     .add(HomeEvent.changeId(post.id));
                                    // context
                                    //     .read<HomeBloc>()
                                    //     .add(HomeEvent.savePost());
                                  },
                                  icon: Icon(
                                    Icons.save_rounded,
                                    color: Colors.grey,
                                  )),

                              // Chuyển thành danh sách các Widget
                            ],
                          ),
                          if (showComment)
                            ...reel.comments.map((comment) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10, bottom: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              comment.user.firstName,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(comment.content),
                                          ],
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {
                                            context.read<CommentBloc>().add(
                                                CommentEvent.selectCommentId(
                                                    comment.id));
                                            context.read<CommentBloc>().add(
                                                CommentEvent.likeComment());
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color: isLikedComment
                                                ? Colors.red
                                                : Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                ],
                              );
                            }).toList(),
                          const SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(1),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Write a comment",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onChanged: (value) {
                                // context
                                //     .read<CommentBloc>()
                                //     .add(CommentEvent.selectPostId(post.id));
                                // context
                                //     .read<CommentBloc>()
                                //     .add(CommentEvent.selectContent(value));
                              },
                              onFieldSubmitted: (value) {
                                // context
                                //     .read<CommentBloc>()
                                //     .add(CommentEvent.newComment());
                              },
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
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
