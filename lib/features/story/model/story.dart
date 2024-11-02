import 'dart:convert';

import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/user/model/user.dart';

class Story {
  final int id;
  final String caption;
  final String image;
  // final String video;
  final User user;

  Story({
    required this.id,
    required this.caption,
    required this.image,
    // required this.video,
    required this.user,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: int.tryParse(json['id'].toString()) ?? 0,
      caption: json['caption'] ?? '',
      image: json['image'] ?? '',
      // video: json['video'] ?? '',
      user: User.fromJson(json['user'] ?? ''),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'caption': caption,
      'image': image,
      // 'video': video,
      'user': user.toJson(),
    };
  }
}
