import 'dart:async';
import 'dart:io';

import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/login/view/login_page.dart';
import 'package:boilerplate/features/story/view/story_page.dart';
import 'package:boilerplate/features/temp/home_bottom.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc _homeBloc;
  late CommentBloc _commentBloc;
  // late Timer _refreshTimer;

  @override
  void initState() {
    super.initState();

    // Khởi tạo bloc sau khi chắc chắn initState đã được gọi
    _homeBloc = Injector.instance<HomeBloc>()..add(const HomeEvent.getPost());
    _commentBloc = Injector.instance<CommentBloc>();

    // Đặt timer để tự động làm mới dữ liệu
    // _refreshTimer = Timer.periodic(Duration(seconds: 1), (timer) {
    //   _homeBloc.add(const HomeEvent.getPost());
    // });
  }

  @override
  void dispose() {
    // _refreshTimer.cancel();
    _homeBloc.close();
    _commentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _homeBloc,
        ),
        BlocProvider.value(
          value: _commentBloc,
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
      backgroundColor: const Color.fromARGB(255, 47, 141, 212),
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            const Text(
              'TMHNetWork',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Spacer(),
            const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                context.push(AppRouter.chatPath);
              },
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
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
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  bool showComment = false;
  final cloudinaryService = CloudinaryService();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void openForm() {
    String? selectedImageUrl;
    String? selectedVideoUrl;
    bool isLoading = false;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<HomeBloc>(),
          child: BlocBuilder<HomeBloc, HomeState>(
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
                            'Create new post',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Caption',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.changeCaption(value));
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
                                  String? imageUrl =
                                      await _openFile(FileType.image, context);
                                  if (imageUrl != null) {
                                    setState(() {
                                      selectedImageUrl = imageUrl;
                                      selectedVideoUrl = null;
                                      isLoading = false;
                                    });
                                  } else {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  }
                                },
                                icon: Icon(Icons.image),
                              ),
                              SizedBox(width: 20),
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
                              context.read<HomeBloc>().add(HomeEvent.newPost());
                              context
                                  .read<HomeBloc>()
                                  .add(const HomeEvent.getPost());

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

          if (fileType == FileType.image) {
            // Upload ảnh
            final imageUrl =
                await cloudinaryService.uploadFile(file, isImage: true);
            if (imageUrl != null) {
              context
                  .read<HomeBloc>()
                  .add(HomeEvent.changeImage(imageUrl)); // Lưu ảnh vào Bloc
            }
            return imageUrl; // Trả về URL của ảnh đã upload
          } else if (fileType == FileType.video) {
            // Upload video
            final videoUrl =
                await cloudinaryService.uploadFile(file, isImage: false);
            if (videoUrl != null) {
              context
                  .read<HomeBloc>()
                  .add(HomeEvent.changeVideo(videoUrl)); // Lưu video vào Bloc
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

  // void _showVideo(String? video) {
  //   _controller = VideoPlayerController.file(File(video!))
  //     ..initialize().then((_) {
  //       setState(() {});
  //       _controller!.play();
  //     });
  // }

  // @override
  // void dispose() {
  //   videoPlayerController.dispose(); // Đảm bảo hủy bộ điều khiển video
  //   super.dispose();
  // }

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
                        'Create new post',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Caption',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(Icons.video_camera_back),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: StoryPage(),
          ),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.isSuccess) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.Posts.length,
                  itemBuilder: (context, index) {
                    final post = state.Posts[index];
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
                                                      post.user.firstName,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Text(post.caption),
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
                                        .add(HomeEvent.changeId(post.id));
                                    context
                                        .read<HomeBloc>()
                                        .add(HomeEvent.deletePost());
                                  },
                                  icon: Icon(Icons.delete))
                            ],
                          ),

                          const SizedBox(height: 10),
                          if (post.image.isNotEmpty)
                            Image.network(
                              post.image,
                              width: 500,
                              height: 450,
                              fit: BoxFit.cover,
                            )
                          else if (post.video.isNotEmpty)
                            // AspectRatio(
                            //   aspectRatio: 16 / 9,
                            //   child: Chewie(
                            //     controller: ChewieController(
                            //       videoPlayerController:
                            //           VideoPlayerController.networkUrl(
                            //         Uri.parse(post.video),
                            //       )..initialize().then((_) {
                            //               if (context.mounted) {
                            //                 setState(() {});
                            //               }
                            //             }),
                            //       aspectRatio: 16 / 9,
                            //       autoPlay: true,
                            //       looping: true,
                            //     ),
                            //   ),
                            // )
                            // else
                            const SizedBox
                                .shrink(), // Nếu không có hình ảnh hoặc video
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      context
                                          .read<HomeBloc>()
                                          .add(HomeEvent.changeId(post.id));
                                      isLiked = !isLiked;
                                      context
                                          .read<HomeBloc>()
                                          .add(HomeEvent.likePost());
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
                                    context
                                        .read<HomeBloc>()
                                        .add(HomeEvent.changeId(post.id));
                                    context
                                        .read<HomeBloc>()
                                        .add(HomeEvent.savePost());
                                  },
                                  icon: Icon(
                                    Icons.save_rounded,
                                    color: Colors.grey,
                                  )),

                              // Chuyển thành danh sách các Widget
                            ],
                          ),
                          if (showComment)
                            ...post.comments.map((comment) {
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
                                context
                                    .read<CommentBloc>()
                                    .add(CommentEvent.selectPostId(post.id));
                                context
                                    .read<CommentBloc>()
                                    .add(CommentEvent.selectContent(value));
                              },
                              onFieldSubmitted: (value) {
                                context
                                    .read<CommentBloc>()
                                    .add(CommentEvent.newComment());
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
