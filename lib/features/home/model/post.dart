import 'dart:convert';

import 'package:boilerplate/features/comment/model/comment.dart';
import 'package:boilerplate/features/user/model/user.dart';

class Post {
  final int id;
  final String caption;
  final String image;
  final String video;
  final User user;
  List<Comment> comments;

  Post(
      {required this.id,
      required this.caption,
      required this.image,
      required this.video,
      required this.user,
      required this.comments});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: int.tryParse(json['id'].toString()) ?? 0,
      caption: json['caption'] ?? '',
      image: json['image'] ?? '',
      video: json['video'] ?? '',
      user: json['user'] != null && json['user'] is Map<String, dynamic>
          ? User.fromJson(json['user'])
          : User(
              id: 0,
              firstName: '',
              lastName: '',
              email: '',
              password: '',
              gender: '',
              savedPosts: [],
              followers: [],
              followings: []),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((item) => Comment.fromJson(item))
              .toList() ??
          [],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'caption': caption,
      'image': image,
      'video': video,
      'user': user.toJson(),
      'liked': comments.map((comment) => comment.toJson()).toList()
    };
  }
}
