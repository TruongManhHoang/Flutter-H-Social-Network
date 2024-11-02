import 'dart:io';

import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/story/bloc/story_bloc.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  late CommentBloc _commentBloc;

  @override
  void initState() {
    _commentBloc = Injector.instance<CommentBloc>()
      ..add(CommentEvent.getComment());
    super.initState();
  }

  @override
  void dispose() {
    _commentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _commentBloc,
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
  final cloudinaryService = CloudinaryService();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentBloc, CommentState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isSuccess) {
          return ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: state.comments.length,
            itemBuilder: (context, index) {
              final comment = state.comments[index];
              final isLiked = comment.liked;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(comment.user.lastName),
                        const SizedBox(height: 5),
                        Text(comment.content),
                        // ...comment.liked.map(
                        //   (e) {
                        //     return Column(
                        //       children: [Text(e.email), Text(e.firstName)],
                        //     );
                        //   },
                        // )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        context
                            .read<CommentBloc>()
                            .add(CommentEvent.selectCommentId(comment.id));
                        context
                            .read<CommentBloc>()
                            .add(CommentEvent.likeComment());
                      },
                      icon: Icon(
                        Icons.favorite,
                        // color: isLiked
                        //     ? Colors.red
                        //     : Colors.grey, // Thay đổi màu nút "like"
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return Center(child: Text('Error: ${state.errorMessage}'));
        }
      },
    );
  }
}
