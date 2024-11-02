import 'dart:io';

import 'package:boilerplate/features/story/bloc/story_bloc.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late StoryBloc _storyBloc;

  @override
  void initState() {
    _storyBloc = Injector.instance<StoryBloc>()..add(StoryEvent.getStory());
    super.initState();
  }

  @override
  void dispose() {
    _storyBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _storyBloc,
      child: Scaffold(
        body: _body(),
      ),
    );
  }
}

class _body extends StatefulWidget {
  const _body({super.key});

  @override
  State<_body> createState() => __bodyState();
}

class __bodyState extends State<_body> {
  List<PlatformFile>? _files;
  File? _image;

  final cloudinaryService = CloudinaryService();

  void showImage(String image) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<StoryBloc>(),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            content: Image.network(
              image,
              fit: BoxFit.cover,
              width: 400,
              height: 400,
            ),
          ),
          // actions: [
          //   TextButton(
          //     onPressed: () {
          //       Navigator.of(dialogContext).pop(); // Đóng dialog
          //     },
          //     child: Text('Close'),
          //   ),
          // ],
        );
      },
    );
  }

  void openForm() {
    String? selectedImageUrl;
    String? selectedVideoUrl;
    bool isLoading = false;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<StoryBloc>(),
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
                              .read<StoryBloc>()
                              .add(StoryEvent.changeCaption(value));
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
                          context.read<StoryBloc>().add(StoryEvent.newStory());
                          Navigator.pop(dialogContext);
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
              context.read<StoryBloc>().add(StoryEvent.changeImage(imageUrl));
            }
            return imageUrl;
          } else if (fileType == FileType.video) {
            // Upload video
            final videoUrl =
                await cloudinaryService.uploadFile(file, isImage: false);
            if (videoUrl != null) {
              context
                  .read<StoryBloc>()
                  .add(StoryEvent.changeVideo(videoUrl)); // Lưu video vào Bloc
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
    return Row(
      children: [
        ClipOval(
          child: InkWell(
            onTap: () {
              openForm();
            },
            child: Icon(Icons.add),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: BlocBuilder<StoryBloc, StoryState>(
            builder: (context, state) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.stories.length,
                itemBuilder: (context, index) {
                  final story = state.stories[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            showImage(story.image);
                          },
                          child: ClipOval(
                            child: Image.network(
                              story.image,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(story.user.lastName),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
