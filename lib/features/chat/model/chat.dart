import 'dart:convert';

import 'package:boilerplate/features/comment/model/comment.dart';
import 'package:boilerplate/features/user/model/user.dart';

class Chat {
  final int id;
  final String chatName;
  // final List<Comment> comments;
  final List<User> users;

  Chat(
      {required this.id,
      required this.chatName,
      // required this.comments,
      required this.users});

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
        id: json['id'] ?? 0,
        chatName: json['chat'] ?? '',
        // comments: (json['comments'] as List<dynamic>?)
        //         ?.map((item) => Comment.fromJson(item))
        //         .toList() ??
        //     [],
        users: (json['users'] as List<dynamic>?)
                ?.map((item) => User.fromJson(item))
                .toList() ??
            []);
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chatName': chatName,
    };
  }
}
