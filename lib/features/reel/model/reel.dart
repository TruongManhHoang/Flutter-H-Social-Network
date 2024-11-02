import 'dart:convert';

import 'package:boilerplate/features/comment/model/comment.dart';
import 'package:boilerplate/features/user/model/user.dart';

class Reel {
  final int id;
  final String title;
  final String video;
  final User user;
  final List<Comment> comments;
  final List<User> liked;

  Reel(
      {required this.id,
      required this.title,
      required this.video,
      required this.user,
      required this.comments,
      required this.liked});

  factory Reel.fromJson(Map<String, dynamic> json) {
    return Reel(
        id: json['id'] ?? 0,
        title: json['title'] ?? '',
        video: json['video'] ?? '',
        user: User.fromJson(json['user'] ?? ''),
        comments: (json['comments'] as List<dynamic>?)
                ?.map((item) => Comment.fromJson(item))
                .toList() ??
            [],
        liked: (json['liked'] as List<dynamic>?)
                ?.map((item) => User.fromJson(item))
                .toList() ??
            []);
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'video': video,
      'user': user.toJson(),
    };
  }
}
