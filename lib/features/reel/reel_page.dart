import 'dart:io';

import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/temp/home_bottom.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  late HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    _homeBloc = Injector.instance<HomeBloc>()..add(const HomeEvent.getPost());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider<HomeBloc>.value(
      value: _homeBloc,
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
  // VideoPlayerController? _controller;

  // @override
  // void dispose() {
  //   _controller?.dispose();
  //   super.dispose();
  // }

  final cloudinaryService = CloudinaryService();

  // Future<void> _handleImageUpload() async {
  //   final image = await cloudinaryService.pickImage();
  //   if (image != null) {
  //     final imageUrl = await cloudinaryService.uploadImage(image);
  //     if (imageUrl != null) {
  //       print('Image uploaded successfully: $imageUrl');
  //       setState(() {
  //         _image = image;
  //       });
  //     }
  //   }
  // }

  void openForm() {
    String? selectedImageUrl;
    String? selectedVideoUrl;
    bool isLoading = false;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<HomeBloc>(),
          child: AlertDialog(
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
                      SizedBox(height: 10),
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
                          child:
                              Center(child: Text('Video: $selectedVideoUrl')),
                        ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(HomeEvent.newPost());
                          Navigator.pop(dialogContext); // Đóng dialog
                        },
                        child: Text('Save'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
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
                          borderRadius: BorderRadius.circular(5))),
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
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey[300],
            child: const Center(
              child: Text('Reel'),
            ),
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
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      post.user.firstName,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(post.caption),
                                  ],
                                )),
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
                            //   AspectRatio(
                            //     aspectRatio: 16 / 9,
                            //     child: Chewie(
                            //         controller: ChewieController(
                            //       videoPlayerController:
                            //           VideoPlayerController.network(post.video),
                            //       aspectRatio: 16 / 9,
                            //       autoPlay: true,
                            //       looping: true,
                            //     )),
                            //   )
                            // else
                            //   const SizedBox.shrink(),
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
