import 'dart:convert';

import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/user/model/user.dart';

class Comment {
  final int id;
  final String content;
  final User user;
  final List<User> liked;
  // final DateTime createdAt; // Thêm field createdAt

  Comment({
    required this.id,
    required this.content,
    required this.user,
    required this.liked,
    // required this.createdAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: int.tryParse(json['id'].toString()) ?? 0,
      content: json['content'] ?? '',
      user: User.fromJson(json['user'] ?? {}),
      liked: (json['liked'] as List<dynamic>)
          .map((item) => User.fromJson(item))
          .toList(),
      // createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'user': user.toJson(),
      'liked': liked.map((user) => user.toJson()).toList(),
    };
  }
}
